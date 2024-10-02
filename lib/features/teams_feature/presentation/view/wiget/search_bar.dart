import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextFormField(
        cursorColor: Colors.blueGrey,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search , color: primaryColor,),
          labelText: "Search",
          labelStyle: const TextStyle(color: grey ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(
              color: primaryColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(
              color: grey,
            ),
          ),
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: const BorderSide(
              color: grey,
            ),
          )  ,
        ),
      ),
    );
  }
}
