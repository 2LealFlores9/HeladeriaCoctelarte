import '/flutter_flow/flutter_flow_util.dart';
import 'buscar_heladospor_categoria_widget.dart'
    show BuscarHeladosporCategoriaWidget;
import 'package:flutter/material.dart';

class BuscarHeladosporCategoriaModel
    extends FlutterFlowModel<BuscarHeladosporCategoriaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();

    tabBarController?.dispose();
  }
}
