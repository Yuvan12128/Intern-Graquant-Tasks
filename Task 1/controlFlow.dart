void main() {
  int age = 24;

  if (age >= 18) {
    print("You are an adult");
  } else {
    print("You are not an adult");
  }

  //switch case
  String grade = 'A';
  switch (grade) {
    case 'A':
      print("Excellent");
      break;
    case 'B':
      print("Good");
      break;
  }

  //for loop
  for (int i = 0; i < 5; i++) {
    print('for loop $i');
  }

  //while loop
  int j = 0;
  while (j < 5) {
    print('while loop $j');
    j++;
  }

  //do while loop
  int k = 0;
  do {
    print('do while loop $k');
    k++;
  } while (k < 5);
}
