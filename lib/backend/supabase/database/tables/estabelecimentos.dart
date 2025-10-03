import '../database.dart';

class EstabelecimentosTable extends SupabaseTable<EstabelecimentosRow> {
  @override
  String get tableName => 'estabelecimentos';

  @override
  EstabelecimentosRow createRow(Map<String, dynamic> data) =>
      EstabelecimentosRow(data);
}

class EstabelecimentosRow extends SupabaseDataRow {
  EstabelecimentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EstabelecimentosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  String get endereco => getField<String>('endereco')!;
  set endereco(String value) => setField<String>('endereco', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get instagram => getField<String>('instagram');
  set instagram(String? value) => setField<String>('instagram', value);

  String? get logoUrl => getField<String>('logo_url');
  set logoUrl(String? value) => setField<String>('logo_url', value);

  String? get imagemCapaUrl => getField<String>('imagem_capa_url');
  set imagemCapaUrl(String? value) =>
      setField<String>('imagem_capa_url', value);

  String? get horarioFuncionamento => getField<String>('horario_funcionamento');
  set horarioFuncionamento(String? value) =>
      setField<String>('horario_funcionamento', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String get regiao => getField<String>('regiao')!;
  set regiao(String value) => setField<String>('regiao', value);

  String get categoria => getField<String>('categoria')!;
  set categoria(String value) => setField<String>('categoria', value);

  String? get tipospagamentos => getField<String>('tipospagamentos');
  set tipospagamentos(String? value) =>
      setField<String>('tipospagamentos', value);

  String? get pratos => getField<String>('pratos');
  set pratos(String? value) => setField<String>('pratos', value);

  bool? get petfriendly => getField<bool>('petfriendly');
  set petfriendly(bool? value) => setField<bool>('petfriendly', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
