class Task {
  final String name;
  ItemType? itemType;


  Task({required this.name,});

  void changeToA() {
    itemType = ItemType.A;
  }

  void changeToB() {
    itemType = ItemType.B;
  }

  void changeToC() {
    itemType = ItemType.C;
  }

  void changeToD() {
    itemType = ItemType.D;
  }

}

enum ItemType { A, B , C, D }