import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String? nameScreen;
  final bool? centerTitle;
  final List<Widget>? actions;
  const AppBarWidget(
      {Key? key, this.nameScreen, this.actions, this.centerTitle = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(nameScreen ?? 'state.nameScreen'),
      centerTitle: centerTitle,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
