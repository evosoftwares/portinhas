import '../database.dart';

class RegioesSaoPauloTable extends SupabaseTable<RegioesSaoPauloRow> {
  @override
  String get tableName => 'regioes_sao_paulo';

  @override
  RegioesSaoPauloRow createRow(Map<String, dynamic> data) =>
      RegioesSaoPauloRow(data);
}

class RegioesSaoPauloRow extends SupabaseDataRow {
  RegioesSaoPauloRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RegioesSaoPauloTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  double? get areaAproximadaKm2 => getField<double>('area_aproximada_km2');
  set areaAproximadaKm2(double? value) =>
      setField<double>('area_aproximada_km2', value);

  String? get imagemUrl => getField<String>('imagem_url');
  set imagemUrl(String? value) => setField<String>('imagem_url', value);
}
