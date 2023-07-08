import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_tile_page_model.dart';
export 'list_tile_page_model.dart';

class ListTilePageWidget extends StatefulWidget {
  const ListTilePageWidget({Key? key}) : super(key: key);

  @override
  _ListTilePageWidgetState createState() => _ListTilePageWidgetState();
}

class _ListTilePageWidgetState extends State<ListTilePageWidget> {
  late ListTilePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListTilePageModel());
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
              'go7tgu88' /* ListTile Page */,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  ListTile(
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'qdoj3afy' /* Name */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'edx54wb1' /* Chatting here... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'i8bnw05t' /* Name */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'tzqoye5g' /* Chatting here... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'p613b2xc' /* Name */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'cmdncaf6' /* Chatting here... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'o8boxmd4' /* Name */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'm0sf4phk' /* Chatting here... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'fyd9k9hr' /* Name */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        '6iawryyb' /* Chatting here... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'kvc1qsw8' /* Name */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        '29rhlcxd' /* Chatting here... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'a341zt76' /* Name */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        '066aetm3' /* Chatting here... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'muir5pxa' /* Name */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'f0sprbxx' /* Chatting here... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'xgxebbr3' /* Name */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'flgqwjtv' /* Chatting here... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      FFLocalizations.of(context).getText(
                        '4itiodkl' /* Name */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        'labncibx' /* Chatting here... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                  ),
                  ListTile(
                    title: Text(
                      FFLocalizations.of(context).getText(
                        '521mr3ez' /* Name */,
                      ),
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      FFLocalizations.of(context).getText(
                        '3ext8awl' /* Chatting here... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 20.0,
                    ),
                    tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                    dense: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
