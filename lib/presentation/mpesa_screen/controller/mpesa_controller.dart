import 'package:flutter/cupertino.dart';

import '/core/app_export.dart';
import '../models/mpesa_model.dart';

class MpesaController extends GetxController {
  Rx<MpesaModel> mPesaModelObj = MpesaModel().obs;

  final amountInputController = TextEditingController();
  final phoneInputController = TextEditingController();

  bool transactionInProgress = false;

  get groupFifteenController => null;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
