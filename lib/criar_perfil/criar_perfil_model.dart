import '/components/edit_profile_auth2_widget.dart';
import '/components/logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'criar_perfil_widget.dart' show CriarPerfilWidget;
import 'package:flutter/material.dart';

class CriarPerfilModel extends FlutterFlowModel<CriarPerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Logo component.
  late LogoModel logoModel;
  // Model for editProfile_auth_2 component.
  late EditProfileAuth2Model editProfileAuth2Model;

  @override
  void initState(BuildContext context) {
    logoModel = createModel(context, () => LogoModel());
    editProfileAuth2Model = createModel(context, () => EditProfileAuth2Model());
  }

  @override
  void dispose() {
    logoModel.dispose();
    editProfileAuth2Model.dispose();
  }
}
