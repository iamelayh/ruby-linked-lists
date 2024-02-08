This repository contains a Ruby implementation of a singly linked list, providing a versatile and efficient data structure for managing a sequence of elements. The linked list is composed of nodes, and each node contains a value and a reference to the next node in the sequence.

Key Features:
Initialization:

The LinkedList class is initialized with a head attribute, initially set to nil.
Appending Elements:

The append method adds a new node with the given data to the end of the linked list.
Prepending Elements:

The prepend method adds a new node with the given data to the beginning of the linked list.
Size:

The size method calculates and returns the number of elements in the linked list.
Accessing Head and Tail:

The head method returns the head of the linked list.
The tail method returns the tail (last node) of the linked list.
Accessing Nodes at Index:

The at method returns the node at a specified index.
Popping Elements:

The pop method removes and returns the last element in the linked list.
Checking for Element Existence:

The contains? method checks if a given value exists in the linked list.
Finding Index of an Element:

The find method returns the index of the first occurrence of a given value.
String Representation:

The to_s method generates a string representation of the linked list, following the format: "value -> value -> ... -> nil".
