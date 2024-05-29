import '/components/medication_card_widget/medication_card_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'medication_page_widget.dart' show MedicationPageWidget;
import 'package:flutter/material.dart';

class MedicationPageModel extends FlutterFlowModel<MedicationPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for MedicationCardWidget component.
  late MedicationCardWidgetModel medicationCardWidgetModel1;
  // Model for MedicationCardWidget component.
  late MedicationCardWidgetModel medicationCardWidgetModel2;
  // Model for MedicationCardWidget component.
  late MedicationCardWidgetModel medicationCardWidgetModel3;

  @override
  void initState(BuildContext context) {
    medicationCardWidgetModel1 =
        createModel(context, () => MedicationCardWidgetModel());
    medicationCardWidgetModel2 =
        createModel(context, () => MedicationCardWidgetModel());
    medicationCardWidgetModel3 =
        createModel(context, () => MedicationCardWidgetModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    medicationCardWidgetModel1.dispose();
    medicationCardWidgetModel2.dispose();
    medicationCardWidgetModel3.dispose();
  }
}
