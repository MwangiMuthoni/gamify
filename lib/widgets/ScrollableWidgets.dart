import 'package:flutter/material.dart';

import '../data.dart';

class ScrollableGameWidget extends StatelessWidget {
  final double _height;
  final double _width;
  final bool showTitle;
  final List<Game> _gamesData;
  ScrollableGameWidget(
      this._height, this._gamesData, this._width, this.showTitle);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView(
physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: _gamesData.map((_game) {
            return Container(
              height: _height,
              width: _width*0.30,
              padding: EdgeInsets.only(right: _width*0.03),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: _height * 0.70,
                    width: _width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                            image: NetworkImage(_game.coverImage.url))),
                  ),
                showTitle ? Text(
                    _game.title,
                    maxLines: 2,
                    style: TextStyle(color: Colors.white,fontSize: _height*0.08),
                  ):Container(),
                ],
              ),
            );
          }).toList()),
    );
  }
}
