import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drop_down_page_model.dart';
export 'drop_down_page_model.dart';

class DropDownPageWidget extends StatefulWidget {
  const DropDownPageWidget({Key? key}) : super(key: key);

  @override
  _DropDownPageWidgetState createState() => _DropDownPageWidgetState();
}

class _DropDownPageWidgetState extends State<DropDownPageWidget> {
  late DropDownPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropDownPageModel());
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
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'ehu1r85s' /* DropDown */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xFFF0F5FA),
                  size: 24.0,
                ),
              ),
            ],
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
                FlutterFlowDropDown<String>(
                  controller: _model.dropDownValueController ??=
                      FormFieldController<String>(
                    _model.dropDownValue ??=
                        FFLocalizations.of(context).getText(
                      'osw6zjpt' /* Uzbekistan */,
                    ),
                  ),
                  options: [
                    FFLocalizations.of(context).getText(
                      'cei8uqmx' /* Uzbekistan */,
                    ),
                    FFLocalizations.of(context).getText(
                      'lom2g965' /* Ispan */,
                    ),
                    FFLocalizations.of(context).getText(
                      '28k2ti3d' /* Germany */,
                    ),
                    FFLocalizations.of(context).getText(
                      '3p6dvgux' /* Morocco */,
                    ),
                    FFLocalizations.of(context).getText(
                      'if0d6zbe' /* New Zeland */,
                    ),
                    FFLocalizations.of(context).getText(
                      'pc7mzf37' /* Tadjikistan */,
                    )
                  ],
                  onChanged: (val) =>
                      setState(() => _model.dropDownValue = val),
                  width: 367.0,
                  height: 50.0,
                  searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium,
                  hintText: FFLocalizations.of(context).getText(
                    'rbvxv8tv' /* Country */,
                  ),
                  searchHintText: FFLocalizations.of(context).getText(
                    'rzdep83c' /* Search your country */,
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 2.0,
                  borderColor: FlutterFlowTheme.of(context).alternate,
                  borderWidth: 2.0,
                  borderRadius: 8.0,
                  margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isSearchable: true,
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                  child: Text(
                    valueOrDefault<String>(
                      _model.dropDownValue,
                      'Uzbekistan',
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
