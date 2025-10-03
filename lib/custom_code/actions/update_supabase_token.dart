// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:cloud_functions/cloud_functions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// We'll store the subscription at a global or static level
// so it persists beyond this function call.
StreamSubscription<firebase_auth.User?>? _authWatcher;

Future<void> updateSupabaseToken() async {
  try {
    // 1) If we haven't already set up the listener, do it now.
    if (_authWatcher == null) {
      _authWatcher = firebase_auth.FirebaseAuth.instance
          .userChanges()
          .listen((firebase_auth.User? user) async {
        if (user == null) {
          // User signed out
          // Optionally sign out from Supabase
          await Supabase.instance.client.auth.signOut();
          debugPrint('Signed out of Supabase because Firebase user is null.');
        } else {
          // Update the token whenever the user logs in or refreshes
          await _fetchAndSetSupabaseToken(user);
        }
      });
      debugPrint('Auth watcher set up successfully.');
    } else {
      debugPrint('Auth watcher already set up.');
    }

    // 2) If a user is currently signed in, do an immediate token update.
    final user = firebase_auth.FirebaseAuth.instance.currentUser;
    if (user != null) {
      await _fetchAndSetSupabaseToken(user);
    } else {
      // If user == null, optionally sign out from Supabase right now
      // in case you want a truly "no user" state.
      await Supabase.instance.client.auth.signOut();
      debugPrint('No user currently signed in; signed out from Supabase.');
    }
  } catch (e, st) {
    debugPrint('Error in updateSupabaseTokenAction: $e $st');
  }
}

// Helper to fetch the token and update Supabase
Future<void> _fetchAndSetSupabaseToken(firebase_auth.User user) async {
  try {
    final firebaseToken = await user.getIdToken();
    debugPrint('TOKEN_PARA_TESTE: $firebaseToken'); // Mantenha para testes

    final callable =
        FirebaseFunctions.instance.httpsCallable('mintSupabaseToken');

    final response = await callable.call({
      'token': firebaseToken,
    });

    final data = response.data;
    if (data == null || data['access_token'] == null) {
      debugPrint('No supaToken in Cloud Function response!');
      return;
    }

    final supaToken = data['access_token'];

    // ===== CORREÇÃO FINAL AQUI =====
    final sessionResponse =
        await Supabase.instance.client.auth.setSession(supaToken);
    if (sessionResponse.user != null) {
      debugPrint(
          'Sessão do Supabase configurada com sucesso para o e-mail: ${sessionResponse.user!.email}');
    } else {
      debugPrint('Falha ao configurar a sessão do Supabase. O usuário é nulo.');
    }
    // ===== FIM DA CORREÇÃO =====
  } catch (e, st) {
    debugPrint('Error fetching/setting Supabase token: $e $st');
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
