import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/file_component/file_component_widget.dart';
import '/components/medication_component/medication_component_widget.dart';
import '/components/vital_component/vital_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart' as badges;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.getName = await GetUserInfoCall.call();
      if ((_model.getName?.succeeded ?? true)) {
        setState(() {
          _model.userName = GetUserInfoCall.name(
            (_model.getName?.jsonBody ?? ''),
          );
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Something Went Wrong!!',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: const Color(0xFFEFF2F5),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<UsersRecord> homePageUsersRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final homePageUsersRecord = homePageUsersRecordList.isNotEmpty
            ? homePageUsersRecordList.first
            : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFFEFF2F5),
            body: SafeArea(
              top: true,
              child: Visibility(
                visible: _model.isUserData,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.22,
                          decoration: const BoxDecoration(
                            color: Color(0xFF3894B5),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 10.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        AuthUserStreamWidget(
                                          builder: (context) => Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.1,
                                            height: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.1,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: CachedNetworkImage(
                                              fadeInDuration:
                                                  const Duration(milliseconds: 500),
                                              fadeOutDuration:
                                                  const Duration(milliseconds: 500),
                                              imageUrl: currentUserPhoto,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        badges.Badge(
                                          badgeContent: Text(
                                            '1',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily,
                                                  color: Colors.white,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily),
                                                ),
                                          ),
                                          showBadge: true,
                                          shape: badges.BadgeShape.circle,
                                          badgeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          elevation: 4.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 5.0, 5.0, 5.0),
                                          position:
                                              badges.BadgePosition.topEnd(),
                                          animationType:
                                              badges.BadgeAnimationType.scale,
                                          toAnimate: true,
                                          child: Icon(
                                            FFIcons.kalarm,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 30.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    'Good Afternoon, ',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily),
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      currentUserDisplayName,
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily,
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          final typeToRender =
                              functions.typeToRender().map((e) => e).toList();
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(typeToRender.length,
                                (typeToRenderIndex) {
                              final typeToRenderItem =
                                  typeToRender[typeToRenderIndex];
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (FFAppConstants.Vital ==
                                      getJsonField(
                                        typeToRenderItem,
                                        r'''$.task''',
                                      ))
                                    Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.22,
                                      decoration: const BoxDecoration(),
                                      child: VitalComponentWidget(
                                        key: Key(
                                            'Key3hm_${typeToRenderIndex}_of_${typeToRender.length}'),
                                      ),
                                    ),
                                  if (FFAppConstants.File ==
                                      getJsonField(
                                        typeToRenderItem,
                                        r'''$.task''',
                                      ))
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.3,
                                      decoration: const BoxDecoration(),
                                      child: FileComponentWidget(
                                        key: Key(
                                            'Keyusg_${typeToRenderIndex}_of_${typeToRender.length}'),
                                      ),
                                    ),
                                  if (FFAppConstants.Medication ==
                                      getJsonField(
                                        typeToRenderItem,
                                        r'''$.task''',
                                      ))
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.3,
                                        decoration: const BoxDecoration(),
                                        child: MedicationComponentWidget(
                                          key: Key(
                                              'Keyfeh_${typeToRenderIndex}_of_${typeToRender.length}'),
                                        ),
                                      ),
                                    ),
                                ],
                              );
                            }),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
