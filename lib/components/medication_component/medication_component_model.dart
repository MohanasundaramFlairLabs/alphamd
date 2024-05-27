import '/components/medication_card_widget/medication_card_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'medication_component_widget.dart' show MedicationComponentWidget;
import 'package:flutter/material.dart';

class MedicationComponentModel
    extends FlutterFlowModel<MedicationComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MedicationCardWidget component.
  late MedicationCardWidgetModel medicationCardWidgetModel1;
  // Model for MedicationCardWidget component.
  late MedicationCardWidgetModel medicationCardWidgetModel2;

  @override
  void initState(BuildContext context) {
    medicationCardWidgetModel1 =
        createModel(context, () => MedicationCardWidgetModel());
    medicationCardWidgetModel2 =
        createModel(context, () => MedicationCardWidgetModel());
  }

  @override
  void dispose() {
    medicationCardWidgetModel1.dispose();
    medicationCardWidgetModel2.dispose();
  }
}
