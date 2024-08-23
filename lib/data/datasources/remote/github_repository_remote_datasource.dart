import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:petprofile_fe/core/core.dart';
import 'package:petprofile_fe/data/models/github_repository.dart';
import 'package:http/http.dart' as http;


class GitHubRepositoryRemoteDatasource {
  Future<Either<String, List<GitHubRepository>>> getRepositories({
    final orgs = 'flutter',
    final int page = 1,
    final int perPage = 10,
  }) async {
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/orgs/flutter/repos?page=$page&per_page=$perPage'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Accept':'application/vnd.github+jso',
      },
    );

    if (response.statusCode == 200) {
      
      try {
        final List<dynamic> jsonList = jsonDecode(response.body) as List<dynamic>;
        final List<GitHubRepository> repositories = jsonList
            .map((json) => GitHubRepository.fromJson(json as Map<String, dynamic>))
            .toList();
        return Right(repositories);
      } catch (e) {
        return Left('Failed to parse response: $e');
      }
    } else {
      return Left('Failed with status code: ${response.statusCode}');
    }
  }

  Future<Either<String, GitHubRepository>> getRepositoryDetail({
    final String? owner,
    final String? repo
  }) async {
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/repos/$owner/$repo'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Accept':'application/vnd.github+jso',
      },
    );

    if (response.statusCode == 200) {
      try {
        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        return Right(GitHubRepository.fromJson(jsonResponse));
      } catch (e) {
        return Left('Failed to parse response: $e');
      }
    } else {
      return Left('Failed with status code: ${response.statusCode}');
    }
  }
}
