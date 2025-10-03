import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'termos_uso_model.dart';
export 'termos_uso_model.dart';

class TermosUsoWidget extends StatefulWidget {
  const TermosUsoWidget({super.key});

  static String routeName = 'termosUso';
  static String routePath = '/termosUso';

  @override
  State<TermosUsoWidget> createState() => _TermosUsoWidgetState();
}

class _TermosUsoWidgetState extends State<TermosUsoWidget> {
  late TermosUsoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermosUsoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 100.0,
            buttonSize: 100.0,
            fillColor: FlutterFlowTheme.of(context).secondary,
            icon: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Termos de Uso',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.fredoka(
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
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            'Termos e Condições de Uso do Aplicativo',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: Text(
                            'Olá! Bem-vindo ao app das Portinhas. Para garantir uma experiência tranquila e segura para\ntodos, pedimos que leia atentamente nossos termos e condições:',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: Text(
                            'Usuário\nAo se cadastrar, o usuário deverá informar dados completos, recentes e válidos, sendo de\nsua exclusiva responsabilidade manter referidos dados atualizados, bem como o usuário se\ncompromete com a veracidade dos dados fornecidos, com um endereço de e-mail válido,\natravés do qual o site realizará todas as comunicações necessárias.\nVocê é responsável por manter suas informações de cadastro atualizadas e por usar o\naplicativo de forma responsável. É proibido usar o serviço para fins ilegais, fraudulentos ou\nque violem direitos de terceiros. Qualquer uso indevido pode resultar na suspensão ou\nencerramento da sua conta.\nMediante a realização do cadastro o usuário declara e garante expressamente ser\nplenamente capaz, podendo exercer e usufruir livremente dos serviços e produtos.\nApós a confirmação do cadastro, o usuário possuirá um login e uma senha pessoal, a qual\nassegura ao usuário o acesso individual à mesma. Desta forma, compete ao usuário\nexclusivamente a manutenção de referida senha de maneira confidencial e segura, evitando\no acesso indevido às informações pessoais.\nToda e qualquer atividade realizada com o uso da senha será de responsabilidade do\nusuário, que deverá informar prontamente a plataforma em caso de uso indevido da\nrespectiva senha.\nNão será permitido ceder, vender, alugar ou transferir, de qualquer forma, a conta, que é\npessoal e intransferível.\nCaberá ao usuário assegurar que o seu equipamento seja compatível com as características\ntécnicas que viabilize a utilização da plataforma e dos serviços ou produtos.\nO usuário poderá, a qualquer tempo, requerer o cancelamento de seu cadastro junto ao\naplicativo. O seu descadastramento será realizado o mais rapidamente possível, desde que\nnão sejam verificados débitos em aberto.\nAssinatura\nAo assinar nosso serviço, você concorda em pagar o valor já pré definido, que será cobrado\nautomaticamente na data de renovação sendo o plano semestral ou anual. Você pode\ncancelar sua assinatura a qualquer momento, sem custos adicionais, através das\nconfigurações do aplicativo.\nA plataforma se reserva no direito de reajustar unilateralmente, a qualquer tempo, os valores\ndos serviços ou produtos sem consulta ou anuência prévia do usuário, mas caso haja\nalterações, iremos avisar com antecedência via email.\nUso dos Cupons de Desconto\nOs cupons de desconto disponíveis no aplicativo podem ser utilizados conforme as regras\nespecíficas de cada um. Eles são válidos apenas para compras elegíveis e dentro do\nperíodo de validade. Não é permitido transferir ou revender os cupons.\nCada espaço disponibilizará 2 cupons para ser utilizado presencialmente no\nestabelecimento, não valendo para delivery e não sendo acumulado com outras promoções.\nPara o cupom ser validado, a única maneira é ele sendo “rasgado” no local em que utilizará o\ncupom em frente a um funcionário do estabelecimento. Não é válido mostrar capturas de\ntela para se beneficiar do cupom.\nAlterações nos Termos\nReservamo-nos o direito de alterar estes termos a qualquer momento. Quaisquer mudanças\nserão comunicadas por meio do aplicativo ou por e-mail. Recomendamos que você revise\nos termos periodicamente.\nPrivacidade\nSua privacidade é importante para nós. Utilizamos seus dados de acordo com nossa\nPolítica de Privacidade, que está disponível no aplicativo.\nPrivacidade e Proteção de Dados (LGPD) Nosso compromisso é proteger sua privacidade e\nseus dados pessoais. Coletamos, armazenamos e tratamos suas informações de acordo\ncom a Lei Geral de Proteção de Dados Pessoais (LGPD). Você tem direitos sobre seus\ndados, incluindo acesso, retificação, exclusão e revogação do consentimento, que podem\nser exercidos entrando em contato conosco. Para mais detalhes, consulte nossa Política de\nPrivacidade.\nVocê tem o direito de cancelar sua assinatura a qualquer momento e de solicitar a exclusão\nde seus dados pessoais, conforme previsto na LGPD.\nCancelamento e Reembolso\nO usuário poderá cancelar a contratação dos serviços de acordo com os termos que forem\ndefinidos no momento de sua contratação. Ainda, o usuário também poderá cancelar os\nserviços em até 7 (sete) dias após a contratação, de acordo com o Código de Defesa do\nConsumidor (Lei no. 8.078/90).\nO serviço poderá ser cancelado por:\na) parte do usuário: nessas condições os serviços somente cessarão quando concluído o\nciclo vigente ao tempo do cancelamento;\nb) violação dos Termos de Uso: os serviços serão cessados imediatamente.\nDireitos da Plataforma e do Usuário\nReservamo-nos o direito de modificar, suspender ou encerrar o serviço, total ou\nparcialmente, por motivos técnicos, de segurança ou de negócios.\nSegurança e Integridade\nImplementamos medidas de segurança para proteger seus dados contra acessos não\nautorizados, perdas ou alterações. No entanto, não podemos garantir a segurança absoluta,\ne você também deve adotar boas práticas de proteção de suas informações.\nSuporte\nEm caso de qualquer dúvida, sugestão ou problema com a utilização da plataforma, o\nusuário poderá entrar em contato com o suporte, através do email\nguiadasportinhas@gmail.com, nos seguintes dias e horários: de segunda a sexta, das 10h\nàs 18h.\nSe tiver dúvidas, precisar de suporte ou desejar exercer seus direitos relacionados aos seus\ndados pessoais, entre em contato conosco através dos canais disponíveis no aplicativo.\nDas responsabilidades\nÉ de responsabilidade do usuário:\na) defeitos ou vícios técnicos originados no próprio sistema do usuário;\nb) a correta utilização da plataforma, dos serviços ou produtos oferecidos, prezando pela\nboa convivência, pelo respeito e cordialidade entre os usuários;\nc) pelo cumprimento e respeito ao conjunto de regras disposto nesse Termo de Condições\nGeral de Uso, na respectiva Política de Privacidade e na legislação nacional e internacional;\nd) pela proteção aos dados de acesso à sua conta/perfil (login e senha).\nÉ de responsabilidade da plataforma:\na) indicar as características do serviço ou produto;\nb) os defeitos e vícios encontrados no serviço ou produto oferecido desde que lhe tenha\ndado causa;\nc) as informações que foram por ele divulgadas, sendo que os comentários ou informações\ndivulgadas por usuários são de inteira responsabilidade dos próprios usuários;\nd) os conteúdos ou atividades ilícitas praticadas através da sua plataforma.\nÉ de responsabilidade dos estabelecimentos participantes do app:\na) todas as informações oferecidas a nós do APP para divulgação, que englobam, nome,\nendereço, horário de funcionamento, fotos, informações do cupom, entre outros dados\nb) Em caso de mudança de endereço ou fechamento do estabelecimento, os espaços\ndevem nos avisar para fazer a troca de informação ou remoção do app.\nOs serviços oferecidos podem, a qualquer tempo e unilateralmente, e sem qualquer aviso\nprévio, ser deixados de fornecer, alterados em suas características, bem como restringido\npara o uso ou acesso.\n11. Dos direitos autorais\nO presente Termo de Uso concede aos usuários uma licença não exclusiva, não transferível\ne não sublicenciável, para acessar e fazer uso da plataforma e dos serviços e produtos por\nela disponibilizados.\nA estrutura do site ou aplicativo, as marcas, logotipos, nomes comerciais, layouts, gráficos e\ndesign de interface, imagens, ilustrações, fotografias, apresentações, vídeos, conteúdos\nescritos e de som e áudio, programas de computador, banco de dados, arquivos de\ntransmissão e quaisquer outras informações e direitos de propriedade intelectual da razão\nsocial ___, observados os termos da Lei da Propriedade Industrial (Lei nº 9.279/96), Lei de\nDireitos Autorais (Lei nº 9.610/98) e Lei do Software (Lei nº 9.609/98), estão devidamente\nreservados.\nEste Termos de Uso não cede ou transfere ao usuário qualquer direito, de modo que o\nacesso não gera qualquer direito de propriedade intelectual ao usuário, exceto pela licença\nlimitada ora concedida.\nO uso da plataforma pelo usuário é pessoal, individual e intransferível, sendo vedado\nqualquer uso não autorizado, comercial ou não-comercial. Tais usos consistirão em violação\ndos direitos de propriedade intelectual da razão social ___, puníveis nos termos da\nlegislação aplicável.\nAceitação dos Termos\nAo utilizar nosso aplicativo, você concorda com estes termos e condições, bem como com\nnossa Política de Privacidade. Se não concordar, por favor, não utilize nossos serviços.\nEstes termos representam o acordo completo entre você e a plataforma, substituindo\nquaisquer entendimentos anteriores. Caso alguma cláusula seja considerada inválida, as\ndemais permanecerão em vigor.\nAgradecemos por confiar em nosso serviço! Nosso compromisso é oferecer uma\nexperiência segura, transparente e de qualidade para você.',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ]
                          .divide(SizedBox(height: 15.0))
                          .addToEnd(SizedBox(height: 20.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
