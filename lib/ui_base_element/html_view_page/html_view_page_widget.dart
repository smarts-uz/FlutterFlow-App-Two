import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'html_view_page_model.dart';
export 'html_view_page_model.dart';

class HtmlViewPageWidget extends StatefulWidget {
  const HtmlViewPageWidget({Key? key}) : super(key: key);

  @override
  _HtmlViewPageWidgetState createState() => _HtmlViewPageWidgetState();
}

class _HtmlViewPageWidgetState extends State<HtmlViewPageWidget> {
  late HtmlViewPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HtmlViewPageModel());
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
                  'gebznai9' /* HtmlView */,
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
              Html(
                data:
                    '<html>\n<head>\n<title>Page Title</title>\n</head>\n<body>\n\n<h1>This is a Heading</h1>\n<p>This is a paragraph.</p>\n<h3>This is heading three in html.</h3>\n<p>The image below is a link. Try to click on it.</p>\n\n<a href=\"default.asp\"><img src=\"smiley.gif\" alt=\"HTML tutorial\" style=\"width:42px;height:42px;\"></a>\n<p><a href=\"https://www.Youtube.com/\"><img src=\"https://www.tutorialspoint.com/assets/questions/media/426142-1668760872.png\" style=\"width:50px;height:50px;\"></a></p>\n\n</body>\n</html>',
                onLinkTap: (url, context, attributes, element) =>
                    launchURL(url!),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'zlrfw5d6' /* This html code  */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Color(0xFFFEC92D),
                      fontSize: 30.0,
                    ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  '2e57jepp' /* <html>
<head>
<title>Page Titl... */
                  ,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
