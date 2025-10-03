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

// Importa o pacote necessário para abrir URLs
import 'package:url_launcher/url_launcher.dart';

Future urlGoogle(
  double? latitude,
  double? longitude,
) async {
  // Verifica se a latitude ou a longitude são nulas. Se forem, a função é interrompida.
  if (latitude == null || longitude == null) {
    print('Latitude ou Longitude não fornecida.');
    return;
  }

  // Monta a URL para o Google Maps usando o esquema de navegação direta.
  // Isso tenta abrir o app do Google Maps diretamente no modo de navegação.
  // 'q' é a query (coordenadas) e 'mode=d' significa modo de direção (driving).
  final Uri navigationUrl =
      Uri.parse('google.navigation:q=$latitude,$longitude&mode=d');

  // Monta uma URL de fallback para a versão web do Google Maps.
  // Isso garante que funcione em qualquer dispositivo, mesmo que o app do Maps não esteja instalado.
  final Uri webUrl = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');

  // Tenta abrir a URL de navegação direta primeiro (ideal para Android).
  if (await canLaunchUrl(navigationUrl)) {
    await launchUrl(navigationUrl);
  }
  // Se não for possível, tenta abrir a URL da web (funciona em iOS e como fallback geral).
  else if (await canLaunchUrl(webUrl)) {
    await launchUrl(webUrl);
  } else {
    // Se nenhuma das duas URLs puder ser aberta, lança uma exceção.
    throw 'Não foi possível abrir o Google Maps.';
  }
}
