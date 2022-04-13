class ContactData {
  late String name;
  late String number;

  ContactData({required this.name, required this.number});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'number': number,
    };
  }

  ContactData.fromMap(Map<String, dynamic> map) {
    name = map['name'];
    number = map['number'];
  }
}
