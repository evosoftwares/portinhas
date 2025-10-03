import '../database.dart';

class AvaliacoesTable extends SupabaseTable<AvaliacoesRow> {
  @override
  String get tableName => 'avaliacoes';

  @override
  AvaliacoesRow createRow(Map<String, dynamic> data) => AvaliacoesRow(data);
}

class AvaliacoesRow extends SupabaseDataRow {
  AvaliacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AvaliacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get estabelecimentoId => getField<String>('estabelecimento_id')!;
  set estabelecimentoId(String value) =>
      setField<String>('estabelecimento_id', value);

  String get userEmail => getField<String>('user_email')!;
  set userEmail(String value) => setField<String>('user_email', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);

  int get classificacao => getField<int>('classificacao')!;
  set classificacao(int value) => setField<int>('classificacao', value);
}
