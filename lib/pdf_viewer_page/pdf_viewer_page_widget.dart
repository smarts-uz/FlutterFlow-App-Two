import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pdf_viewer_page_model.dart';
export 'pdf_viewer_page_model.dart';

class PdfViewerPageWidget extends StatefulWidget {
  const PdfViewerPageWidget({Key? key}) : super(key: key);

  @override
  _PdfViewerPageWidgetState createState() => _PdfViewerPageWidgetState();
}

class _PdfViewerPageWidgetState extends State<PdfViewerPageWidget> {
  late PdfViewerPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PdfViewerPageModel());
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
              'o8h26c5v' /* PdfViewer */,
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
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowPdfViewer(
                  assetPath: 'assets/pdfs/Free_Test_Data_1MB_PDF.pdf',
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  horizontalScroll: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
