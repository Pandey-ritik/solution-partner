import 'package:flutter/material.dart';
import 'package:solution_parnter/Content/color.dart';

import 'gradient_text.dart';


Widget customtextformfield({
  bool ? obsure,
  bool ? readOnly,
  Color? hintTextColor,
  Color? bottomLineColor,
  String? hinttext,
  String? label,
  TextEditingController? controller,
  Widget? suffixIcon,
  bool showPassword = false,
  TextInputType? key_type,
  bool? textCapitalization,
  Widget? newIcon,
  Function()? callback,
  var validator,
  int? maxLength,
  double? horizontalcontentPadding,
  double? verticalContentPadding,
  Gradient? gradient,
  InputBorder? border,
  bool ? enabled,

}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: TextFormField(
        textCapitalization: textCapitalization == true?TextCapitalization.characters:TextCapitalization.words,
        onTap: callback,
        readOnly: readOnly==null?false:readOnly,
        enabled: enabled,
        cursorHeight: 20,
        cursorColor: hintTextColor == null ? appcolor.black : hintTextColor,
        validator: validator,
        keyboardType: key_type,
        controller: controller,
        obscureText: showPassword,
        maxLength: maxLength,
        style: TextStyle(
          decorationStyle: TextDecorationStyle.dotted,
          decoration: TextDecoration.none,
          color: hintTextColor == null ? appcolor.black : hintTextColor,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          // label: Row(
          //   children: [
          //     Text(hinttext.toString(),style: TextStyle(color: Colors.black,fontSize: 13),),
          //     Text(label==null?'':label.toString(),style: TextStyle(color: appcolor.blueColor),)
          //   ],
          // ),
          counter: Offstage(),
          alignLabelWithHint: false,
          contentPadding:
          EdgeInsets.only(
            bottom: horizontalcontentPadding == null ? 0:horizontalcontentPadding,top: verticalContentPadding == null ? 0 : verticalContentPadding,),
          // symmetric(
          //   horizontal:
          //       horizontalcontentPadding == null ? 0 : horizontalcontentPadding,
          //   vertical: verticalContentPadding == null ? 0 : verticalContentPadding,
          // ),
          suffixIcon:
          InkWell(
            onTap: callback,
            child: gradient == null
                ? Container(
                    child: GradientText(
                      gradient:appcolor.gradient,
                      widget: showPassword == false ? newIcon : newIcon,
                    ),
                  )
                : Container(
                    child: newIcon,
                  ),
          ),
          hintText: hinttext,
          hintStyle: TextStyle(
            color: hintTextColor == null ? Colors.black :  hintTextColor,
            fontSize: 15,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: bottomLineColor == null
                  ? appcolor.borderColor
                  : bottomLineColor,
            ),
          ),
          focusedBorder:border==null? UnderlineInputBorder(
            borderSide: BorderSide(
              color: hintTextColor == null ? appcolor.blueColor : hintTextColor,
            ),
          ):border,
          border: InputBorder.none,
        ),
      ),
    ),
  );
}
