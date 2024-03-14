import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPersonalized extends StatelessWidget {
  const InputPersonalized({
    super.key,
    required this.obscure,
    required this.width,
    this.image,
    this.onTap,
    this.onEditingComplete,
    this.controller,
    this.labelText,
    this.hintText,
    this.validator,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.keyboardType,
    this.maxLength,
    this.inputFormatters,
    this.onChanged,
    this.obscureText = false,
    this.height = 60.0,
  });
  final Widget? image;
  final double height;
  final double width;
  final Function()? onTap;
    final Function()? onEditingComplete;
  final bool obscure;
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final bool obscureText;
  final TextInputType? keyboardType;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(108, 255, 255, 255),
        border: Border.all(color: const Color.fromARGB(197, 208, 208, 208), width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.all(0.0), child: image),
            Container(width: 12),
            SizedBox(
              width: kIsWeb ? width - 80 : width - 40,
              height: height,
              child: Center(
                child: TextFormField(
                  maxLength: maxLength,
                  keyboardType: keyboardType,
                  obscureText: obscureText,
                  autovalidateMode: autovalidateMode,
                  controller: controller,
                  style: const TextStyle(fontFamily: 'Nunito', color: Color.fromARGB(255, 113, 113, 113), fontSize: 15),
                  inputFormatters: inputFormatters,
                  onEditingComplete: onEditingComplete,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: hintText,
                    labelText: labelText,
                    labelStyle: const TextStyle(fontFamily: 'Nunito', color: Color.fromARGB(255, 132, 132, 132), fontSize: 15),
                  ),
                  validator: validator,
                  onChanged: onChanged,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class InputPersonalizedPopUp extends StatelessWidget {
  const InputPersonalizedPopUp({
    super.key,
    required this.obscure,
    required this.width,
    this.image,
    this.onTap,
    this.onEditingComplete,
    this.controller,
    this.labelText,
    this.hintText,
    this.validator,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.keyboardType,
    this.maxLength,
    this.inputFormatters,
    this.onChanged,
    this.obscureText = false,
    this.height = 60.0,
  });
  final Widget? image;
  final double height;
  final double width;
  final Function()? onTap;
    final Function()? onEditingComplete;
  final bool obscure;
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final bool obscureText;
  final TextInputType? keyboardType;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromARGB(108, 213, 213, 213),
        border: Border.all(color: const Color.fromARGB(197, 225, 225, 225), width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.all(0.0), child: image),
            Container(width: 12),
            SizedBox(
              width: kIsWeb ? width - 80 : width - 40,
              height: height,
              child: Center(
                child: TextFormField(
                  maxLength: maxLength,
                  keyboardType: keyboardType,
                  obscureText: obscureText,
                  autovalidateMode: autovalidateMode,
                  controller: controller,
                  style: const TextStyle(fontFamily: 'Nunito', color: Colors.black, fontSize: 15),
                  inputFormatters: inputFormatters,
                  onEditingComplete: onEditingComplete,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: hintText,
                    labelText: labelText,
                    labelStyle: const TextStyle(fontFamily: 'Nunito', color: Color.fromARGB(255, 194, 194, 194), fontSize: 15),
                  ),
                  validator: validator,
                  onChanged: onChanged,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
