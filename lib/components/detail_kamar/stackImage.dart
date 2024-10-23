import 'package:flutter/material.dart';

class StackImageDetail extends StatelessWidget {
  const StackImageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.network(
              fit: BoxFit.fill,
              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/82/fe/bb/regent-s-park-hotel.jpg?w=1200&h=-1&s=1'),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: Color.fromRGBO(245, 245, 245, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black, // Shadow color
                    blurRadius: 7, // Blur radius
                    offset: Offset(0, 3),
                  )
                ]),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pesen');
                },
                icon: Icon(Icons.arrow_back)),
          ),
        )
      ],
    );
  }
}
