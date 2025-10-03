import '../database.dart';

class PromocoesTable extends SupabaseTable<PromocoesRow> {
  @override
  String get tableName => 'promocoes';

  @override
  PromocoesRow createRow(Map<String, dynamic> data) => PromocoesRow(data);
}

class PromocoesRow extends SupabaseDataRow {
  PromocoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PromocoesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get estabelecimentoId => getField<String>('estabelecimento_id');
  set estabelecimentoId(String? value) =>
      setField<String>('estabelecimento_id', value);

  String get titulo => getField<String>('titulo')!;
  set titulo(String value) => setField<String>('titulo', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  DateTime? get dataInicio => getField<DateTime>('data_inicio');
  set dataInicio(DateTime? value) => setField<DateTime>('data_inicio', value);

  DateTime? get dataFim => getField<DateTime>('data_fim');
  set dataFim(DateTime? value) => setField<DateTime>('data_fim', value);

  String? get imagemUrl => getField<String>('imagem_url');
  set imagemUrl(String? value) => setField<String>('imagem_url', value);

  int? get limiteUso => getField<int>('limite_uso');
  set limiteUso(int? value) => setField<int>('limite_uso', value);

  String? get termosCondicoes => getField<String>('termos_condicoes');
  set termosCondicoes(String? value) =>
      setField<String>('termos_condicoes', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);
}
