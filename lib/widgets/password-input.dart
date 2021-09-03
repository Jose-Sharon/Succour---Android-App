import 'package:flutter/material.dart';
import 'package:succour/pallete.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key key,
    @required this.icon,
    @required this.hint,
    this.inputType,
    this.inputAction,
    this.myController,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final TextEditingController myController;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.grey[800].withOpacity(0.6),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: TextFormField(
            validator: (val){
              return val.length < 6 ? "   Enter Password 6+ characters" : null;
            },
            controller: myController,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  icon,
                  size: 28,
                  color: kWhite,
                ),
              ),
              hintText: hint,
              hintStyle: kBodyText,
            ),
            obscureText: true,
            style: kBodyText,
            keyboardType: inputType,
            textInputAction: inputAction,
          ),
        ),
      ),
    );
  }
}