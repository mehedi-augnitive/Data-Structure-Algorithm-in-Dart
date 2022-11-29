
import 'package:stacks_practice/stack.dart';

void main() {
  /// creating an objet of integer Stack type
  final stack = Stack<int>();

  /// pushing integers to the stack
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);

  /// prints the stack
  print(stack);

  /// popping an element
  final element = stack.pop();
  print('Popped: $element');

  /// printing the stack
  print(stack);

  /// Conversion of Iterable collection to a Stack
  ///
  const list = ['M', 'E', 'H', 'E', 'D', 'I'];
  final nameStack = Stack.of(list);
  print(nameStack);
  final namePop = nameStack.pop();
  print('Popped: $namePop');
  print(nameStack);
  //
  const set = {'M', 'E', 'H', 'D', 'I'};
  final setStack = Stack.of(set);
  print(setStack);
  final letterPop = setStack.pop();
  print('Popped: $letterPop');
  print(setStack);

  ///
  final stack1 = Stack<List>();
  stack1.push(['M', 'E']);
  stack1.push(['H', 'E']);
  stack1.push(['D', 'I']);
  print(stack1);
}
