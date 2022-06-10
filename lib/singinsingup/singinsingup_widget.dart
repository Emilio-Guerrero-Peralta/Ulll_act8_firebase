import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../pagina/pagina_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SinginsingupWidget extends StatefulWidget {
  const SinginsingupWidget({Key key}) : super(key: key);

  @override
  _SinginsingupWidgetState createState() => _SinginsingupWidgetState();
}

class _SinginsingupWidgetState extends State<SinginsingupWidget> {
  TextEditingController apellidoController;
  TextEditingController nombreController;
  TextEditingController telefonoController;
  TextEditingController emailCController;
  TextEditingController contraseaCController;
  bool contraseaCVisibility;
  TextEditingController confirmarContraseaController;
  bool confirmarContraseaVisibility;
  TextEditingController contraseaIController;
  bool contraseaIVisibility;
  TextEditingController emailController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    apellidoController = TextEditingController();
    nombreController = TextEditingController();
    telefonoController = TextEditingController();
    emailCController = TextEditingController();
    contraseaCController = TextEditingController();
    contraseaCVisibility = false;
    confirmarContraseaController = TextEditingController();
    confirmarContraseaVisibility = false;
    contraseaIController = TextEditingController();
    contraseaIVisibility = false;
    emailController = TextEditingController();
  }

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
          'Pizza Planet',
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
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryColor,
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        indicatorColor:
                            FlutterFlowTheme.of(context).secondaryColor,
                        tabs: [
                          Tab(
                            text: 'iniciar Sesion',
                          ),
                          Tab(
                            text: 'Registrarse',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    'https://raw.githubusercontent.com/Emilio-Guerrero-Peralta/Ulll_Proyecto_Final_Imag/main/Ulll_Proyecto_Final_Imag/iniciarsesion/iniciarsesionf1.png',
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: TextFormField(
                                      controller: emailController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Correo electronico',
                                        hintText: 'Correo electronico',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: Colors.black,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: TextFormField(
                                      controller: contraseaIController,
                                      obscureText: !contraseaIVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'Contraseña',
                                        hintText: 'Contraseña',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(
                                          Icons.lock_outlined,
                                          color: Colors.black,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => contraseaIVisibility =
                                                !contraseaIVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            contraseaIVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Color(0xFF2F2F2F),
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      final user = await signInWithEmail(
                                        context,
                                        emailController.text,
                                        contraseaIController.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.topToBottom,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: PaginaWidget(),
                                        ),
                                      );
                                    },
                                    text: 'iniciar sesion',
                                    options: FFButtonOptions(
                                      width: 150,
                                      height: 40,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
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
                            SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    'https://raw.githubusercontent.com/Emilio-Guerrero-Peralta/Ulll_Proyecto_Final_Imag/main/Ulll_Proyecto_Final_Imag/iniciarsesion/iniciarsesionf1.png',
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: TextFormField(
                                      controller: nombreController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Nombre',
                                        hintText: 'nombre ',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(
                                          Icons.person,
                                          color: Colors.black,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.name,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: TextFormField(
                                      controller: apellidoController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Apellidos',
                                        hintText: 'Apellidos',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(
                                          Icons.perm_identity_outlined,
                                          color: Colors.black,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.name,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: TextFormField(
                                      controller: telefonoController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Telefono',
                                        hintText: 'Telefono',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(
                                          Icons.phone,
                                          color: Colors.black,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.phone,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: TextFormField(
                                      controller: emailCController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Email',
                                        hintText: 'Email',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: Colors.black,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: TextFormField(
                                      controller: contraseaCController,
                                      obscureText: !contraseaCVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'Contraseña',
                                        hintText: 'Contraseña',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(
                                          Icons.lock_sharp,
                                          color: Colors.black,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => contraseaCVisibility =
                                                !contraseaCVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            contraseaCVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Color(0xFF2F2F2F),
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                      textAlign: TextAlign.center,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: TextFormField(
                                      controller: confirmarContraseaController,
                                      obscureText:
                                          !confirmarContraseaVisibility,
                                      decoration: InputDecoration(
                                        labelText: 'Confirmar Contraseña',
                                        hintText: 'Confirmar Contraseña',
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF6E1FB6),
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(
                                          Icons.lock_outlined,
                                          color: Colors.black,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => confirmarContraseaVisibility =
                                                !confirmarContraseaVisibility,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            confirmarContraseaVisibility
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Color(0xFF2F2F2F),
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                          ),
                                      textAlign: TextAlign.center,
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      if (contraseaCController?.text !=
                                          confirmarContraseaController?.text) {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Passwords don\'t match!',
                                            ),
                                          ),
                                        );
                                        return;
                                      }

                                      final user = await createAccountWithEmail(
                                        context,
                                        emailCController.text,
                                        contraseaCController.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      await sendEmailVerification();
                                      await Navigator.push(
                                        context,
                                        PageTransition(
                                          type: PageTransitionType.topToBottom,
                                          duration: Duration(milliseconds: 300),
                                          reverseDuration:
                                              Duration(milliseconds: 300),
                                          child: PaginaWidget(),
                                        ),
                                      );
                                    },
                                    text: 'Crear cuenta',
                                    options: FFButtonOptions(
                                      width: 150,
                                      height: 40,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
