void main(){
  //List
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  print(fruits);
  print(fruits[0]);
  fruits.add('Orange');
  fruits.remove('Banana');
  print(fruits);
  print(fruits.length);

  //Set
  var numbers = {1, 2, 3, 4, 5,8,8};
  print(numbers);
  numbers.add(6);
  numbers.remove(3);
  print(numbers); 

  //Map
  Map<String, int> ages = {
    'Yuvan': 24,
    'Raja': 30,
  };
  print(ages);
  ages['Charlie'] = 35;
  print(ages); 
  print(ages.keys); 
  ages['David'] = 28;
  print(ages);
  ages.remove('Raja');
  print(ages);
}