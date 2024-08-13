// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:corbado_auth/corbado_auth.dart';

Future<String?> passKeyRegister(String email) async {
  try {
    final corbadoAuth = FFAppState().corbado['instance'] as CorbadoAuth;
    await corbadoAuth.signUpWithPasskey(email: email, fullName: email);
    FFAppState().corbado['instance'] = corbadoAuth;
    return 'ok';
  } on PasskeyAuthCancelledException {
    return null;
  } on NoPasskeyForDeviceException {
    return 'No passkey has been setup on this device for ${email}.';
  } on UnknownUserException {
    return 'Incorrect user identifier. Please check your email.';
  } catch (e) {
    print(e);
    return e.toString();
  }
}
