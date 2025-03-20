void main() {
  
  final numbers = [1,2,3,4,5,6,7,8,9,10];
  
  print('list original: $numbers');
  print('length: ${numbers.length}');
  print('index-0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('reversada: ${numbers.reversed}');
  
  
  final reversedNums = numbers.reversed;
  
  print('Iterable: $reversedNums');
  print('List: ${reversedNums.toList() }');
  print('Set: ${reversedNums.toSet() }');
  
  final numbersGreaterThan5 = numbers.where( (int num) { return num > 5; } );
  
  print('>5 iterable: $numbersGreaterThan5');
  print('>5 set: ${ numbersGreaterThan5.toSet() }');
  
}