import 'package:flutter/material.dart';
import 'package:home_x/core/util/styles.dart';

Widget CustomTextFormField({
  String? hintText,
  String? lableText,
  Icon? prefixIcon,
  IconData? suffixIcon,
  TextEditingController? controller ,
  TextInputType? inputType ,
  String? Function(String?)? validator,
  String? Function(String?)? onChange,
  //Function()? suffixPressed,
  
}) {
  return Center(
    child: TextFormField(
    //  onTap: suffixPressed,
    onChanged: onChange,
      keyboardType:inputType,
      controller: controller,
      validator: validator,
      onTapOutside:(event) {
          FocusManager.instance.primaryFocus?.unfocus();
        } ,
      decoration: InputDecoration(
        
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        enabled: true,
        constraints: BoxConstraints(maxWidth: 330, maxHeight: double.infinity),
        labelStyle: StylesApp.labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20) ,),
        prefixIcon: prefixIcon,
        prefixIconColor: Color(0xff8B78FF),
        suffixIconColor:  Color(0xff8B78FF),
        suffixIcon: Icon(suffixIcon),
        prefixStyle:StylesApp.hintText,
        labelText: lableText,
        
      ),
    ),
  );
}
