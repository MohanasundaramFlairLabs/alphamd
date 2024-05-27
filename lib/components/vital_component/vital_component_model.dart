import '/components/recent_vitals/recent_vitals_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vital_component_widget.dart' show VitalComponentWidget;
import 'package:flutter/material.dart';

class VitalComponentModel extends FlutterFlowModel<VitalComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for RecentVitals component.
  late RecentVitalsModel recentVitalsModel1;
  // Model for RecentVitals component.
  late RecentVitalsModel recentVitalsModel2;

  @override
  void initState(BuildContext context) {
    recentVitalsModel1 = createModel(context, () => RecentVitalsModel());
    recentVitalsModel2 = createModel(context, () => RecentVitalsModel());
  }

  @override
  void dispose() {
    recentVitalsModel1.dispose();
    recentVitalsModel2.dispose();
  }
}
