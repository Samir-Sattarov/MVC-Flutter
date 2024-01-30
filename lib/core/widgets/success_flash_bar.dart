// ignore_for_file: must_be_immutable, import_of_legacy_library_into_null_safe

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';


class SuccessFlushBar extends Flushbar {
  final String msg;

  SuccessFlushBar(this.msg, {Key? key}) : super(key: key);

  @override
  String? get message => msg;

  @override
  Duration? get duration => const Duration(seconds: 4);

  @override
  Color? get leftBarIndicatorColor => Colors.green;

  @override
  Widget? get icon => const Icon(
        Icons.info_outline,
        size: 28.0,
        color: Colors.green,
      );

  @override
  EdgeInsets get margin => const EdgeInsets.all(8);

//@override
//BorderRadius? get borderRadius => BorderRadius.circular(8);
}
