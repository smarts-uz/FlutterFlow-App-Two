import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:rive/rive.dart' hide LinearGradient;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rive_animation_page_model.dart';
export 'rive_animation_page_model.dart';

class RiveAnimationPageWidget extends StatefulWidget {
  const RiveAnimationPageWidget({Key? key}) : super(key: key);

  @override
  _RiveAnimationPageWidgetState createState() =>
      _RiveAnimationPageWidgetState();
}

class _RiveAnimationPageWidgetState extends State<RiveAnimationPageWidget> {
  late RiveAnimationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RiveAnimationPageModel());
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
                  'usddc8nb' /* RiveAnimation */,
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
                width: double.infinity,
                height: 330.0,
                child: RiveAnimation.network(
                  'https://public.rive.app/community/runtime-files/1199-2317-jack-olantern.riv',
                  artboard: 'New Artboard',
                  fit: BoxFit.cover,
                  controllers: _model.riveAnimationControllers1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Container(
                  width: 150.0,
                  height: 130.0,
                  child: RiveAnimation.asset(
                    'assets/rive_animations/2967-6221-found-it.riv',
                    artboard: 'Shiba_inu',
                    fit: BoxFit.cover,
                    controllers: _model.riveAnimationControllers2,
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
