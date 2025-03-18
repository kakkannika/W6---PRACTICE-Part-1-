
import 'package:w6_practice_part1/Week6_Practice(part1)/EX-1-START-CODE/models/course.dart';

abstract class CoursesRepository {
 List<Course> getCourses();
 void addCourse(Course course , CourseScore score);
}