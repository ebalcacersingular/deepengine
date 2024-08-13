// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IssueStruct extends BaseStruct {
  IssueStruct({
    double? severity,
    String? description,
    String? date,
    String? time,
    String? location,
  })  : _severity = severity,
        _description = description,
        _date = date,
        _time = time,
        _location = location;

  // "severity" field.
  double? _severity;
  double get severity => _severity ?? 0.0;
  set severity(double? val) => _severity = val;

  void incrementSeverity(double amount) => severity = severity + amount;

  bool hasSeverity() => _severity != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  static IssueStruct fromMap(Map<String, dynamic> data) => IssueStruct(
        severity: castToType<double>(data['severity']),
        description: data['description'] as String?,
        date: data['date'] as String?,
        time: data['time'] as String?,
        location: data['location'] as String?,
      );

  static IssueStruct? maybeFromMap(dynamic data) =>
      data is Map ? IssueStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'severity': _severity,
        'description': _description,
        'date': _date,
        'time': _time,
        'location': _location,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'severity': serializeParam(
          _severity,
          ParamType.double,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
      }.withoutNulls;

  static IssueStruct fromSerializableMap(Map<String, dynamic> data) =>
      IssueStruct(
        severity: deserializeParam(
          data['severity'],
          ParamType.double,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'IssueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IssueStruct &&
        severity == other.severity &&
        description == other.description &&
        date == other.date &&
        time == other.time &&
        location == other.location;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([severity, description, date, time, location]);
}

IssueStruct createIssueStruct({
  double? severity,
  String? description,
  String? date,
  String? time,
  String? location,
}) =>
    IssueStruct(
      severity: severity,
      description: description,
      date: date,
      time: time,
      location: location,
    );
