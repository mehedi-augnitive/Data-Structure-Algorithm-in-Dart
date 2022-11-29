
class Stack<E> {

  /// Defining the backing storage of our stack. Choosing the right
  /// storage type is important. List is an obvious choice since it offers
  /// constant time insertion and deletion at one end via add and removeLast.
  Stack() : _storage = <E>[];
  final List<E> _storage;

  /// Overriding toString method
  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }


  /// adds an element to the end of the list
  void push(E element) => _storage.add(element);

  /// removes the last element of the list and returns it.
  E pop() => _storage.removeLast();

/*
 * There are some NON-ESSENTIAL operations nice-to-have that make a stack easier to use.
*/

  /// ADDING GETTERS

  /// looks at the top element of the stack without mutating it's content.
  E get peek => _storage.last;

  /// returns true if the stack is empty otherwise returns false
  bool get isEmpty => _storage.isEmpty;

  /// returns true if the stack has any element otherwise returns false
  bool get isNotEmpty => _storage.isNotEmpty;

  /// CREATING A STACK FROM AN ITERABLE with this constructor
  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

}
