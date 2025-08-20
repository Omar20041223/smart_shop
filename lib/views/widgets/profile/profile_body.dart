import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_smart/helpers/app_assets.dart';
import 'package:shop_smart/helpers/app_styles.dart';

import '../../../helpers/routes.dart';
class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40,),
            const CircleAvatar(
              radius: 128,
              backgroundImage: AssetImage(AppAssets.profileImg),

            ),
            const SizedBox(height: 12,),
            const Text('Mo ra',style: AppStyles.font16CustomBlackW500),
            const Text('OmarMohamed@email.com',style: AppStyles.font14CustomGreyW400),
            const SizedBox(height: 24,),
            const Spacer(),
            InkWell(
              onTap: (){
                GoRouter.of(context).pushReplacement(Routes.loginView);
              },
              child: Container(
                height: 40,
                width: 87,
                decoration: BoxDecoration(
                  color:  Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text('Log Out', style: TextStyle(fontSize: 14, color: Color(0xff1C0D0D),fontWeight: FontWeight.w700)),
                ),
              ),
            ),
            const SizedBox(height: 16,)
          ],
        ),
      );
  }
}
