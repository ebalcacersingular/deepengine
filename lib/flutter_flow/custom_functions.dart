import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

List<IssueStruct> getOpenIssues() {
  return [
    IssueStruct(
      severity: 9.8,
      description:
          "OpenSSH X11 Forwarding Security Bypass Vulnerability (Linux)",
      date: "Feb 25, 2024",
      time: "18:34:22 GMT",
      location: "Production",
    ),
    IssueStruct(
      severity: 7.8,
      description:
          "Diffie-Hellman Ephemeral Key Exchange DoS Vulnerability (SSH, D(HE)ater)",
      date: "Feb 25, 2024",
      time: "18:34:22 GMT",
      location: "Test Env",
    ),
    IssueStruct(
      severity: 3.6,
      description: "ICMP Timestamp Reply Information Disclosure",
      date: "Feb 25, 2024",
      time: "18:34:22 GMT",
      location: "Some app",
    ),
  ];
}

List<double> generateRandomLineData(int pointsPerLine) {
  math.Random random = math.Random();
  List<double> lineData = [];
  for (int i = 0; i < pointsPerLine; i++) {
    lineData.add((random.nextDouble() * 19) +
        1); // Generates random data between 0 and 20
  }
  return lineData;
}
