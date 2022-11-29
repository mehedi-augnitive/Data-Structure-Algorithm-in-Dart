class Stack<T> {
  /// storing stack in list in default constructor
  Stack() : _stackList = <T>[];

  ///
  final List<T> _stackList;

  /// toString method returns stackList as String
  @override
  String toString() {
    // TODO: implement toString
    return '${_stackList.reversed}';
  }

  /// returns stack as List of type T
  List<T> toList() => _stackList.reversed.toList();

  /// adds an element to the end of the list
  void push(T element) => _stackList.add(element);

  /// removes the last element of the list and returns it.
  T pop() => _stackList.removeLast();

  ///GETTERS
  ///
  /// returns the length of the stack.
  int get length => _stackList.length;

  /// looks at the top element of the stack without mutating it's content.
  T get peek => _stackList.last;

  /// returns true if the stack is empty otherwise returns false
  bool get isEmpty => _stackList.isEmpty;

  /// returns true if the stack has any element otherwise returns false
  bool get isNotEmpty => _stackList.isNotEmpty;

  /// returns true if element is found in the stack
  bool contains(T element) {
    return _stackList.contains(element);
  }

  /// removes all elements from the stack
  void clear() {
    while (isNotEmpty) {
      _stackList.removeLast();
    }
  }

  /// CREATING A STACK FROM AN ITERABLE with this constructor
  Stack.of(Iterable<T> elements) : _stackList = List<T>.of(elements);
}
