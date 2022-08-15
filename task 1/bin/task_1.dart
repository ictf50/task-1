import 'package:task_1/task_1.dart' as task_1;
import 'dart:io';
import 'book.dart';
void main(List<String> arguments) {
  Books dis = Books("","",0);
  int ch=0;
  do {
    stdout.write("enter your choose:");
    int ch=int.parse(stdin.readLineSync()!);

    switch(ch){
      case 1:
        dis.Add();
        break;

      case 2:
        dis.displayAllBook();
        break;

      case 3:

        break;

      case 4:

        break;
      case 5:

        break;
      case 6:
        break;
      default:
        print("out of chose");
        break;
    }
  } while (ch!=7);
}
