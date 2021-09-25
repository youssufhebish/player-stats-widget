import 'package:flutter/material.dart';

class PlayerModel {
  final String image;
  final String team;
  final String firstName;
  final String lastName;
  final String age;
  final String position;
  final int played;
  final int goals;
  final int assists;
  final Color color;

  PlayerModel({
    @required this.image,
    @required this.team,
    @required this.firstName,
    @required this.lastName,
    @required this.age,
    @required this.position,
    @required this.played,
    @required this.goals,
    @required this.assists,
    @required this.color,
  });
}

List<PlayerModel> playersList = [
  PlayerModel(
    image: 'assets/messi.jpg',
    team: 'assets/psg.png',
    firstName: 'lionel',
    lastName: 'messi',
    age: '34',
    position: 'st',
    played: 10,
    goals: 5,
    assists: 6,
    color: Color(0xFF031143),
  ),
  PlayerModel(
    image: 'assets/ronaldo.jpg',
    team: 'assets/mu.png',
    firstName: 'cristiano',
    lastName: 'ronaldo',
    age: '36',
    position: 'st',
    played: 10,
    goals: 6,
    assists: 2,
    color: Color(0xFFD20000),
  ),
  PlayerModel(
    image: 'assets/kevin.jpg',
    team: 'assets/city.png',
    firstName: 'Kevin',
    lastName: 'De Bruyne',
    age: '30',
    position: 'amf',
    played: 10,
    goals: 1,
    assists: 6,
    color: Colors.lightBlue,
  ),
  PlayerModel(
    image: 'assets/salah.jpg',
    team: 'assets/liverpool.png',
    firstName: 'Mohammed',
    lastName: 'salah',
    age: '29',
    position: 'st',
    played: 10,
    goals: 6,
    assists: 4,
    color: Color(0xFFD20000),
  ),
  PlayerModel(
    image: 'assets/lewa.jpg',
    team: 'assets/bayern.png',
    firstName: 'Robert',
    lastName: 'lewandoski',
    age: '33',
    position: 'st',
    played: 10,
    goals: 7,
    assists: 2,
    color: Color(0xFFD20000),
  ),
];