import '/flutter_flow/flutter_flow_util.dart';
import 'signin_widget.dart' show SigninWidget;
import 'package:flutter/material.dart';

class SigninModel extends FlutterFlowModel<SigninWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for first_last_name widget.
  FocusNode? firstLastNameFocusNode1;
  TextEditingController? firstLastNameTextController1;
  String? Function(BuildContext, String?)?
      firstLastNameTextController1Validator;
  // State field(s) for first_last_name widget.
  FocusNode? firstLastNameFocusNode2;
  TextEditingController? firstLastNameTextController2;
  late bool firstLastNameVisibility;
  String? Function(BuildContext, String?)?
      firstLastNameTextController2Validator;

  @override
  void initState(BuildContext context) {
    firstLastNameVisibility = false;
  }

  @override
  void dispose() {
    firstLastNameFocusNode1?.dispose();
    firstLastNameTextController1?.dispose();

    firstLastNameFocusNode2?.dispose();
    firstLastNameTextController2?.dispose();
  }
}
