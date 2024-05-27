import '/components/report_card/report_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'file_component_model.dart';
export 'file_component_model.dart';

class FileComponentWidget extends StatefulWidget {
  const FileComponentWidget({super.key});

  @override
  State<FileComponentWidget> createState() => _FileComponentWidgetState();
}

class _FileComponentWidgetState extends State<FileComponentWidget> {
  late FileComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FileComponentModel());
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
            width: MediaQuery.sizeOf(context).width * 0.9,
            decoration: const BoxDecoration(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Files (5)',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Flexible(
                    flex: 1,
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
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFF3894B5),
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
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
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: 90.0,
                  decoration: const BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.reportCardModel1,
                    updateCallback: () => setState(() {}),
                    child: const ReportCardWidget(
                      reportIcon: Icon(
                        FFIcons.kfilesIcon,
                      ),
                      reportName: 'Diabetes Report',
                      reportUploadDate: 'Uploaded 03/04/2024',
                      numberOfReport: '3 Files',
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: 90.0,
                  decoration: const BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.reportCardModel2,
                    updateCallback: () => setState(() {}),
                    child: const ReportCardWidget(
                      reportIcon: Icon(
                        FFIcons.kfilesIcon,
                      ),
                      reportName: 'Diabetes Report',
                      reportUploadDate: 'Uploaded 03/04/2024',
                      numberOfReport: '3 Files',
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 10.0)),
            ),
          ),
        ],
      ),
    );
  }
}
