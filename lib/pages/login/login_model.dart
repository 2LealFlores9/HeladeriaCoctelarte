import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

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
