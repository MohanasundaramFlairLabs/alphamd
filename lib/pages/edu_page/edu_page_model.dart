import '/flutter_flow/flutter_flow_util.dart';
import 'edu_page_widget.dart' show EduPageWidget;
import 'package:flutter/material.dart';

class EduPageModel extends FlutterFlowModel<EduPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
