import '/flutter_flow/flutter_flow_util.dart';
import 'signup_main_widget.dart' show SignupMainWidget;
import 'package:flutter/material.dart';

class SignupMainModel extends FlutterFlowModel<SignupMainWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for first_last_name widget.
  FocusNode? firstLastNameFocusNode;
  TextEditingController? firstLastNameTextController;
  String? Function(BuildContext, String?)? firstLastNameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for team_name widget.
  FocusNode? teamNameFocusNode;
  TextEditingController? teamNameTextController;
  String? Function(BuildContext, String?)? teamNameTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for confirm_password widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Custom Action - passKeyLogin] action in Button widget.
  String? registerResults;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    confirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    firstLastNameFocusNode?.dispose();
    firstLastNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    teamNameFocusNode?.dispose();
    teamNameTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();
  }
}
