import '/flutter_flow/flutter_flow_util.dart';
import 'add_widget.dart' show AddWidget;
import 'package:flutter/material.dart';

class AddModel extends FlutterFlowModel<AddWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for itemname widget.
  FocusNode? itemnameFocusNode;
  TextEditingController? itemnameTextController;
  String? Function(BuildContext, String?)? itemnameTextControllerValidator;
  String? _itemnameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }
    if (val.length > 30) {
      return 'Maximum 30 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {
    itemnameTextControllerValidator = _itemnameTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    itemnameFocusNode?.dispose();
    itemnameTextController?.dispose();
  }
}
