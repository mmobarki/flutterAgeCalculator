import 'dart:io';

class Age {
  static var age;
  Age(userBirthday) {
    //print("type your birth day");
    //var userEnter= userBirthday;
    age = new DateTime.now().year - (userBirthday);
    //print("your age is = $age year old");
  }
}
