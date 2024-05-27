import '/flutter_flow/flutter_flow_util.dart';
import 'vitals_page_widget.dart' show VitalsPageWidget;
import 'package:flutter/material.dart';

class VitalsPageModel extends FlutterFlowModel<VitalsPageWidget> {
  ///  Local state fields for this page.

  int? pageNumber = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
