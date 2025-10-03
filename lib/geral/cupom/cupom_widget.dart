import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cupom_model.dart';
export 'cupom_model.dart';

/// Crie um cupom que seja responsivo
class CupomWidget extends StatefulWidget {
  const CupomWidget({
    super.key,
    this.promocao,
    this.estabelecimento,
  });

  final PromocoesRow? promocao;
  final EstabelecimentosRow? estabelecimento;

  @override
  State<CupomWidget> createState() => _CupomWidgetState();
}

class _CupomWidgetState extends State<CupomWidget> {
  late CupomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CupomModel());
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
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          context.pushNamed(
            DetalhecupomWidget.routeName,
            queryParameters: {
              'promocao': serializeParam(
                widget.promocao,
                ParamType.SupabaseRow,
              ),
              'estabelecimento': serializeParam(
                widget.estabelecimento,
                ParamType.SupabaseRow,
              ),
            }.withoutNulls,
          );
        },
        child: Container(
          width: double.infinity,
          height: 250.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(14.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'Oferta',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          valueOrDefault<String>(
                            widget.estabelecimento?.logoUrl,
                            'https://img.freepik.com/vetores-premium/fundo-de-vetor-vazio-transparente-grade-sem-costura-quadrados-cinza-e-brancos_125869-1804.jpg',
                          ),
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                FutureBuilder<List<EstabelecimentosRow>>(
                  future: EstabelecimentosTable().querySingleRow(
                    queryFn: (q) => q.eqOrNull(
                      'id',
                      widget.promocao?.estabelecimentoId,
                    ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<EstabelecimentosRow> textEstabelecimentosRowList =
                        snapshot.data!;

                    final textEstabelecimentosRow =
                        textEstabelecimentosRowList.isNotEmpty
                            ? textEstabelecimentosRowList.first
                            : null;

                    return Text(
                      valueOrDefault<String>(
                        textEstabelecimentosRow?.nome,
                        'Restaurante ',
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondary,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                          ),
                    );
                  },
                ),
                Flexible(
                  child: Text(
                    valueOrDefault<String>(
                      widget.promocao?.descricao,
                      'Descrição cupom',
                    ).maybeHandleOverflow(
                      maxChars: 200,
                      replacement: '…',
                    ),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(1.0, 1.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        _model.tenho2cupons =
                            await CuponsUsuariosTable().queryRows(
                          queryFn: (q) => q
                              .eqOrNull(
                                'promocao_id',
                                widget.promocao?.id,
                              )
                              .eqOrNull(
                                'email_usuario',
                                currentUserEmail,
                              ),
                        );
                        if (_model.tenho2cupons != null &&
                            (_model.tenho2cupons)!.isNotEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Você já gerou cupom deste estabelecimento.',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        } else {
                          _model.resultado =
                              await CuponsUsuariosTable().insert({
                            'email_usuario': currentUserEmail,
                            'promocao_id': widget.promocao?.id,
                            'usos_restantes': widget.promocao?.limiteUso,
                          });
                        }

                        context.pushNamed(MeuscuponsWidget.routeName);

                        safeSetState(() {});
                      },
                      text: 'Quero esse cupom',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsets.all(10.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(26.0),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 8.0)).addToEnd(SizedBox(height: 15.0)),
            ),
          ),
        ),
      ),
    );
  }
}
