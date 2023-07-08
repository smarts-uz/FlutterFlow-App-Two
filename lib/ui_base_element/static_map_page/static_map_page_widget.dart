import '/flutter_flow/flutter_flow_static_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/lat_lng.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:provider/provider.dart';
import 'static_map_page_model.dart';
export 'static_map_page_model.dart';

class StaticMapPageWidget extends StatefulWidget {
  const StaticMapPageWidget({Key? key}) : super(key: key);

  @override
  _StaticMapPageWidgetState createState() => _StaticMapPageWidgetState();
}

class _StaticMapPageWidgetState extends State<StaticMapPageWidget> {
  late StaticMapPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StaticMapPageModel());
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
            'StaticMap',
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
              FlutterFlowStaticMap(
                location: LatLng(41.36019419082972, 69.28886826473872),
                apiKey:
                    'pk.eyJ1IjoibXVraHRvcjAzIiwiYSI6ImNsanRuMjNvdTBzOTAzcm4wMW5iYmU2cWkifQ.J5pr7CKnqpvlDhGEt8WmTw',
                style: MapBoxStyle.Satellite_V9,
                width: double.infinity,
                height: 500.0,
                fit: BoxFit.cover,
                borderRadius: BorderRadius.circular(0.0),
                zoom: 12,
                tilt: 0,
                rotation: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
