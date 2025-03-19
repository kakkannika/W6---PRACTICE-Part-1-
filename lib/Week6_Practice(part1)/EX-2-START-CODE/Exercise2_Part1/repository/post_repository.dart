import '../model/post.dart';


// abstract class PostRepository {
//   Future<Post> getPost(int postId);
// }
abstract class PostRepository {
  Future<List<Post>> getPosts();
}

// Fetches  a multiple post object 