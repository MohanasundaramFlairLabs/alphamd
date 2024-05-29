import '/auth/firebase_auth/auth_util.dart';
import '/components/recent_vitals/recent_vitals_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleLargeFamily),
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
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
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
            child: AuthUserStreamWidget(
              builder: (context) => Builder(
                builder: (context) {
                  final vital = (currentUserDocument?.vitals.toList() ?? [])
                      .take(2)
                      .toList();
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(vital.length, (vitalIndex) {
                        final vitalItem = vital[vitalIndex];
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (vitalItem.vitalType == 'Heart Rate')
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: const BoxDecoration(),
                                  child: RecentVitalsWidget(
                                    key: Key(
                                        'Key9bn_${vitalIndex}_of_${vital.length}'),
                                    vitalName: vitalItem.vitalType,
                                    vitalValue: vitalItem.vitalValue.toString(),
                                    vitalUnit: 'bpm',
                                    vitalIcon: const Icon(
                                      FFIcons.kvector,
                                      color: Color(0xEEFB31C1),
                                      size: 20.0,
                                    ),
                                    vitalColor: const Color(0x26EF5DA8),
                                  ),
                                ),
                              if (vitalItem.vitalType == 'Blood Pressure')
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.6,
                                  decoration: const BoxDecoration(),
                                  child: RecentVitalsWidget(
                                    key: Key(
                                        'Keyqk5_${vitalIndex}_of_${vital.length}'),
                                    vitalName: vitalItem.vitalType,
                                    vitalValue: vitalItem.vitalValue.toString(),
                                    vitalUnit: 'mmHG',
                                    vitalIcon: const Icon(
                                      FFIcons.kgroup,
                                      color: Color(0xE33263EC),
                                      size: 20.0,
                                    ),
                                    vitalColor: const Color(0x255053F4),
                                  ),
                                ),
                              if (vitalItem.vitalType == 'Weight')
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: const BoxDecoration(),
                                  child: RecentVitalsWidget(
                                    key: Key(
                                        'Keymnx_${vitalIndex}_of_${vital.length}'),
                                    vitalName: vitalItem.vitalType,
                                    vitalValue: vitalItem.vitalValue.toString(),
                                    vitalUnit: 'KG',
                                    vitalIcon: const Icon(
                                      FFIcons.kweight,
                                      color: Color(0xFFBE9427),
                                      size: 20.0,
                                    ),
                                    vitalColor: const Color(0x27BE9427),
                                  ),
                                ),
                              if (vitalItem.vitalType == 'Steps')
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  decoration: const BoxDecoration(),
                                  child: RecentVitalsWidget(
                                    key: Key(
                                        'Keynyl_${vitalIndex}_of_${vital.length}'),
                                    vitalName: vitalItem.vitalType,
                                    vitalValue: vitalItem.vitalValue.toString(),
                                    vitalUnit: ' ',
                                    vitalIcon: const Icon(
                                      FFIcons.ksteps,
                                      color: Color(0xFF3DD6DB),
                                      size: 20.0,
                                    ),
                                    vitalColor: const Color(0x273DD6DB),
                                  ),
                                ),
                            ],
                          ),
                        );
                      })
                          .divide(const SizedBox(width: 8.0))
                          .addToStart(const SizedBox(width: 25.0))
                          .addToEnd(const SizedBox(width: 25.0)),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
