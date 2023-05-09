import 'package:flutter/material.dart';
import 'package:shopping_shep_flutter/presentations/widgets/app_bar_widget.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(
        nameScreen: 'Notificaciones',
      ),
      body: SizedBox(
        child: Text("No hay notificaciones"),
      ),
    );
  }
}