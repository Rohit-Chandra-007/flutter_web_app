class WorkExperience {
  final String title;
  final String description;
  final String duration;
  final String dateRange;

  WorkExperience({
    required this.title,
    required this.description,
    required this.duration,
    required this.dateRange,
  });

  factory WorkExperience.fromJson(Map<String, dynamic> json) {
    return WorkExperience(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      duration: json['duration'] ?? '',
      dateRange: json['dateRange'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'duration': duration,
        'dateRange': dateRange,
      };

  WorkExperience copyWith({
    String? title,
    String? description,
    String? duration,
    String? dateRange,
  }) {
    return WorkExperience(
      title: title ?? this.title,
      description: description ?? this.description,
      duration: duration ?? this.duration,
      dateRange: dateRange ?? this.dateRange,
    );
  }
}