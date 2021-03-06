// ignore_for_file: constant_identifier_names
import 'package:desktop_base/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';

//---------------<Toast>-----------------
class Toast {
  static show(String message) {
    // EasyLoading.showToast(message);
  }
}

//---------------<Loading Dialog>-----------------
class Loading {
  static show(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => const LoadingDialog());
  }

  static hide(BuildContext context) => Navigator.of(context, rootNavigator: true).pop();
}

//---------------<Custom Dialog>-----------------
enum TypeDialog {
  FAILED,
  SUCCESS,
  WARNING,
  SOON,
}

class AppDialog {
  static show(
    {required BuildContext context,
      required TypeDialog typeDialog,
    String? title,
    required String message,
    required VoidCallback onPress,
    bool? dismissible,
  }) {
    switch (typeDialog) {
      case TypeDialog.FAILED:
        return showDialog(
          barrierDismissible: dismissible ?? true,
          context: context,
          builder: (context) => DialogAlert.error(
            title: title ?? 'Gagal',
            description: message,
            onConfirm: onPress,
          ),
        );
      case TypeDialog.SUCCESS:
        return showDialog(
          barrierDismissible: dismissible ?? false,
          context: context,
          builder: (context) => DialogAlert.success(
            title: title ?? 'Berhasil',
            description: message,
            onConfirm: onPress,
          ),
        );
      case TypeDialog.WARNING:
        return showDialog(
          barrierDismissible: dismissible ?? true,
          context: context,
          builder: (context) => DialogAlert.warning(
            title: title ?? 'Peringatan!',
            description: message,
            onConfirm: onPress,
            onCancel: () => Navigator.of(context, rootNavigator: true).pop(),
          ),
        );
      case TypeDialog.SOON:
        return showDialog(
          barrierDismissible: dismissible ?? true,
          context: context,
          builder: (context) => const SoonDialog(),
        );
    }
  }

  static close(BuildContext context) => Navigator.of(context, rootNavigator: true).pop();
}
