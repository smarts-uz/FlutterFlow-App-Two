import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'toggle_icon_page_model.dart';
export 'toggle_icon_page_model.dart';

class ToggleIconPageWidget extends StatefulWidget {
  const ToggleIconPageWidget({Key? key}) : super(key: key);

  @override
  _ToggleIconPageWidgetState createState() => _ToggleIconPageWidgetState();
}

class _ToggleIconPageWidgetState extends State<ToggleIconPageWidget> {
  late ToggleIconPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ToggleIconPageModel());
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
            'ToggleIcon',
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Account Settings',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    ToggleIcon(
                      onPressed: () async {
                        setState(() =>
                            FFAppState().idDarkMode = !FFAppState().idDarkMode);
                        if (Theme.of(context).brightness == Brightness.dark) {
                          setDarkModeSetting(context, ThemeMode.system);
                        } else {
                          setDarkModeSetting(context, ThemeMode.system);
                        }
                      },
                      value: FFAppState().idDarkMode,
                      onIcon: Icon(
                        Icons.sunny,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 25.0,
                      ),
                      offIcon: FaIcon(
                        FontAwesomeIcons.solidMoon,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 25.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
