/// NODE Class
class Node<T> {
  Node({required this.value, this.next});

  final T value;
  Node<T>? next;

  ///RECURSIVELY returns all of the nodes after that node .
  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

/// LINKEDLIST class
class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  /// The list is empty if the HEAD is empty
  /// returns tru or false
  bool get isEmpty => head == null;

  /// PUSH method
  void push(E value) {
    /// assigns new NODE as HEAD, points the PREVIOUS NODE as TAIL
    head = Node(value: value, next: head);

    /// pushes a new NODE to an EMPTY LIST.
    /// Both HEAD and TAIL are same in this case.
    tail ??= head;
  }

  ///APPEND method
  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }
    return currentNode;
  }

  /// INSERTAFTER method
  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }

    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  @override
  String toString() {
    if (isEmpty) return 'List is empty';

    /// NODE recursively return all nodes the follow it,
    /// so head.toString returns the entire linked list.
    return head.toString();
  }
}
