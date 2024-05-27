import '/components/recent_vitals/recent_vitals_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'vital_component_model.dart';
export 'vital_component_model.dart';

class VitalComponentWidget extends StatefulWidget {
  const VitalComponentWidget({super.key});

  @override
  State<VitalComponentWidget> createState() => _VitalComponentWidgetState();
}

class _VitalComponentWidgetState extends State<VitalComponentWidget> {
  late VitalComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VitalComponentModel());
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
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 25.0, 15.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Recent Vitals',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('VitalsPage');
                    },
                    child: Container(
                      decoration: const BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('webview');
                            },
                            child: Text(
                              'See All ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF3894B5),
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF3894B5),
                            size: 16.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ].addToStart(const SizedBox(width: 25.0)),
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: const BoxDecoration(),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.52,
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: wrapWithModel(
                        model: _model.recentVitalsModel1,
                        updateCallback: () => setState(() {}),
                        child: const RecentVitalsWidget(
                          vitalName: 'Heart Rate',
                          vitalValue: '98',
                          vitalUnit: 'bpm',
                          vitalIcon: Icon(
                            FFIcons.kvector,
                            color: Color(0xEEFB31C1),
                            size: 20.0,
                          ),
                          vitalColor: Color(0x26EF5DA8),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    decoration: const BoxDecoration(),
                    child: wrapWithModel(
                      model: _model.recentVitalsModel2,
                      updateCallback: () => setState(() {}),
                      child: const RecentVitalsWidget(
                        vitalName: 'Blood Pressure',
                        vitalValue: '120',
                        vitalUnit: 'mmHG',
                        vitalIcon: Icon(
                          FFIcons.kgroup,
                          color: Color(0xE33263EC),
                          size: 20.0,
                        ),
                        vitalColor: Color(0x255053F4),
                      ),
                    ),
                  ),
                ]
                    .addToStart(const SizedBox(width: 25.0))
                    .addToEnd(const SizedBox(width: 25.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
