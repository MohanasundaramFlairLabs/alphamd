import '/components/report_card/report_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'file_component_widget.dart' show FileComponentWidget;
import 'package:flutter/material.dart';

class FileComponentModel extends FlutterFlowModel<FileComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ReportCard component.
  late ReportCardModel reportCardModel1;
  // Model for ReportCard component.
  late ReportCardModel reportCardModel2;

  @override
  void initState(BuildContext context) {
    reportCardModel1 = createModel(context, () => ReportCardModel());
    reportCardModel2 = createModel(context, () => ReportCardModel());
  }

  @override
  void dispose() {
    reportCardModel1.dispose();
    reportCardModel2.dispose();
  }
}
