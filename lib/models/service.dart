class Service {
  final String title;
  final String description;
  final String iconName;
  final String bgImage;

  Service({
    required this.title,
    required this.description,
    required this.iconName,
    required this.bgImage,
  });

  factory Service.fromMap(Map<String, dynamic> map) {
    return Service(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      iconName: map['icon_name'] ?? '',
      bgImage: map['bg_image'] ?? '',
    );
  }
}
