import '/components/medication_card_widget/medication_card_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'medication_component_model.dart';
export 'medication_component_model.dart';

class MedicationComponentWidget extends StatefulWidget {
  const MedicationComponentWidget({super.key});

  @override
  State<MedicationComponentWidget> createState() =>
      _MedicationComponentWidgetState();
}

class _MedicationComponentWidgetState extends State<MedicationComponentWidget> {
  late MedicationComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MedicationComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(25.0, 15.0, 25.0, 15.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Medications (5)',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleLargeFamily,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleLargeFamily),
                        ),
                  ),
                  Flexible(
                    flex: 1,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('MedicationPage');
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.18,
                        decoration: const BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'See All ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: const Color(0xFF3894B5),
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                            const Flexible(
                              flex: 1,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF3894B5),
                                size: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: 90.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: wrapWithModel(
                        model: _model.medicationCardWidgetModel1,
                        updateCallback: () => setState(() {}),
                        child: const MedicationCardWidgetWidget(
                          medicationName: 'Amitriptyline (100mg)',
                          quantity: '0.5 ml',
                          mediDate: '24 Sept',
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: 90.0,
                      decoration: const BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.medicationCardWidgetModel2,
                        updateCallback: () => setState(() {}),
                        child: const MedicationCardWidgetWidget(
                          medicationName: 'Amitriptyline (100mg)',
                          quantity: '0.5 ml',
                          mediDate: '24 Sept',
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 10.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
