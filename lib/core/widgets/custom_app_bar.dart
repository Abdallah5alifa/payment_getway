import 'package:flutter/material.dart';

import '../utils/styles.dart';

AppBar customAppBar({required String title, required BuildContext context} ) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title:  Text(title,
      style: AppStyles.textStyle25  ,
      ),
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),  
        child: Icon(
          Icons.arrow_back,
          size: 30,        
        ),
      ),
    );
  }