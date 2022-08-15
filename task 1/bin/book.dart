
import 'dart:io';
import 'dart:convert';
import 'package:test/test.dart';

 class Books{
 String? books_name="";
 String? author_book="";
 int rat=0;

 static Map booksList =<Type,Books>{};
 Books(this.author_book,this.books_name,this.rat);

void Add() {
    print("Enter the count of books want to add:");
    int? n = int.parse(stdin.readLineSync()!);
    for (var i = 1; i <= n; i++) {
      print("Enter the book $i Name:");
      books_name = stdin.readLineSync();
      print("Enter book $i author:");
      author_book = stdin.readLineSync();
      print("Enter book $i rate:");
      int? rat = int.parse(stdin.readLineSync()!);
      print("=============================");
      Map booksList ={books_name,author_book,rat} as Map;
    }
  }

  void displayAllBook() {
   Map listBook = Books.booksList;
   if (listBook.isEmpty) {
     print("There are no Books!");
   } else {
     print("Name\t\t\t\tAuthor\t\t\t\tRate");
     listBook.forEach((k,v) => print('${k}: ${v}'));
   }
 }
  }
