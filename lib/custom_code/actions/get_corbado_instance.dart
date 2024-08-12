// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:corbado_auth/corbado_auth.dart';
import 'package:deepengine/app_state.dart';

Future<dynamic> getCorbadoInstance() async {
  // Add your function code here!
  final projectId = dotenv.env['CORBADO_PROJECT_ID'] ?? '';
  // final customDomain = dotenv.env['HOST_URL'] ?? '';
  final corbadoAuth = CorbadoAuth();
  // asegurarse de configurar el campo customDomain para produccion en el .init
  await corbadoAuth.init(projectId);
  FFAppState().corbado = {
    'instance': corbadoAuth,
  };
  print('Corbado Started');
  return corbadoAuth;
}
