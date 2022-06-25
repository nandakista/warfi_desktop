import 'package:desktop_base/app/app_service.dart';
import 'package:desktop_base/database/drift/drift_db.dart';
import 'package:desktop_base/helper/dialog_helper.dart';
import 'package:flutter/material.dart';

class AddProductProvider with ChangeNotifier {
  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final boxController = TextEditingController();
  final pcsController = TextEditingController();
  final balController = TextEditingController();
  final packController = TextEditingController();

  Future<void> addProduct(BuildContext context) async {
    try {
      await locator<AppDatabase>()
          .insertProduct(ProductEntityCompanion.insert(
              name: nameController.text,
              price: int.tryParse(priceController.text) ?? 0,
              box: int.tryParse(boxController.text) ?? 0,
              bal: int.tryParse(balController.text) ?? 0,
              pack: int.tryParse(packController.text) ?? 0,
              pcs: int.tryParse(pcsController.text) ?? 0))
          .then(
        (value) {
          AppDialog.show(
            context: context,
            typeDialog: TypeDialog.SUCCESS,
            message: 'Produk berhasil ditambahkan',
            onPress: () {
              AppDialog.close(context);
              onClose();
              Navigator.pop(context);
            },
          );
        },
      );
      notifyListeners();
    } catch (e) {
      AppDialog.show(
        context: context,
        typeDialog: TypeDialog.FAILED,
        message: 'Error : $e',
        onPress: () => AppDialog.close(context),
      );
    }
  }

  void onClose() {
    nameController.clear();
    priceController.clear();
    boxController.clear();
    balController.clear();
    packController.clear();
    pcsController.clear();
  }
}
