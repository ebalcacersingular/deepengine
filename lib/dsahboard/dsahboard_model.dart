import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dsahboard_widget.dart' show DsahboardWidget;
import 'package:flutter/material.dart';

class DsahboardModel extends FlutterFlowModel<DsahboardWidget> {
  ///  Local state fields for this page.

  List<int> xDataChart = [0, 10, 20, 30, 40, 50, 60, 65];
  void addToXDataChart(int item) => xDataChart.add(item);
  void removeFromXDataChart(int item) => xDataChart.remove(item);
  void removeAtIndexFromXDataChart(int index) => xDataChart.removeAt(index);
  void insertAtIndexInXDataChart(int index, int item) =>
      xDataChart.insert(index, item);
  void updateXDataChartAtIndex(int index, Function(int) updateFn) =>
      xDataChart[index] = updateFn(xDataChart[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<IssueStruct>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<IssueStruct>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
