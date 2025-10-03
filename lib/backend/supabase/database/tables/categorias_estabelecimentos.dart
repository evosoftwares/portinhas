import '../database.dart';

class CategoriasEstabelecimentosTable
    extends SupabaseTable<CategoriasEstabelecimentosRow> {
  @override
  String get tableName => 'categorias_estabelecimentos';

  @override
  CategoriasEstabelecimentosRow createRow(Map<String, dynamic> data) =>
      CategoriasEstabelecimentosRow(data);
}

class CategoriasEstabelecimentosRow extends SupabaseDataRow {
  CategoriasEstabelecimentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriasEstabelecimentosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get iconeUrl => getField<String>('icone_url');
  set iconeUrl(String? value) => setField<String>('icone_url', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);
}
