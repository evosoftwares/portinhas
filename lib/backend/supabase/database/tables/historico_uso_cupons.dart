import '../database.dart';

class HistoricoUsoCuponsTable extends SupabaseTable<HistoricoUsoCuponsRow> {
  @override
  String get tableName => 'historico_uso_cupons';

  @override
  HistoricoUsoCuponsRow createRow(Map<String, dynamic> data) =>
      HistoricoUsoCuponsRow(data);
}

class HistoricoUsoCuponsRow extends SupabaseDataRow {
  HistoricoUsoCuponsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HistoricoUsoCuponsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get cupomUsuarioId => getField<String>('cupom_usuario_id');
  set cupomUsuarioId(String? value) =>
      setField<String>('cupom_usuario_id', value);

  String get emailUsuario => getField<String>('email_usuario')!;
  set emailUsuario(String value) => setField<String>('email_usuario', value);

  String? get estabelecimentoId => getField<String>('estabelecimento_id');
  set estabelecimentoId(String? value) =>
      setField<String>('estabelecimento_id', value);

  DateTime? get usadoEm => getField<DateTime>('usado_em');
  set usadoEm(DateTime? value) => setField<DateTime>('usado_em', value);

  double? get valorEconomia => getField<double>('valor_economia');
  set valorEconomia(double? value) => setField<double>('valor_economia', value);

  int? get avaliacao => getField<int>('avaliacao');
  set avaliacao(int? value) => setField<int>('avaliacao', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);
}
