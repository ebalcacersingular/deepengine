// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:corbado_auth/corbado_auth.dart';
import 'package:deepengine/app_state.dart';

Future<bool?> passKeyLogout() async {
  // Add your function code here!
  try {
    final corbadoAuth = FFAppState().corbado['instance'] as CorbadoAuth;
    await corbadoAuth.signOut();
    FFAppState().corbado['instance'] = corbadoAuth;
    return true;
  } catch (e) {
    print(e);
    return false;
  }
}
