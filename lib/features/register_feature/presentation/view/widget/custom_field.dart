import 'package:flutter/material.dart';
import '../../../../../core/utils/colors.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key, required this.icon, required this.label,
  });
  final IconData icon ;
  final String label ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(  icon , color: Colors.grey,),
        const SizedBox(width: 10,),
        SizedBox(
          width: 220,
          child: TextFormField(
            cursorColor: primaryColor,
            cursorHeight: 20 ,
            decoration: InputDecoration(
              labelStyle: const TextStyle(color: Colors.grey  , fontSize: 14),
              labelText: label,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder:  OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade400,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
