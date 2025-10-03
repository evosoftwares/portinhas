import '/components/logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'esqueceu_a_senha_widget.dart' show EsqueceuASenhaWidget;
import 'package:flutter/material.dart';

class EsqueceuASenhaModel extends FlutterFlowModel<EsqueceuASenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Logo component.
  late LogoModel logoModel;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {
    logoModel = createModel(context, () => LogoModel());
  }

  @override
  void dispose() {
    logoModel.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
