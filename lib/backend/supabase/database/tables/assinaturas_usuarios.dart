import '../database.dart';

class AssinaturasUsuariosTable extends SupabaseTable<AssinaturasUsuariosRow> {
  @override
  String get tableName => 'assinaturas_usuarios';

  @override
  AssinaturasUsuariosRow createRow(Map<String, dynamic> data) =>
      AssinaturasUsuariosRow(data);
}

class AssinaturasUsuariosRow extends SupabaseDataRow {
  AssinaturasUsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AssinaturasUsuariosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get emailUsuario => getField<String>('email_usuario')!;
  set emailUsuario(String value) => setField<String>('email_usuario', value);

  String? get planoId => getField<String>('plano_id');
  set planoId(String? value) => setField<String>('plano_id', value);

  DateTime? get dataInicio => getField<DateTime>('data_inicio');
  set dataInicio(DateTime? value) => setField<DateTime>('data_inicio', value);

  DateTime? get dataFim => getField<DateTime>('data_fim');
  set dataFim(DateTime? value) => setField<DateTime>('data_fim', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get idPagamento => getField<String>('id_pagamento');
  set idPagamento(String? value) => setField<String>('id_pagamento', value);

  bool? get renovacaoAutomatica => getField<bool>('renovacao_automatica');
  set renovacaoAutomatica(bool? value) =>
      setField<bool>('renovacao_automatica', value);
}
