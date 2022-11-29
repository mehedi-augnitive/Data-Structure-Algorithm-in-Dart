import 'package:stacks_challenges/stack.dart';

void main() {
  challenge1();
  challenge2();
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

/// Challenge 2: Balance the Parentheses
void challenge2() {
  print(isParenthesesBalanced('h((e))llo(world)()'));
  print(isParenthesesBalanced('(hello world'));
  print(isParenthesesBalanced('hello)(world'));
}

bool isParenthesesBalanced(String text) {
  final stack = Stack<int>();

  final open = '('.codeUnitAt(0);
  final close = ')'.codeUnitAt(0);

  for (int codeUnit in text.codeUnits) {
    if (codeUnit == open) {
      stack.push(codeUnit);
    } else if (codeUnit == close) {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }
  return stack.isEmpty;
}
