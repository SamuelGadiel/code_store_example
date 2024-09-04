import 'category.dart';

class Integration {
  final int id;
  final List<Category> categories;
  final String description;
  final String image;
  final String link;
  final bool favorite;
  final String integrationVersion;
  final bool hasManual;
  final bool hasVideo;
  final bool hasProjectFile;
  final String name;

  Integration({
    required this.id,
    required this.categories,
    required this.description,
    required this.image,
    required this.link,
    required this.favorite,
    required this.integrationVersion,
    required this.hasManual,
    required this.hasVideo,
    required this.hasProjectFile,
    required this.name,
  });

  static Integration fromJson(Map<String, dynamic> json) {
    return Integration(
      id: json['id'] ?? -1,
      categories: ((json['categories'] ?? []) as List).map((category) => Category.fromJson(category)).toList(),
      image: json['image'] ?? "",
      description: json['description'] ?? "",
      link: json['link'] ?? "",
      favorite: json['favorite'] ?? false,
      integrationVersion: json['version'] ?? "",
      hasManual: json['hasManual'] ?? false,
      hasVideo: json['hasVideo'] ?? false,
      hasProjectFile: json['hasProjectFile'] ?? false,
      name: json['name'] ?? "",
    );
  }
}
