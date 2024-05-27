import '/flutter_flow/flutter_flow_util.dart';
import 'weight_page_widget.dart' show WeightPageWidget;
import 'package:flutter/material.dart';

class WeightPageModel extends FlutterFlowModel<WeightPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
