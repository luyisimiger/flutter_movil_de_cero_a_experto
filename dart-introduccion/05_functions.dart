String greetEveryone() => 'Hello everyone';

int addTwoNumbers(int a, int b) => a + b;

void main() {
  print(greetEveryone());
  print("sum: ${ addTwoNumbers(15, 30) }");
  print("sum: ${ addTwoNumbersOptional(23) }");
  //print(greetPerson("Luis", "Buen dia,"));
  print(greetPerson(name: "Luis", message: "Buen dia,"));
  print(greetPerson(name: "Luis"));
}

int addTwoNumbersOptional(int a, [int b = 0]) {
  // b ??= 0;
  return a + b;
}

//String greetPerson(name, message) {
String greetPerson({ required String name, String message = "Hola,"}) {
  return '$message $name';
}