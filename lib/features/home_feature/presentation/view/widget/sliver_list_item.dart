import 'package:flutter/material.dart';

class SliverListItem extends StatelessWidget {
  const SliverListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 260 ,
            padding: const EdgeInsets.symmetric(horizontal: 25 , vertical: 10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Text("data form user to task   " , style: TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
              maxLines: 2,
            ),
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.check_circle_outline)),
        ],
      ),
    );
  }
}
