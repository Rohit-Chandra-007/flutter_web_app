class Journey {
  final String title;
  final String description;
  final String duration;
  final String dateRange;

  Journey({
    required this.title,
    required this.description,
    required this.duration,
    required this.dateRange,
  });

  factory Journey.fromJson(Map<String, dynamic> json) {
    return Journey(
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

  Journey copyWith({
    String? title,
    String? description,
    String? duration,
    String? dateRange,
  }) {
    return Journey(
      title: title ?? this.title,
      description: description ?? this.description,
      duration: duration ?? this.duration,
      dateRange: dateRange ?? this.dateRange,
    );
  }
}