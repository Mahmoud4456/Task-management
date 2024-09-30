import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Card(
          // Define the shape of the card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          // Define how the card's content should be clipped
          clipBehavior: Clip.antiAliasWithSaveLayer,
          // Define the child widget of the card
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Add padding around the row widget
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Add an image widget to display an image
                     Image.asset( "assets/images/reading.webp",
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    // Add some spacing between the image and the text
                    Container(width: 20),
                    // Add an expanded widget to take up the remaining horizontal space
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Add some spacing between the top of the card and the title
                          Container(height: 5),
                          // Add a title widget
                          const Text(
                            "Cards Title 1",
                            style:TextStyle(color: Colors.blueAccent , fontSize: 22)
                          ),
                          // Add some spacing between the title and the subtitle
                          Container(height: 5),
                          // Add a subtitle widget
                          Text(
                            "Sub title",
                            style: TextStyle(color: Colors.grey[600] , fontSize: 16),
                          ),
                          // Add some spacing between the subtitle and the text
                          Container(height: 10),
                          // Add a text widget to display some text
                          const Text(
                            "MyStringsSample.card_text ",
                            maxLines: 2,
                            style: TextStyle(color: Colors.grey , ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
