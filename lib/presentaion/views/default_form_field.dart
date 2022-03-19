import 'package:flutter/material.dart';
import 'package:flutterecom/shared/style/colors.dart';

class DefaultFormField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final ValueChanged<String>? onSubmit;
  final ValueChanged<String>? onChanged;
  final Color bgColor;
  final String hint;
  final bool isDense;
  final bool isPassword;
  final FormFieldValidator<String> validator;
  final String label;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? suffixIconPressed;
  final VoidCallback? onTap;
  final bool isClickable;

  const DefaultFormField(
      {Key? key,
      required this.controller,
      required this.textInputType,
      this.onSubmit,
      this.onChanged,
      required this.validator,
      required this.label,
      required this.prefixIcon,
      this.suffixIcon,
      this.suffixIconPressed,
      this.isPassword = false,
      this.isClickable = true,
      this.hint = '',
      this.onTap,
      this.isDense = false,
      this.bgColor = MyColors.scaffoldBackgroundColorMain})
      : super(key: key);

  @override
  State<DefaultFormField> createState() => _DefaultFormFieldState();
}

class _DefaultFormFieldState extends State<DefaultFormField> {
  @override
  Widget build(BuildContext context) {
    const InputDecorationTheme defaultTheme = InputDecorationTheme();

    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.bgColor,
        hintText: widget.hint,
        labelText: widget.label,
        //hintText
        prefixIcon: Icon(
          widget.prefixIcon,
          color: MyColors.iconsColor,
        ),
        suffixIcon: widget.suffixIcon != null
            ? IconButton(
                icon: widget.isDense
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Icon(
                          widget.suffixIcon,
                          color: MyColors.iconsColor,
                        ),
                      )
                    : Icon(
                        widget.suffixIcon,
                        color: MyColors.iconsColor,
                      ),
                onPressed:
                    widget.suffixIcon != null ? widget.suffixIconPressed : null,
              )
            : null,
        enabledBorder: widget.isDense
            ? const OutlineInputBorder(
                // width: 0.0 produces a thin "hairline" border
                borderSide: BorderSide(color: Colors.white, width: 0.0),
              )
            : defaultTheme.enabledBorder,
        border: OutlineInputBorder(
          borderRadius: widget.isDense
              ? BorderRadius.circular(15.0)
              : BorderRadius.circular(5.0),
        ),
        isDense: widget.isDense, // Added this
        contentPadding: widget.isDense
            ? const EdgeInsets.all(8)
            : defaultTheme.contentPadding, // Added this
      ),
      onFieldSubmitted: widget.onSubmit,
      onChanged: widget.onChanged,
      validator: widget.validator,
      keyboardType: widget.textInputType,
      obscureText: widget.isPassword,
      onTap: widget.onTap,
      enabled: widget.isClickable,
    );
  }
}
