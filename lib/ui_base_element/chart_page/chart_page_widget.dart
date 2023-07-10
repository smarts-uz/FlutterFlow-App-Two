import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chart_page_model.dart';
export 'chart_page_model.dart';

class ChartPageWidget extends StatefulWidget {
  const ChartPageWidget({Key? key}) : super(key: key);

  @override
  _ChartPageWidgetState createState() => _ChartPageWidgetState();
}

class _ChartPageWidgetState extends State<ChartPageWidget> {
  late ChartPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartPageModel());
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
                  'z1ib8k5e' /* ChartPage */,
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
                  color: FlutterFlowTheme.of(context).primaryBackground,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 370.0,
                height: 230.0,
                child: FlutterFlowPieChart(
                  data: FFPieChartData(
                    values: [currentUserEmail],
                    colors: [FlutterFlowTheme.of(context).primary],
                    radius: [100.0],
                  ),
                  donutHoleRadius: 0.0,
                  donutHoleColor: Colors.transparent,
                  sectionLabelStyle: FlutterFlowTheme.of(context).headlineSmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
