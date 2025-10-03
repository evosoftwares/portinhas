import '../database.dart';

class EstatisticasEstabelecimentosTable
    extends SupabaseTable<EstatisticasEstabelecimentosRow> {
  @override
  String get tableName => 'estatisticas_estabelecimentos';

  @override
  EstatisticasEstabelecimentosRow createRow(Map<String, dynamic> data) =>
      EstatisticasEstabelecimentosRow(data);
}

class EstatisticasEstabelecimentosRow extends SupabaseDataRow {
  EstatisticasEstabelecimentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EstatisticasEstabelecimentosTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get regiao => getField<String>('regiao');
  set regiao(String? value) => setField<String>('regiao', value);

  int? get totalUsosCupons => getField<int>('total_usos_cupons');
  set totalUsosCupons(int? value) => setField<int>('total_usos_cupons', value);

  double? get avaliacaoMedia => getField<double>('avaliacao_media');
  set avaliacaoMedia(double? value) =>
      setField<double>('avaliacao_media', value);

  int? get totalClientesUnicos => getField<int>('total_clientes_unicos');
  set totalClientesUnicos(int? value) =>
      setField<int>('total_clientes_unicos', value);
}
