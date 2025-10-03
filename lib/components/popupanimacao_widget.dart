import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'popupanimacao_model.dart';
export 'popupanimacao_model.dart';

class PopupanimacaoWidget extends StatefulWidget {
  const PopupanimacaoWidget({super.key});

  @override
  State<PopupanimacaoWidget> createState() => _PopupanimacaoWidgetState();
}

class _PopupanimacaoWidgetState extends State<PopupanimacaoWidget> {
  late PopupanimacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopupanimacaoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        decoration: BoxDecoration(),
        child: Lottie.asset(
          'assets/jsons/Animation_-_1743089899076.json',
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: 400.0,
          fit: BoxFit.contain,
          animate: true,
        ),
      ),
    );
  }
}
