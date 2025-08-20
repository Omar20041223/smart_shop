import 'package:flutter/material.dart';

import '../../../helpers/app_colors.dart';
import '../../../helpers/app_styles.dart';
class HomeViewSearch extends StatelessWidget {
  const HomeViewSearch({super.key, this.onChanged, this.readOnly, this.onTap});
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final bool? readOnly;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 12),
      child: TextFormField(
        onChanged: onChanged,
        readOnly: readOnly ?? false,
        onTap: onTap,
        decoration: const InputDecoration(
          filled: true,
          fillColor: Color(0xffF0F2F5),
          prefixIcon: Icon(Icons.search_sharp,color: AppColors.customGrey,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          hintText: 'Search',
          hintStyle: AppStyles.font16CustomGreyW400,
        ),
      ),
    );
  }
}
