import '/flutter_flow/flutter_flow_util.dart';
import 'menu_principal_widget.dart' show MenuPrincipalWidget;
import 'package:flutter/material.dart';

class MenuPrincipalModel extends FlutterFlowModel<MenuPrincipalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
