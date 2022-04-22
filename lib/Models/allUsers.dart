import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Users
{
  String? id;
  String? email;
  String? name;
  String? phone;
  String? pics;

  Users({this.id, this.email, this.name, this.phone, this.pics});

  Users.fromSnapshot(DataSnapshot dataSnapshot)
  {
    id = dataSnapshot.key;
    email = dataSnapshot.value["email"];
    name = dataSnapshot.value["name"];
    phone = dataSnapshot.value["phone"];
    pics = dataSnapshot.value["pics"];
  }
}