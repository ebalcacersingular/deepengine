// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:corbado_auth/corbado_auth.dart';

Future<dynamic> getCorbadoInstance() async {
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

//Script to include in the web/index.html for web
// <script src="https://github.com/corbado/flutter-passkeys/releases/download/2.0.0-dev.1/bundle.js"
//   type="application/javascript"></script>
