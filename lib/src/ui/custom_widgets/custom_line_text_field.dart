  import 'package:flutter/material.dart';
  import 'package:domainchecker/src/resources/app_colors.dart';

  class CustomLineTextField extends StatelessWidget {
    final String hint;
    final IconData icon;

    CustomLineTextField({
      key,
      this.hint,
      this.icon,
    }): super(key: key);

@override
  Widget build(BuildContext context) {
  
    return TextField(
      style: TextStyle(color: AppColors.white),
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(
          icon,
          color: AppColors.white,
        ),
      ),
    );
  }
  }
