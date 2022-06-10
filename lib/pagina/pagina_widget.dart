import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../singinsingup/singinsingup_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaWidget extends StatefulWidget {
  const PaginaWidget({Key key}) : super(key: key);

  @override
  _PaginaWidgetState createState() => _PaginaWidgetState();
}

class _PaginaWidgetState extends State<PaginaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF6E1FB6),
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.list,
          size: 24,
        ),
        title: Text(
          'pizza planet',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [
          Icon(
            Icons.delivery_dining,
            size: 24,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(9, 0, 9, 0),
            child: Icon(
              Icons.add_business,
              size: 24,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 9, 0),
            child: Icon(
              Icons.add_shopping_cart,
              size: 24,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 9),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Image.network(
                          'https://raw.githubusercontent.com/Emilio-Guerrero-Peralta/Ulll_Proyecto_Final_Imag/main/Ulll_Proyecto_Final_Imag/segundoMenu/segundoMenuf1.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 9),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Image.network(
                          'https://raw.githubusercontent.com/Emilio-Guerrero-Peralta/Ulll_Proyecto_Final_Imag/main/Ulll_Proyecto_Final_Imag/segundoMenu/segundoMenuf2.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 9),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                        ),
                        child: Image.network(
                          'https://raw.githubusercontent.com/Emilio-Guerrero-Peralta/Ulll_Proyecto_Final_Imag/main/Ulll_Proyecto_Final_Imag/segundoMenu/segundoMenuf3.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 9, 0, 9),
                        child: Image.network(
                          'https://raw.githubusercontent.com/Emilio-Guerrero-Peralta/Ulll_Proyecto_Final_Imag/main/Ulll_Proyecto_Final_Imag/segundoMenu/segundoMenuf4.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        await signOut();
                        await Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.topToBottom,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: SinginsingupWidget(),
                          ),
                        );
                      },
                      text: 'Cerrar sesion',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0xFFFF0000),
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
