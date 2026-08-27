void main() {
  var name = 'Yuvan';
  String city = 'Chennai';
  int age = 20;
  double pi = 3.14;
  bool isTrue = true;

  print('My name is $name');
  print('I live in $city');
  print('I am $age years old');
  print('The value of pi is $pi');
  print('Is it true? $isTrue');

  var a = 10;
  a = 20;
  print('The value of a is $a');

  final b = 30;
  // b=21;  Error: Can't assign to the final variable 'b'.
  print('The value of b is $b');

  const c = 40;
  // c=10; Error: Can't assign to the const variable 'c'.
  print('The value of c is $c');

  //NULL SAFETY;
  String? name1 = null;
  //Error: Non-nullable variable 'name1' must be assigned before it can be used.
  print('The value of name1 is $name1');

  name1 = 'Yuvan';
  print(name1 ?? 'yuvan');

}
