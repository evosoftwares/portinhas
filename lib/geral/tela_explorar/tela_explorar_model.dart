import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'tela_explorar_widget.dart' show TelaExplorarWidget;
import 'package:flutter/material.dart';

class TelaExplorarModel extends FlutterFlowModel<TelaExplorarWidget> {
  ///  Local state fields for this page.

  int? resultado;

  bool filtragem = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  List<String>? get choiceChipsValues1 => choiceChipsValueController1?.value;
  set choiceChipsValues1(List<String>? val) =>
      choiceChipsValueController1?.value = val;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  List<String>? get choiceChipsValues2 => choiceChipsValueController2?.value;
  set choiceChipsValues2(List<String>? val) =>
      choiceChipsValueController2?.value = val;
  Stream<List<EstabelecimentosRow>>? choiceChipsSupabaseStream;
  Stream<List<EstabelecimentosRow>>? containerSupabaseStream;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
