import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.etInput,
  }) : super(key: key);

  final TextEditingController etInput;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: etInput,
      decoration: InputDecoration(hintText: 'Masukkan Suhu Dalam Celcius'),
      keyboardType: TextInputType.numberWithOptions(
        decimal: true,
        signed: false,
      ),
    );
  }
}
