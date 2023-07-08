import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'web_view_page_model.dart';
export 'web_view_page_model.dart';

class WebViewPageWidget extends StatefulWidget {
  const WebViewPageWidget({Key? key}) : super(key: key);

  @override
  _WebViewPageWidgetState createState() => _WebViewPageWidgetState();
}

class _WebViewPageWidgetState extends State<WebViewPageWidget> {
  late WebViewPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebViewPageModel());
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
              'prn58kl6' /* WebView */,
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
              FlutterFlowWebView(
                content:
                    'https://docs.flutterflow.io/widgets-and-components/widgets-ui-elements/base-elements/webview',
                bypass: false,
                height: MediaQuery.sizeOf(context).height * 1.0,
                verticalScroll: true,
                horizontalScroll: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
