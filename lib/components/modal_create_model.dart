import '/components/additemform_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_create_widget.dart' show ModalCreateWidget;
import 'package:flutter/material.dart';

class ModalCreateModel extends FlutterFlowModel<ModalCreateWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for additemform component.
  late AdditemformModel additemformModel;

  @override
  void initState(BuildContext context) {
    additemformModel = createModel(context, () => AdditemformModel());
  }

  @override
  void dispose() {
    additemformModel.dispose();
  }
}
