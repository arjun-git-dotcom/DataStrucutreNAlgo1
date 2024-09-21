class Node {
  Node? next;
  Node? prev;
  int data;
  Node({required this.data});
}

class LinkedList {
  Node? head;
  addbegin(int data) {
    Node newNode = Node(data: data);
    newNode.next = head;
    head = newNode;
  }

  reversed() {
    Node? current = head;
    Node? previous = null;
    while (current != null) {
      Node? newnode = current.next;
      current.next = previous;
      previous = current;
      current = newnode;
    }
    head = previous;
  }

  addend(int data) {
    Node newNode = Node(data: data);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = newNode;
    }
  }

  arraytolinkedList(List<int> array) {
    for (var a in array) {
      addend(a);
    }
  }

  remove(int value) {
    Node? current = head;

    if (head?.data == value) {
      head = head?.next;
      return;
    }
    while (current != null && current.next != null) {
      if (current.next?.data == value) {
        current.next = current.next?.next;
      }
      current = current.next;
    }
  }

  printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  insertafter(int value, int data) {
    Node newNode = Node(data: data);
    Node? current = head;
    while (current?.next != null) {
      if (current?.data == value) {
        newNode.next = current?.next;
        current?.next = newNode;
      }
      current = current?.next;
    }
  }

 arraytoll(List<int> array1) {
  
    for (var value in array1) {
      addend(value);
    }
    
  }

  binary(int value, List<int> array1, high, low) {
    array1.sort();

    while (low <= high) {
      int mid = (high + low) ~/ 2;
      if (array1[mid] == value) {
        print('$value found');
        return mid;
      } else if (array1[mid] > value) {
        return binary(value, array1, mid - 1, low);
      } else {
        return binary(value, array1, high, mid + 1);
      }
    }
    print('target not found');
    return -1;
  }

  secondLargest() {
    Node? current = head;
    int? largest;
    int? secondlargest;
    while (current != null) {
      int currentvalue = current.data;
      if (largest == null) {
        largest = currentvalue;
      } else if (largest < currentvalue) {
        secondlargest = largest;
        largest = currentvalue;
      } else if (largest > currentvalue) {
        if (secondlargest == null || currentvalue > secondlargest) {
          secondlargest = currentvalue;
        }
      }
      current = current.next;
    }
    print(secondlargest);
  }

  second() {
    Node? current = head;
    int? largest;
    int? secondl;
    while (current != null) {
      int currentvalue = current.data;
      if (largest == null) {
        largest = currentvalue;
      } else if (currentvalue > largest) {
        secondl = largest;
        largest = currentvalue;
      } else if (currentvalue < largest) {
        secondl = currentvalue;
      }
      current = current.next;
    }
    print(secondl);
  }

  largest() {
    Node? current = head;
    int? largest;
    while (current != null) {
      int currentvalue = current.data;
      if (largest == null) {
        largest = currentvalue;
      } else if (currentvalue > largest) {
        largest = currentvalue;
      } else if (currentvalue < largest) {
        current = current.next;
      }
      current = current?.next;
    }
    print(largest);
  }

  deleteAt(int position) {
    Node? current = head;
    if (head == null || position < 0) {
      return;
    } else if (position == 0) {
      head = head?.next;
    } else if (position > 0) {
      for (int i = 0; i < position - 1; i++) {
        current = current?.next;
      }
      current?.next = current.next?.next;
    }
  }

  isPrime(int number) {
    if (number < 2) {
      return false;
    } else if (number >= 2) {
      for (int i = 2; i < number; i++) {
        if (number % i == 0) {
          return false;
        }
      }
      return true;
    }
  }

  traverse() {
    Node? current = head;
    while (current != null) {
      if (isPrime(current.data)) {
        print(current.data);
      }
      current = current.next;
    }
  }

  String atoz(String word) {
    List<String> neww = word.split('');
    String temp;
    temp = neww.first;
    neww.first = neww.last;
    neww.last = temp;
    var result = neww.join('');
    print(result);
    return result;
  }

  merge(LinkedList otherlist) {
    Node? current = head;
    if (head == null) {
      head = otherlist.head;
    } else {
      while (current?.next != null) {
        current = current?.next;
      }
      current?.next = otherlist.head;
    }
  }

  reverse(List<String> word1) {
    var a = word1.reversed.toList();
    print(a);
  }
}

class DoubleLinkedlist {
  Node? head;
  Node? tail;

  daddbegin(int data) {
    Node newdnode = Node(data: data);
    newdnode.next = head;
    head = newdnode;
  }

  printd() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  daddend(int data) {
    Node newdnode = Node(data: data);
    if (head == null) {
      head = newdnode;
    }
    Node? current = head;

    while (current?.next != null) {
      current = current?.next;
    }
    current?.next = newdnode;
    newdnode.prev = current;
    tail = newdnode;
  }
}

void main() {
  // String word = 'sat';
  // List<String> word1 = ['a', 'r', 'j', 'u', 'n'];
LinkedList list = LinkedList();
  var array1 = [1, 2, 3, 4, 5];
  

  print(list.arraytoll(array1));

  // DoubleLinkedlist listd = DoubleLinkedlist();
  // listd.daddbegin(3);
  // listd.daddend(66);
  // listd.daddend(44);
  // listd.printd();

  // list.reverse(word1);
  // LinkedList list1 = LinkedList();
  // // list.atoz(word);

  // list.addbegin(2);
  // list.addend(77);
  // list.reversed();
  // list.remove(2);

  // list1.addbegin(111);
  // list1.addend(999);
  // list.merge(list1);
  // // list.deleteAt(0);
  // list.traverse();

  // list.remove(2);
  // int high = array1.length - 1;
  // int low = 0;

  // list.binary(2, array1, high, low);
  // list.addbegin(101);

  // list.addend(200);
  // list.addend(114);
  // list.addend(88);
  // list.addend(6);
  // list.addend(6);

  // list.secondLargest();
  // // list.remove(1);
  // // list.arraytoll(array1);
  // list.insertafter(1, 5);
  // list.printList();
}
