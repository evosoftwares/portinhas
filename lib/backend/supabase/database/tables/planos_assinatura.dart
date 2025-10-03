import '../database.dart';

class PlanosAssinaturaTable extends SupabaseTable<PlanosAssinaturaRow> {
  @override
  String get tableName => 'planos_assinatura';

  @override
  PlanosAssinaturaRow createRow(Map<String, dynamic> data) =>
      PlanosAssinaturaRow(data);
}

class PlanosAssinaturaRow extends SupabaseDataRow {
  PlanosAssinaturaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlanosAssinaturaTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  double get preco => getField<double>('preco')!;
  set preco(double value) => setField<double>('preco', value);

  int get duracaoDias => getField<int>('duracao_dias')!;
  set duracaoDias(int value) => setField<int>('duracao_dias', value);

  dynamic get beneficios => getField<dynamic>('beneficios');
  set beneficios(dynamic value) => setField<dynamic>('beneficios', value);

  bool? get destaque => getField<bool>('destaque');
  set destaque(bool? value) => setField<bool>('destaque', value);
}
