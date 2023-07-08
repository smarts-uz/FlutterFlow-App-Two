import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'lottie_animation_page_model.dart';
export 'lottie_animation_page_model.dart';

class LottieAnimationPageWidget extends StatefulWidget {
  const LottieAnimationPageWidget({Key? key}) : super(key: key);

  @override
  _LottieAnimationPageWidgetState createState() =>
      _LottieAnimationPageWidgetState();
}

class _LottieAnimationPageWidgetState extends State<LottieAnimationPageWidget> {
  late LottieAnimationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LottieAnimationPageModel());
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
            'LottieAnimation',
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Lottie.network(
                'https://assets2.lottiefiles.com/packages/lf20_aZTdD5.json',
                width: 150.0,
                height: 130.0,
                fit: BoxFit.cover,
                animate: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
