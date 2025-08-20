import 'package:flutter/material.dart';
import 'package:shop_smart/helpers/app_colors.dart';
import 'package:shop_smart/views/widgets/cart_view/cart_view_body.dart';
import 'package:shop_smart/views/widgets/home_view/home_view_body.dart';
import 'package:shop_smart/views/widgets/profile/profile_body.dart';
import 'package:shop_smart/views/widgets/search/search_body.dart';

import '../helpers/app_assets.dart';
import '../helpers/app_styles.dart';

class WrapperView extends StatefulWidget {
  const WrapperView({super.key});

  @override
  State<WrapperView> createState() => _WrapperViewState();
}

class _WrapperViewState extends State<WrapperView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> body = [
        HomeViewBody(onSearchTap: (){
         setState(() {
           _currentIndex = 1;
         });
       },),
       const SearchBody(),
      const SizedBox(),
       const CartViewBody(),
      const ProfileBody(),
    ];
    List<AppBar> appBar = [
      _homeViewAppBar(
        onPressed: () {
          setState(() {
            _currentIndex = 3;
          });
        },
      ),
      _appBarWithTitle(title: 'Shop'),
      _appBarWithTitle(title: 'WishList'),
      _appBarWithTitle(title: 'Cart'),
      _appBarWithTitle(title: 'Profile'),
    ];
    return Scaffold(
      appBar: appBar[_currentIndex],
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.customBlack,
        unselectedItemColor: AppColors.customGrey,
        selectedLabelStyle: AppStyles.font12CustomBlackW500,
        unselectedLabelStyle: AppStyles.font12CustomGreyW500,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Shop',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AppAssets.cartIcon, height: 24, width: 24,color: _currentIndex == 3 ? AppColors.customBlack : AppColors.customGrey,),
            label: 'Cart',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

AppBar _homeViewAppBar({required void Function()? onPressed}) {
  return AppBar(
    backgroundColor: Colors.white,
    title: const Text('ShopSmart', style: AppStyles.font18CustomBlackW700),
    centerTitle: true,
    leading: const Icon(Icons.menu),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: IconButton(
          icon: Image.asset(AppAssets.cartIcon, height: 24, width: 24),
          onPressed: onPressed,
        ),
      ),
    ],
  );
}

AppBar _appBarWithTitle({required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    title:  Text(title, style: AppStyles.font18CustomBlackW700),
    centerTitle: true,
  );
}
