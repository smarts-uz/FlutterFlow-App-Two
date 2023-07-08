import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'language_selector_page_model.dart';
export 'language_selector_page_model.dart';

class LanguageSelectorPageWidget extends StatefulWidget {
  const LanguageSelectorPageWidget({Key? key}) : super(key: key);

  @override
  _LanguageSelectorPageWidgetState createState() =>
      _LanguageSelectorPageWidgetState();
}

class _LanguageSelectorPageWidgetState
    extends State<LanguageSelectorPageWidget> {
  late LanguageSelectorPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguageSelectorPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'trnxzo2h' /* LanguageSelector */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowLanguageSelector(
                  width: double.infinity,
                  backgroundColor: FlutterFlowTheme.of(context).primary,
                  borderColor: Colors.transparent,
                  dropdownIconColor: Colors.white,
                  borderRadius: 8.0,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 13.0,
                  ),
                  hideFlags: false,
                  flagSize: 24.0,
                  flagTextGap: 8.0,
                  currentLanguage: FFLocalizations.of(context).languageCode,
                  languages: FFLocalizations.languages(),
                  onChanged: (lang) => setAppLanguage(context, lang),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'imbsuko0' /* Salom */,
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge,
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
