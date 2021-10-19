import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class InputFormField extends StatefulWidget {
  final String? hint;
  final String? Function(String?)? validator;
  final Function? onPressed;
  final bool? secure;
  final bool? isNumber;
  final Function(String?)? onSave;
  final int? maxLines;
  final IconData? icon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final bool? isNext;
  final int? maxLength;
  final String? upperText;
  final bool? hasLabel;
  final Color? textColor;
  final bool? isRTL;
  final double? horizontalMargin;
  final bool? multiLine;
  final Color? fillColor;
  final bool hasBorder;
  final AutovalidateMode? autoValidateMode;
  const InputFormField({Key? key,this.isNumber = false,this.controller,this.maxLines = 1,this.onPressed,this.onSave,this.secure = false,this.hint,this.validator, this.onChanged, this.suffixIcon, this.onTap, this.isNext = true, this.maxLength, this.upperText, this.hasLabel = false, this.isRTL = false, this.icon, this.textColor, this.horizontalMargin = 0, this.multiLine = false, this.fillColor, this.hasBorder = true, this.autoValidateMode,}) : super(key: key);

  @override
  _InputFormFieldState createState() => _InputFormFieldState();
}

class _InputFormFieldState extends State<InputFormField> {
  final BorderRadius borderRadius = BorderRadius.circular(10);
  bool? _showPassword;
  @override
  void initState() {
    _showPassword = widget.secure;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: widget.horizontalMargin!),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(widget.upperText != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(widget.upperText!,style: const TextStyle(fontWeight: FontWeight.w900, color: kPrimaryColor),),
              ),
            TextFormField(
              autovalidateMode: widget.autoValidateMode,
              controller: widget.controller,
              obscureText: _showPassword!,
              onSaved: widget.onSave,
              onChanged: widget.onChanged,
              maxLength: widget.maxLength,
              textInputAction: widget.multiLine! ? TextInputAction.newline : widget.isNext! ? TextInputAction.next : TextInputAction.done,
              keyboardType: widget.multiLine! ? TextInputType.multiline : widget.isNumber! ? TextInputType.number : TextInputType.emailAddress,
              cursorColor: kPrimaryColor,
              validator: widget.validator,
              maxLines: widget.maxLines,
              minLines: 1,
              enabled: widget.onTap == null,
              buildCounter: (context, {int? currentLength, bool? isFocused, maxLength}) => null,style: TextStyle(color: widget.textColor),
              decoration: InputDecoration(
                filled: true,
                hintStyle: TextStyle(color: widget.textColor ?? Colors.black45,fontSize: 14),
                labelStyle: TextStyle(color: widget.textColor ?? kAccentColor),
                fillColor: widget.fillColor ?? Colors.transparent,
                counterStyle: const TextStyle(fontSize: 0,color: Colors.transparent),
                prefixIcon: widget.icon == null ? null : Icon(widget.icon,color: kPrimaryColor,size: 18,),
                suffixIcon: widget.suffixIcon != null ? widget.suffixIcon : widget.secure! ? IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: Icon(
                    _showPassword! ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                    color: kPrimaryColor,
                    size: 18,
                  ),
                  onPressed: ()=> setState(()=> _showPassword = !_showPassword!),
                ) : null,
                hintText: widget.hasLabel! ? null : widget.hint,
              labelText: widget.hasLabel! ? widget.hint : null,
                contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: widget.maxLines == 1 && widget.icon == null ? 0 : 15),
                enabledBorder: getBorder(Colors.black26),
                focusedBorder: getBorder(kPrimaryColor),
                errorBorder: getBorder(Colors.red),
                focusedErrorBorder: getBorder(kPrimaryColor),
                disabledBorder: getBorder(Colors.black26),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputBorder getBorder(Color color) {
    if(widget.hasBorder) {
      return OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: BorderSide(color: color),
      );
    } else {
      return UnderlineInputBorder(
        borderRadius: borderRadius,
        borderSide: BorderSide(color: color),
      );
    }
  }

}
