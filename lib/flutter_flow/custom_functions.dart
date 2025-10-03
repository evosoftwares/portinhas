import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

/// Enfrentamos problema e resolvemos esse codigo para filtragem funcionar com
/// AND
List<EstabelecimentosRow> buscarEstabelecimentos(
  List<String>? filtroCategorias,
  List<String>? filtroRegioes,
  List<EstabelecimentosRow> supabase,
  String? filtroNome,
) {
// Se todos os filtros estiverem vazios ou nulos, retorna a lista completa.
  if ((filtroCategorias == null || filtroCategorias.isEmpty) &&
      (filtroRegioes == null || filtroRegioes.isEmpty) &&
      (filtroNome == null || filtroNome.isEmpty)) {
    return supabase;
  }

  return supabase.where((estabelecimento) {
    // Lógica para o filtro de Categoria
    final matchesCategoria = filtroCategorias == null ||
        filtroCategorias.isEmpty ||
        filtroCategorias.any((categoria) =>
            estabelecimento.categoria?.contains(categoria) ?? false);

    // Lógica para o filtro de Região
    final matchesRegiao = filtroRegioes == null ||
        filtroRegioes.isEmpty ||
        filtroRegioes
            .any((regiao) => estabelecimento.regiao?.contains(regiao) ?? false);

    // Usamos toLowerCase() para uma busca case-insensitive (não diferencia maiúsculas de minúsculas)
    final matchesNome = filtroNome == null ||
        filtroNome.isEmpty ||
        (estabelecimento.nome.toLowerCase().contains(filtroNome.toLowerCase()));

    // Retorna true somente se TODAS as condições ativas forem atendidas
    return matchesCategoria && matchesRegiao && matchesNome;
  }).toList();
}

String linkparawhatsappfunc(String telefone) {
  // 1. Check for null or empty input
  if (telefone == null || telefone.trim().isEmpty) {
    // Optionally print a message for debugging
    print('Input phone is null or empty.');
    return ''; // Return an empty string if phone is invalid/missing
  }

  // 2. Sanitize: Remove non-numeric characters and trim whitespace
  String sanitizedPhone = telefone.trim().replaceAll(RegExp(r'[^0-9]'), '');

  // 3. Basic validation: Check if the sanitized number has a reasonable length
  //    (Adjust min length as needed, e.g., 8 for number without DDD, 10 with DDD)
  if (sanitizedPhone.length < 8) {
    print('Sanitized phone number is too short: $sanitizedPhone');
    return ''; // Return empty string for very short numbers
  }

  // 4. Ensure Brazil Country Code (55) is present at the beginning
  //    Adjust '55' if dealing with other country codes
  final String countryCode = '55'; // Assuming Brazil
  if (!sanitizedPhone.startsWith(countryCode)) {
    // If it doesn't start with 55, prepend it.
    // This assumes the input number is either local (DDD+Number) or already international but missing '+'
    sanitizedPhone = countryCode + sanitizedPhone;
    // Optional: Log the change for debugging
    // print('Added country code. Phone is now: $sanitizedPhone');
  }

  // 5. Create the WhatsApp link
  String whatsappLink = 'https://wa.me/$sanitizedPhone';

  // Optional: Log the final generated link for debugging
  // print('Generated WhatsApp Link: $whatsappLink');

  return whatsappLink;
}

double calcularMediaAvaliacoes(List<AvaliacoesRow>? listaDeAvaliacoes) {
  // Se a lista for nula ou vazia, retorna 0.0 para não dar erro.

  if (listaDeAvaliacoes == null || listaDeAvaliacoes.isEmpty) {
    return 0.0;
  }

// Filtra a lista para incluir apenas avaliações com classificação válida (maior que 0).

// Embora o banco de dados já garanta >= 1, é uma boa prática de programação defensiva.

  final avaliacoesValidas =
      listaDeAvaliacoes.where((a) => a.classificacao > 0).toList();

// Se, após o filtro, a lista ficar vazia, retorna 0.0.

  if (avaliacoesValidas.isEmpty) {
    return 0.0;
  }

// Soma todas as notas da lista de avaliações válidas.

// O método 'fold' é perfeito para isso. Ele começa com 0.0 e vai somando.

  double somaDasNotas = avaliacoesValidas.fold(
      0.0, (soma, avaliacao) => soma + avaliacao.classificacao);

// Calcula a média dividindo a soma pela quantidade de avaliações válidas.

  double media = somaDasNotas / avaliacoesValidas.length;

  return media;
}

String? distanciaHeversine(
  double? latitudeEstabelecimento,
  double? longitudeEstabelecimento,
  LatLng? userLocation,
) {
  if (userLocation == null ||
      latitudeEstabelecimento == null ||
      longitudeEstabelecimento == null) {
    // Retorna uma string vazia ou um placeholder se não for possível calcular.
    return '...';
  }

  final double lat1 = userLocation.latitude;
  final double lon1 = userLocation.longitude;
  final double lat2 = latitudeEstabelecimento;
  final double lon2 = longitudeEstabelecimento;

  const double R = 6371; // Raio da Terra em quilômetros

// Converte graus para radianos
  final double lat1Rad = lat1 * (math.pi / 180);
  final double lon1Rad = lon1 * (math.pi / 180);
  final double lat2Rad = lat2 * (math.pi / 180);
  final double lon2Rad = lon2 * (math.pi / 180);

// Diferença das coordenadas
  final double dLat = lat2Rad - lat1Rad;
  final double dLon = lon2Rad - lon1Rad;

// Fórmula de Haversine
  final double a = math.sin(dLat / 2) * math.sin(dLat / 2) +
      math.cos(lat1Rad) *
          math.cos(lat2Rad) *
          math.sin(dLon / 2) *
          math.sin(dLon / 2);
  final double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

  final double distanciaEmKm = R * c;

  if (distanciaEmKm < 1) {
    final double distanciaEmMetros = distanciaEmKm * 1000;
    return '${distanciaEmMetros.toStringAsFixed(0)} m';
  } else {
    return '${distanciaEmKm.toStringAsFixed(1)} km'.replaceAll('.', ',');
  }
}
