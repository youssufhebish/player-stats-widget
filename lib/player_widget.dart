

import 'package:flutter/material.dart';
import 'package:player_stats_widget/player_model.dart';

Widget playerWidget({@required context, @required double width, @required PlayerModel}) => Container(
  width: width / 1.5,
  height: width / 2.5,
  decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [
        PlayerModel.color,
        PlayerModel.color.withOpacity(0.65),
      ],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    borderRadius: BorderRadius.circular(15.0),
    border: Border.all(color: Colors.white, width: 0.5,),
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 3.5,
        spreadRadius: 0.5,
        offset: Offset(1.5, 1.5),
      ),
    ],
  ),
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(PlayerModel.image),
              radius: 25.0,
            ),
            SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(PlayerModel.firstName.toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle2.copyWith(color: Colors.grey, fontSize: 10.0,),),
                Text(PlayerModel.lastName.toUpperCase(),
                  style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white, fontSize: 14.0,),),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('team'.toUpperCase(),
                  style: Theme.of(context).textTheme.caption.copyWith(color: Colors.grey, fontSize: 10.0,),),
                Image.asset(PlayerModel.team, width: 16.0,),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('age'.toUpperCase(),
                  style: Theme.of(context).textTheme.caption.copyWith(color: Colors.grey, fontSize: 10.0,),),
                Text(PlayerModel.age.toString().toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white, fontSize: 14.0,),),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('position'.toUpperCase(),
                  style: Theme.of(context).textTheme.caption.copyWith(color: Colors.grey, fontSize: 10.0,),),
                Text(PlayerModel.position.toString().toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white, fontSize: 14.0,),),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('PLD'.toUpperCase(),
                  style: Theme.of(context).textTheme.caption.copyWith(color: Colors.grey, fontSize: 10.0,),),
                Text(PlayerModel.played.toString().toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white, fontSize: 14.0,),),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('goals'.toUpperCase(),
                  style: Theme.of(context).textTheme.caption.copyWith(color: Colors.grey, fontSize: 10.0,),),
                Text(PlayerModel.goals.toString().toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white, fontSize: 14.0,),),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('assists'.toUpperCase(),
                  style: Theme.of(context).textTheme.caption.copyWith(color: Colors.grey, fontSize: 10.0,),),
                Text(PlayerModel.assists.toString().toUpperCase(),
                  style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white, fontSize: 14.0,),),
              ],
            ),
          ],
        ),
      ],
    ),
  ),
);