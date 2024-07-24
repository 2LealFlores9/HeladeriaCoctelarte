import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  // State field(s) for txtPass widget.
  FocusNode? txtPassFocusNode;
  TextEditingController? txtPassTextController;
  late bool txtPassVisibility;
  String? Function(BuildContext, String?)? txtPassTextControllerValidator;
  // State field(s) for txtPassC widget.
  FocusNode? txtPassCFocusNode;
  TextEditingController? txtPassCTextController;
  late bool txtPassCVisibility;
  String? Function(BuildContext, String?)? txtPassCTextControllerValidator;
  // State field(s) for txtCorreoI widget.
  FocusNode? txtCorreoIFocusNode;
  TextEditingController? txtCorreoITextController;
  String? Function(BuildContext, String?)? txtCorreoITextControllerValidator;
  // State field(s) for txtPassI widget.
  FocusNode? txtPassIFocusNode;
  TextEditingController? txtPassITextController;
  late bool txtPassIVisibility;
  String? Function(BuildContext, String?)? txtPassITextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtPassVisibility = false;
    txtPassCVisibility = false;
    txtPassIVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtPassFocusNode?.dispose();
    txtPassTextController?.dispose();

    txtPassCFocusNode?.dispose();
    txtPassCTextController?.dispose();

    txtCorreoIFocusNode?.dispose();
    txtCorreoITextController?.dispose();

    txtPassIFocusNode?.dispose();
    txtPassITextController?.dispose();
  }
}
