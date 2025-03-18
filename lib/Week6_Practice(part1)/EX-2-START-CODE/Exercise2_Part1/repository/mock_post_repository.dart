import '../model/post.dart';
import 'post_repository.dart';

class MockPostRepository extends PostRepository {
  @override
  Future<List<Post>> getPosts() {
    return Future.delayed(Duration(seconds: 5), () {
      return [
        Post(id: 25, title: 'Techer Ronan', description: 'The best teacher'),
        Post(id: 26, title: 'Flutter Course', description: 'The best course'),
        Post(id: 27, title: 'Dart Language', description: 'The best language'),
        Post(id: 28, title: 'Firbase ', description: 'The best backend'),
        
      ];
    });
  }
}
