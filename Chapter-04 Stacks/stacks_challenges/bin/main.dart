import 'package:stacks_challenges/stack.dart';

void main() {
  challenge1();
}

/// Challenge-1: Reverse a list using Stack
void challenge1() {
  const list = ['M', 'E', 'H', 'E', 'D', 'I'];
  printInReverse(list);
  print(list.reversed);
}

/// function to reverse and print the content of a list in reverse order
void printInReverse<T>(List<T> list) {
  var stack = Stack<T>();

  for (T value in list) {
    stack.push(value);
  }

  // var x = stack.toList();
  // print(x);

  while (stack.isNotEmpty) {
    print(stack.pop());
  }

}
