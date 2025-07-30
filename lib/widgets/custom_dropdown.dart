import 'package:flutter/material.dart';
import 'package:ovenly_pizza_app/constants/constants.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String selectedLanguage = "English";
  final List<String> languages = [
    "English",
    "Spanish",
    "French",
    "German",
    "Italian",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      decoration: BoxDecoration(
        color: Constants.whiteTone,
        borderRadius: Constants.borderRadius,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedLanguage,
          icon: const Icon(Icons.keyboard_arrow_down),
          iconDisabledColor: Constants.greyTone,
          iconEnabledColor: Colors.grey[700],
          style: const TextStyle(color: Constants.greyTone,fontFamily: 'poppins'),
          dropdownColor: Colors.white,
          borderRadius: BorderRadius.circular(12),
          onChanged: (String? newValue) {
            setState(() {
              selectedLanguage = newValue!;
            });
          },
          items: languages.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}