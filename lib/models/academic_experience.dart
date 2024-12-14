class AcademicExperience {
  final String institution;
  final String area;
  final String summary;
  final String studyType;
  final String startDate;
  final String endDate;
  final String duration;

  AcademicExperience({
    required this.institution,
    required this.area,
    required this.summary,
    required this.studyType,
    required this.startDate,
    required this.endDate,
    required this.duration,
  });

  factory AcademicExperience.fromJson(Map<String, dynamic> json) {
    return AcademicExperience(
      institution: json['institution'] ?? '',
      area: json['area'] ?? '',
      summary: json['summary'] ?? '',
      studyType: json['studyType'] ?? '',
      startDate: json['startDate'] ?? '',
      endDate: json['endDate'] ?? '',
      duration: json['duration'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'institution': institution,
        'area': area,
        'summary': summary,
        'studyType': studyType,
        'startDate': startDate,
        'endDate': endDate,
        'duration': duration,
      };

  AcademicExperience copyWith({
    String? institution,
    String? area,
    String? summary,
    String? studyType,
    String? startDate,
    String? endDate,
    String? duration,
  }) {
    return AcademicExperience(
      institution: institution ?? this.institution,
      area: area ?? this.area,
      summary: summary ?? this.summary,
      studyType: studyType ?? this.studyType,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      duration: duration ?? this.duration,
    );
  }
}