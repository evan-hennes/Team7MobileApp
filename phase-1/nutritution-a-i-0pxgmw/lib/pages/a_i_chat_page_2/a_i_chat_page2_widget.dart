import '/a_i_chats/ai_chat_component/ai_chat_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'a_i_chat_page2_model.dart';
export 'a_i_chat_page2_model.dart';

class AIChatPage2Widget extends StatefulWidget {
  const AIChatPage2Widget({super.key});

  static String routeName = 'AIChatPage-2';
  static String routePath = '/aIChatPage2';

  @override
  State<AIChatPage2Widget> createState() => _AIChatPage2WidgetState();
}

class _AIChatPage2WidgetState extends State<AIChatPage2Widget> {
  late AIChatPage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AIChatPage2Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // showProgressDots
      _model.aiResponding = false;
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 100.0,
              borderWidth: 1.0,
              fillColor: Colors.black,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed(DashboardPageWidget.routeName);
              },
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(-0.4, -1.0),
            child: Text(
              'AI Assistant',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Inter Tight',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/blur_bg@1x.png',
                ).image,
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: wrapWithModel(
                model: _model.aiChatComponentModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: AiChatComponentWidget(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
