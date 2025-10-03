import '/flutter_flow/flutter_flow_util.dart';
import '/geral/card_portinha/card_portinha_widget.dart';
import '/index.dart';
import 'favoritos_widget.dart' show FavoritosWidget;
import 'package:flutter/material.dart';

class FavoritosModel extends FlutterFlowModel<FavoritosWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for cardPortinha dynamic component.
  late FlutterFlowDynamicModels<CardPortinhaModel> cardPortinhaModels;

  @override
  void initState(BuildContext context) {
    cardPortinhaModels = FlutterFlowDynamicModels(() => CardPortinhaModel());
  }

  @override
  void dispose() {
    cardPortinhaModels.dispose();
  }
}
