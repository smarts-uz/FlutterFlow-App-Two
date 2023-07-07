import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateNotePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for ID widget.
  TextEditingController? idController;
  String? Function(BuildContext, String?)? idControllerValidator;
  String? _idControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for titleField widget.
  TextEditingController? titleFieldController;
  String? Function(BuildContext, String?)? titleFieldControllerValidator;
  String? _titleFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // State field(s) for desField widget.
  TextEditingController? desFieldController;
  String? Function(BuildContext, String?)? desFieldControllerValidator;
  String? _desFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    idControllerValidator = _idControllerValidator;
    titleFieldControllerValidator = _titleFieldControllerValidator;
    desFieldControllerValidator = _desFieldControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    idController?.dispose();
    titleFieldController?.dispose();
    desFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
