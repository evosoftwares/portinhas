import '/components/logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'telacadastro_widget.dart' show TelacadastroWidget;
import 'package:flutter/material.dart';

class TelacadastroModel extends FlutterFlowModel<TelacadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Logo component.
  late LogoModel logoModel;
  // State field(s) for seuNome widget.
  FocusNode? seuNomeFocusNode;
  TextEditingController? seuNomeTextController;
  String? Function(BuildContext, String?)? seuNomeTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    logoModel = createModel(context, () => LogoModel());
    passwordVisibility = false;
  }

  @override
  void dispose() {
    logoModel.dispose();
    seuNomeFocusNode?.dispose();
    seuNomeTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
