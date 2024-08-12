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

Future<dynamic> getCorbadoInstance() async {
  // Add your function code here!
  final projectId = 'pro-6384106881940724147';
  final corbadoAuth = CorbadoAuth();
  // asegurarse de configurar el campo customDomain para produccion en el .init
  await corbadoAuth.init(projectId);
  FFAppState().corbado = {
    'instance': corbadoAuth,
  };
  print('Corbado Started');
  return corbadoAuth;
}
