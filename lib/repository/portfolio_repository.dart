import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_web_app/models/project_model.dart';

class PortfolioRepository {
  
  Future<List<Project>> getProjects() async {
    try {
      final String response = await rootBundle.loadString('assets/files/projects.json');
       final Map<String, dynamic> jsonMap = await json.decode(response);
      final List<dynamic> projectsList = jsonMap['projects'] ?? [];
      return projectsList.map((project) => Project.fromJson(project)).toList();
    } catch (e) {
      throw Exception('Failed to load projects: $e');
    }
  }
}