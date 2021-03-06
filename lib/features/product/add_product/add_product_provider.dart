import 'package:desktop_base/app/app_service.dart';
import 'package:desktop_base/database/data/account_data.dart';
import 'package:desktop_base/database/hive/dao/product_dao.dart';
import 'package:desktop_base/database/hive/dao/transaction_dao.dart';
import 'package:desktop_base/database/hive/entity/product/product_entity.dart';
import 'package:desktop_base/database/hive/entity/transaction/transaction_entity.dart';
import 'package:desktop_base/features/product/add_product/add_product_page.dart';
import 'package:desktop_base/helper/converter_helper.dart';
import 'package:desktop_base/helper/dialog_helper.dart';
import 'package:flutter/material.dart';

class AddProductProvider with ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final boxController = TextEditingController();
  final pcsController = TextEditingController();
  final balController = TextEditingController();
  final packController = TextEditingController();
  final noteController = TextEditingController();

  initPage(ProductStatus arg, ProductEntity? product){
    if(arg == ProductStatus.UPDATE) {
      if(product != null) {
      nameController.text = product.name.toString();
      priceController.text = product.price.toString();
      }
    }
  }

  bool validateField() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      return true;
    }
    return false;
  }

  Future<void> addProduct(BuildContext context) async {
    if (validateField()) {
      try {
        addOrUpdateProduct();
        createTransaction();
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
  }

  addOrUpdateProduct(){
    locator<ProductDao>().addOrUpdate(
      ProductEntity(
        id: nameController.text.toLowerCase().toSnakeCase(),
        name: nameController.text.capitalize(),
        price: priceController.text.fromIDRtoInt(),
        dus: int.tryParse(boxController.text) ?? 0,
        bal: int.tryParse(balController.text) ?? 0,
        pack: int.tryParse(packController.text) ?? 0,
        pcs: int.tryParse(pcsController.text) ?? 0,
        createdAt: DateTime.now(),
        updateAt: DateTime.now(),
      ),
    );
  }

  createTransaction(){
    var dus = int.tryParse(boxController.text) ?? 0;
    var bal = int.tryParse(balController.text) ?? 0;
    var pack = int.tryParse(packController.text) ?? 0;
    var pcs = int.tryParse(pcsController.text) ?? 0;
    if(dus!=0 && bal !=0 && pack!=0 && pcs != 0) {
      locator<TransactionDao>().add(
        TransactionEntity(
            name: nameController.text.capitalize(),
            price: priceController.text.fromIDRtoInt(),
            dus: dus,
            bal: bal,
            pack: pack,
            pcs: pcs,
            createdAt: DateTime.now(),
            updateAt: DateTime.now(),
            note: noteController.text,
            account: admin
        ),
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
