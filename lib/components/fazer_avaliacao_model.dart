import '/flutter_flow/flutter_flow_util.dart';
import 'fazer_avaliacao_widget.dart' show FazerAvaliacaoWidget;
import 'package:flutter/material.dart';

class FazerAvaliacaoModel extends FlutterFlowModel<FazerAvaliacaoWidget> {
  ///  Local state fields for this component.

  int? nota = 1;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
