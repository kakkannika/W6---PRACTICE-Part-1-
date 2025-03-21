import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:w6_practice_part1/Week6_Practice(part1)/EX-2-START-CODE/Exercise2_Part1/DTO/post_dto.dart';

import '../model/post.dart';

import 'post_repository.dart';

class HttpPostRepository implements PostRepository {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/posts';
  // apiUrl: a constant string that holds the URL for the API endpoint. 


  @override
  Future<List<Post>> getPosts() async {  // getPosts: an asychronous method that fetches a list of posts. 
    try {
      final response = await 
      http.get(Uri.parse(apiUrl)); // Makes a GET request to the API endpoint. 
      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);
        return jsonList.map((json) {
          final PostDTO dto = PostDTO.fromJson(json);
          return fromDto(dto);
        }).toList();
      } else {
        throw Exception('Failed to load posts: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to fetch posts: $e');
    }
  }

  Post fromDto(PostDTO dto) {
    return Post(
      id: dto.id,
      title: dto.title,
      description: dto.body,
    );
  }
}