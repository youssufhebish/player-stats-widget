import 'package:flutter/material.dart';
import 'package:player_stats_widget/player_model.dart';
import 'package:player_stats_widget/player_widget.dart';

class Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: width / 2.25,
          width: double.infinity,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(5.0),
              child: playerWidget(
                context: context,
                width: width,
                PlayerModel: playersList[index],
              ),
            ),
            itemCount: playersList.length,
          ),
        ),
      ),
    );
  }
}
