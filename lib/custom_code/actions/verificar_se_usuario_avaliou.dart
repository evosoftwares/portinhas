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

Future<bool> verificarSeUsuarioAvaliou(
  List<AvaliacoesRow>? listaDeAvaliacoes,
  String? emailDoUsuario,
) async {
  // Se a lista de avaliações não existir ou estiver vazia, retorna 'falso'.
  if (listaDeAvaliacoes == null || listaDeAvaliacoes.isEmpty) {
    return false;
  }
  // Se o e-mail não for passado como argumento, retorna 'falso'.
  if (emailDoUsuario == null || emailDoUsuario.isEmpty) {
    return false;
  }

  // A lógica agora usa o argumento 'emailDoUsuario' em vez de 'currentUserEmail'.
  bool jaAvaliou = listaDeAvaliacoes.any(
    (avaliacao) => avaliacao.userEmail == emailDoUsuario,
  );

  return jaAvaliou;
}
