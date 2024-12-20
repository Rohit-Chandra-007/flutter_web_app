import 'dart:convert';

import 'package:flutter/material.dart';

class Project {
  final String name;
  final String description;
  final String image;
  final List<String> highlights;
  final List<String> technologies;
  final String url;

  Project({
    required this.name,
    required this.description,
    required this.image,
    required this.highlights,
    required this.technologies,
    required this.url,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      image: json['image'] ?? '',
      highlights: List<String>.from(json['highlights'] ?? []),
      technologies: List<String>.from(json['technologies'] ?? []),
      url: json['url'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'image': image,
        'highlights': highlights,
        'technologies': technologies,
        'url': url,
      };

  Project copyWith({
    String? name,
    String? description,
    String? image,
    List<String>? highlights,
    List<String>? technologies,
    String? url,
  }) {
    return Project(
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      highlights: highlights ?? this.highlights,
      technologies: technologies ?? this.technologies,
      url: url ?? this.url,
    );
  }

  // Helper method to get primary technology
  String get primaryTechnology =>
      technologies.isNotEmpty ? technologies.first : '';

  // Helper method to check if project uses a specific technology
  bool usesTechnology(String technology) {
    return technologies
        .any((tech) => tech.toLowerCase() == technology.toLowerCase());
  }

  // Helper method to get project type based on technologies
  String get projectType {
    if (technologies.any((tech) => tech.toLowerCase() == 'flutter')) {
      return 'Mobile App';
    } else if (technologies.any((tech) => tech.toLowerCase() == 'laravel')) {
      return 'Web App';
    }
    return 'Other';
  }

  // Helper method to get the total number of features
  int get featureCount => highlights.length;

  // Helper method to check if the project has a GitHub URL
  bool get hasGithubUrl => url.toLowerCase().contains('github.com');

  // Helper method to get a short description (first 100 characters)
  String get shortDescription {
    if (description.length <= 100) return description;
    return '${description.substring(0, 97)}...';
  }

  // Add static loader method
  static Future<List<Project>> loadProjects(BuildContext context) async {
    final String jsonString =
        await DefaultAssetBundle.of(context).loadString('assets/projects.json');
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((json) => Project.fromJson(json)).toList();
  }
}
