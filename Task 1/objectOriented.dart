void main() {
  Person person1 = Person("Alice", 25);
  person1.introduce();
  Person person2 = Person("Bob", 30);
  person2.introduce();

  Dog dog = Dog();
  dog.sound();
  Animal animal = Animal();
  animal.sound();


  var c = car();
  c.draw();
  c.stop();

  var b = bike();
  b.draw();

}

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void introduce() {
    print("Hello, my name is $name and I am $age years old.");
  }
}
//Inheritance

class Animal {
  void sound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  void sound() {
    super.sound();
    print("Dog barks");
  }
}

//Abstract class

abstract class vehicle {
  void draw();
  void stop() {
    print("Vehicle stopped");
  }
}

class car extends vehicle {
  @override
  void draw() {
    print("Drawing a car");
  }
}

class bike extends vehicle {
  @override
  void draw() {
    print("Drawing a bike");
  }
}
