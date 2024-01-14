import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zabatny_provider/core/extensions/extentions_on_context.dart';
import '../../../../resources/colors/colors.dart';
import '../../../../resources/styles/app_sizedbox.dart';
import '../../../../widgets/app/app_board.dart';
import '../../../../widgets/app/back_app_bar_no_back_arrow.dart';
import '../../../../widgets/app/status_color_appbar.dart';
import '../../../../widgets/app_list.dart';

class {{variable.pascalCase()}}Screen extends StatefulWidget {
  const {{variable.pascalCase()}}Screen({Key? key}) : super(key: key);

  @override
  State<{{variable.pascalCase()}}Screen> createState() => _{{variable.pascalCase()}}ScreenState();
}

class _{{variable.pascalCase()}}ScreenState extends State<{{variable.pascalCase()}}Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: statusAppBar(context,
            statusBarColor: AppColors.white, brightness: Brightness.dark),
        body: Container());
  }
}
