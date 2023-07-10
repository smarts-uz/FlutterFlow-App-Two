import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blur_page_model.dart';
export 'blur_page_model.dart';

class BlurPageWidget extends StatefulWidget {
  const BlurPageWidget({Key? key}) : super(key: key);

  @override
  _BlurPageWidgetState createState() => _BlurPageWidgetState();
}

class _BlurPageWidgetState extends State<BlurPageWidget> {
  late BlurPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlurPageModel());
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
                'Blur',
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'data:image/jpeg;base64,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',
                      ).image,
                    ),
                  ),
                  child: ClipRect(
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                        sigmaX: 1.0,
                        sigmaY: 1.0,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'The picture',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Container(
                  width: double.infinity,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                        'data:image/jpeg;base64,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',
                      ).image,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5.0,
                          sigmaY: 4.0,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'data:image/jpeg;base64,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',
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
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
