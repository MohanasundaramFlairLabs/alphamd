import '/components/weight_card/weight_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
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
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for WeightCard component.
  late WeightCardModel weightCardModel1;
  // Model for WeightCard component.
  late WeightCardModel weightCardModel2;

  @override
  void initState(BuildContext context) {
    weightCardModel1 = createModel(context, () => WeightCardModel());
    weightCardModel2 = createModel(context, () => WeightCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    weightCardModel1.dispose();
    weightCardModel2.dispose();
  }
}
