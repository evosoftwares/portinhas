import '../database.dart';

class CuponsUsuariosTable extends SupabaseTable<CuponsUsuariosRow> {
  @override
  String get tableName => 'cupons_usuarios';

  @override
  CuponsUsuariosRow createRow(Map<String, dynamic> data) =>
      CuponsUsuariosRow(data);
}

class CuponsUsuariosRow extends SupabaseDataRow {
  CuponsUsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CuponsUsuariosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get emailUsuario => getField<String>('email_usuario')!;
  set emailUsuario(String value) => setField<String>('email_usuario', value);

  String? get promocaoId => getField<String>('promocao_id');
  set promocaoId(String? value) => setField<String>('promocao_id', value);

  int? get usosRestantes => getField<int>('usos_restantes');
  set usosRestantes(int? value) => setField<int>('usos_restantes', value);

  bool? get usado => getField<bool>('usado');
  set usado(bool? value) => setField<bool>('usado', value);
}
