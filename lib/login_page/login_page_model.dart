import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for emailField widget.
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  String? _emailFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for passwordField widget.
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldControllerValidator;
  String? _passwordFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Password requires at least 8 characters';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailFieldControllerValidator = _emailFieldControllerValidator;
    passwordFieldVisibility = false;
    passwordFieldControllerValidator = _passwordFieldControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    emailFieldController?.dispose();
    passwordFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
