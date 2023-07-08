import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'progress_bar_page_model.dart';
export 'progress_bar_page_model.dart';

class ProgressBarPageWidget extends StatefulWidget {
  const ProgressBarPageWidget({Key? key}) : super(key: key);

  @override
  _ProgressBarPageWidgetState createState() => _ProgressBarPageWidgetState();
}

class _ProgressBarPageWidgetState extends State<ProgressBarPageWidget> {
  late ProgressBarPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgressBarPageModel());
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
              '3h3pvfac' /* ProgressBar */,
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'hg1mijww' /* Storage */,
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge,
                ),
                CircularPercentIndicator(
                  percent: 0.9,
                  radius: 75.0,
                  lineWidth: 20.0,
                  animation: true,
                  progressColor: FlutterFlowTheme.of(context).error,
                  backgroundColor: FlutterFlowTheme.of(context).accent4,
                  center: Text(
                    FFLocalizations.of(context).getText(
                      'hzc0aile' /* 90% */,
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall,
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'myuzzrda' /* Loading... */,
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                  child: LinearPercentIndicator(
                    percent: 0.2,
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    lineHeight: 30.0,
                    animation: true,
                    progressColor: FlutterFlowTheme.of(context).primary,
                    backgroundColor: Color(0xFFFEC92D),
                    center: Text(
                      FFLocalizations.of(context).getText(
                        '2dxa77cf' /* 20% */,
                      ),
                      style: FlutterFlowTheme.of(context).headlineSmall,
                    ),
                    barRadius: Radius.circular(20.0),
                    padding: EdgeInsets.zero,
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
