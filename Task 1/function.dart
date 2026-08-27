void main() {
  greet("Alice");
  greet("Yuvan");
  print(sum(5, 10));
  print(square(4));
  sayHello('Yuvan', age: 20);
}

void greet(String name) {
  print("Hello, $name!");
}

int sum(int a, int b) {
  return a + b;
}
int square(int x)=>(x*x); 

void sayHello(String name , {int age=24}) {
  print("Hello, $name! You are $age years old.");
}