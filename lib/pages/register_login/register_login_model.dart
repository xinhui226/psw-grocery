import '/flutter_flow/flutter_flow_util.dart';
import 'register_login_widget.dart' show RegisterLoginWidget;
import 'package:flutter/material.dart';

class RegisterLoginModel extends FlutterFlowModel<RegisterLoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
