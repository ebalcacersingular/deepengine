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

Future<String?> passKeyLogin(String email) async {
  try {
    final corbadoAuth = FFAppState().corbado['instance'] as CorbadoAuth;
    await corbadoAuth.loginWithPasskey(email: email);
    FFAppState().corbado['instance'] = corbadoAuth;
    return 'ok';
  } on PasskeyAuthCancelledException {
    return null;
  } on ValidationException catch (e) {
    return 'validation error: ${e.toString()}';
  } on UnexpectedBackendException catch (e) {
    debugPrint(e.toString());
    return 'An unexpected error happened during registration. Please try again later.';
  } on UnknownUserException {
    return 'Incorrect user identifier. Please check your email.';
  } on NoPasskeyForDeviceException {
    return 'There is no passkey registered for this device, please register it by logging into your account.';
  } catch (e) {
    print(e);
    return 'An error ocurred please try again later. ${e}';
  }
}
