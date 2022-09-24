import 'dart:ui';

import 'package:flutter/material.dart';

class BuildDestinationItem extends StatelessWidget {
  const BuildDestinationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
            'https://wallpapercave.com/wp/wp4956791.jpg',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
          child: Container(
            alignment: Alignment.center,
            color: Colors.white.withOpacity(.8),
            width: 100,
            height: 30,
            child: Text(
              'Paris',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BuildPlacesItem extends StatelessWidget {
  const BuildPlacesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: 100,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://img.freepik.com/premium-photo/eiffel-tower-paris-france_483040-5463.jpg?w=360',
            ),
          )),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.blue.withOpacity(.8)],
                  tileMode: TileMode.mirror),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Text(
              'Paris',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
