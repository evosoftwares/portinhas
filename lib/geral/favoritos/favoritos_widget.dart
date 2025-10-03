import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/empty_listsimple_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/geral/card_portinha/card_portinha_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'favoritos_model.dart';
export 'favoritos_model.dart';

class FavoritosWidget extends StatefulWidget {
  const FavoritosWidget({
    super.key,
    this.cuponsusados,
  });

  final CuponsUsuariosRow? cuponsusados;

  static String routeName = 'Favoritos';
  static String routePath = '/favoritos';

  @override
  State<FavoritosWidget> createState() => _FavoritosWidgetState();
}

class _FavoritosWidgetState extends State<FavoritosWidget> {
  late FavoritosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavoritosModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 100.0,
          borderWidth: 1.0,
          buttonSize: 100.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 24.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Meus Favoritos',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                font: GoogleFonts.interTight(
                  fontWeight: FontWeight.normal,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
                color: Colors.white,
                fontSize: 20.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
                fontStyle:
                    FlutterFlowTheme.of(context).headlineMedium.fontStyle,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 11.0, 11.0),
            child: FlutterFlowIconButton(
              borderRadius: 80.0,
              buttonSize: 40.5,
              fillColor: FlutterFlowTheme.of(context).secondary,
              icon: Icon(
                Icons.person_sharp,
                color: FlutterFlowTheme.of(context).info,
                size: 24.0,
              ),
              onPressed: () async {
                context.pushNamed(MeuPerfilWidget.routeName);
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: AuthUserStreamWidget(
          builder: (context) => FutureBuilder<List<EstabelecimentosRow>>(
            future: EstabelecimentosTable().queryRows(
              queryFn: (q) => q.inFilterOrNull(
                'id',
                (currentUserDocument?.estabelwecimentoFavoritos.toList() ??
                    []),
              ),
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return EmptyListsimpleWidget();
              }
              List<EstabelecimentosRow> columnEstabelecimentosRowList =
                  snapshot.data!;

              if (columnEstabelecimentosRowList.isEmpty) {
                return EmptyListsimpleWidget();
              }

              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(columnEstabelecimentosRowList.length,
                      (columnIndex) {
                    final columnEstabelecimentosRow =
                        columnEstabelecimentosRowList[columnIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          DetalheportinhasWidget.routeName,
                          queryParameters: {
                            'estabelecimentos': serializeParam(
                              columnEstabelecimentosRow,
                              ParamType.SupabaseRow,
                            ),
                          }.withoutNulls,
                        );
                      },
                      child: wrapWithModel(
                        model: _model.cardPortinhaModels.getModel(
                          columnEstabelecimentosRow.id,
                          columnIndex,
                        ),
                        updateCallback: () => safeSetState(() {}),
                        child: CardPortinhaWidget(
                          key: Key(
                            'Keyuho_${columnEstabelecimentosRow.id}',
                          ),
                          portinha: columnEstabelecimentosRow,
                        ),
                      ),
                    );
                  }).divide(SizedBox(height: 30.0)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
