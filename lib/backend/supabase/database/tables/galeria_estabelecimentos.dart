import '../database.dart';

class GaleriaEstabelecimentosTable
    extends SupabaseTable<GaleriaEstabelecimentosRow> {
  @override
  String get tableName => 'galeria_estabelecimentos';

  @override
  GaleriaEstabelecimentosRow createRow(Map<String, dynamic> data) =>
      GaleriaEstabelecimentosRow(data);
}

class GaleriaEstabelecimentosRow extends SupabaseDataRow {
  GaleriaEstabelecimentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GaleriaEstabelecimentosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get caminhoImagem => getField<String>('caminho_imagem')!;
  set caminhoImagem(String value) => setField<String>('caminho_imagem', value);

  String get estabelecimentoId => getField<String>('estabelecimento_id')!;
  set estabelecimentoId(String value) =>
      setField<String>('estabelecimento_id', value);
}
