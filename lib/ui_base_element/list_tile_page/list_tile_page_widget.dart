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
            'ListTile Page',
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
                      'Name',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      'Chatting here...',
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
                      'Name',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      'Chatting here...',
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
                      'Name',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      'Chatting here...',
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
                      'Name',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      'Chatting here...',
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
                      'Name',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      'Chatting here...',
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
                      'Name',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      'Chatting here...',
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
                      'Name',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      'Chatting here...',
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
                      'Name',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      'Chatting here...',
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
                      'Name',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      'Chatting here...',
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
                      'Name',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      'Chatting here...',
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
                      'Name',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleLarge,
                    ),
                    subtitle: Text(
                      'Chatting here...',
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
