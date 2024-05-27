import '/flutter_flow/flutter_flow_util.dart';
import 'webview_widget.dart' show WebviewWidget;
import 'package:flutter/material.dart';

class WebviewModel extends FlutterFlowModel<WebviewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
