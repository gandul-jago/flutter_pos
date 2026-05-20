class MenuRestoModel {
  final int? id;
  final String? category;
  final String? status;
  final String? code;
  final String? name;
  final String? price;
  final String? description;


  MenuRestoModel({
    required this.id,
    required this.category,
    required this.status,
    required this.code,
    required this.name,
    required this.price,
    required this.description,
  });

  factory MenuRestoModel.fromJson(Map<String, dynamic> json) {
    return MenuRestoModel(
      id: json['id'],
      category: json['category'],
      status: json['status'],
      code: json['code'],
      name: json['name'],
      price: json['price'],
      description: json['description'],

    );
  }

}