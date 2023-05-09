import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text("Mujeres"),
          onTap: () {
            
          },
        ),
        ListTile(
          title: Text("Hombres"),
          onTap: () {
            
          },
        ),
        ListTile(
          title: Text("Niños"),
          onTap: () {
            
          },
        ),
        ListTile(
          title: Text("Accesorios"),
          onTap: () {
            
          },
        ),
      ],
    );
  }
}