import '/flutter_flow/flutter_flow_util.dart';
import 'signup_main_widget.dart' show SignupMainWidget;
import 'package:flutter/material.dart';

class SignupMainModel extends FlutterFlowModel<SignupMainWidget> {
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
  String? Function(BuildContext, String?)?
      firstLastNameTextController2Validator;
  // State field(s) for first_last_name widget.
  FocusNode? firstLastNameFocusNode3;
  TextEditingController? firstLastNameTextController3;
  String? Function(BuildContext, String?)?
      firstLastNameTextController3Validator;
  // State field(s) for first_last_name widget.
  FocusNode? firstLastNameFocusNode4;
  TextEditingController? firstLastNameTextController4;
  late bool firstLastNameVisibility1;
  String? Function(BuildContext, String?)?
      firstLastNameTextController4Validator;
  // State field(s) for first_last_name widget.
  FocusNode? firstLastNameFocusNode5;
  TextEditingController? firstLastNameTextController5;
  late bool firstLastNameVisibility2;
  String? Function(BuildContext, String?)?
      firstLastNameTextController5Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    firstLastNameVisibility1 = false;
    firstLastNameVisibility2 = false;
  }

  @override
  void dispose() {
    firstLastNameFocusNode1?.dispose();
    firstLastNameTextController1?.dispose();

    firstLastNameFocusNode2?.dispose();
    firstLastNameTextController2?.dispose();

    firstLastNameFocusNode3?.dispose();
    firstLastNameTextController3?.dispose();

    firstLastNameFocusNode4?.dispose();
    firstLastNameTextController4?.dispose();

    firstLastNameFocusNode5?.dispose();
    firstLastNameTextController5?.dispose();
  }
}
