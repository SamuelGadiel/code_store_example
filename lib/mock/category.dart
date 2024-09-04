class Category {
  final int id;
  final String categoryDescription;
  final String color;

  Category({
    required this.id,
    required this.categoryDescription,
    required this.color,
  });

  static Category fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] ?? -1,
      categoryDescription: json['name'] ?? "",
      color: json['color'] ?? "#ffffff",
    );
  }
}
