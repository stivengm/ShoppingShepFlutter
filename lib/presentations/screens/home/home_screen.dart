import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_shep_flutter/config/theme/app_theme.dart';
import 'package:shopping_shep_flutter/presentations/screens/home/widgets/home_skeleton_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super( key: key );

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const HomeSkeletonWidget(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.shifting,
        selectedItemColor: AppTheme.primaryColor,
        items: [
          BottomNavigationBarItem(
            label: 'Tienda',
            tooltip: "Tienda",
            icon: SvgPicture.asset('assets/clothes-hanger.svg', width: 30.0, colorFilter: const ColorFilter.mode(AppTheme.greyColor, BlendMode.srcIn)),
            activeIcon: SvgPicture.asset('assets/clothes-hanger.svg', width: 30.0, colorFilter: const ColorFilter.mode(AppTheme.primaryColor, BlendMode.srcIn)),
          ),
          BottomNavigationBarItem(
            label: 'Categorías',
            tooltip: 'Categorías',
            icon: SvgPicture.asset('assets/categories.svg', colorFilter: const ColorFilter.mode(AppTheme.greyColor, BlendMode.srcIn)),
            activeIcon: SvgPicture.asset('assets/categories.svg', colorFilter: const ColorFilter.mode(AppTheme.primaryColor, BlendMode.srcIn)),
          ),
          BottomNavigationBarItem(
            label: 'Guardado',
            tooltip: 'Guardado',
            icon: SvgPicture.asset('assets/bookmark.svg', width: 35, colorFilter: const ColorFilter.mode(AppTheme.greyColor, BlendMode.srcIn)),
            activeIcon: SvgPicture.asset('assets/bookmark.svg', width: 35, colorFilter: const ColorFilter.mode(AppTheme.primaryColor, BlendMode.srcIn)),
          ),
          BottomNavigationBarItem(
            label: 'Carrito',
            tooltip: 'Carrito',
            icon: SvgPicture.asset('assets/cart.svg', colorFilter: const ColorFilter.mode(AppTheme.greyColor, BlendMode.srcIn)),
            activeIcon: SvgPicture.asset('assets/cart.svg', colorFilter: const ColorFilter.mode(AppTheme.primaryColor, BlendMode.srcIn)),
          ),
          BottomNavigationBarItem(
            label: 'Cuenta',
            tooltip: 'Cuenta',
            icon: SvgPicture.asset('assets/account.svg', width: 27.0, colorFilter: const ColorFilter.mode(AppTheme.greyColor, BlendMode.srcIn)),
            activeIcon: SvgPicture.asset('assets/account.svg', width: 27.0, colorFilter: const ColorFilter.mode(AppTheme.primaryColor, BlendMode.srcIn)),
          )
        ],
      ),
    );
  }
}