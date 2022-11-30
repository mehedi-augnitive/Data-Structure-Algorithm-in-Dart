/*
 * A linked list is a collection of values arranged in a linear, unidirectional sequence.
 * Theoretical advantages of linked list over contiguous storage options such as Dart List:
 *      - Constant time insertion and removal from the front of the list
 *      - Reliable performance characteristics
 *
 * A linked list is a chain of NODES.
 * NODES have two responsibilities:
 *      - Hold a value
 *      - Hold a reference to the next node. A null reference indicates the end of the list.
*/

class Node<T> {
  Node({required this.value, this.next});

  final T value;
  Node<T>? next;

  /// This toString method RECURSIVELY returns all of the nodes
  /// after that node in the linked list.
  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

/// NODE only knows about a single value, T is the standard letter used to mean that
/// the node chan hold any type. While creating a linked list of nodes E will be used
/// to refer to the type since they are elements of the list.

/*
 * A linked list has the concept of a HEAD and TAIL, which refers to the
 * first and last nodes of the list respectively.
*/
class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  /// The list is empty if the HEAD is empty
  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'List is empty';

    /// Since NODE is designed to RECURSIVELY return all nodes the follow it,
    /// calling head.toString will return the entire linked list.
    return head.toString();
  }
}
