import 'package:flutter/material.dart';
import '../models/course.dart';
import '../widgets/course_card.dart';

class AllCourses extends StatefulWidget {
  const AllCourses({Key? key}) : super(key: key);

  @override
  _AllCoursesState createState() => _AllCoursesState();
}

class _AllCoursesState extends State<AllCourses> {
  final List<Course> _courses = [
    Course(
      title: 'UX Fundamentals',
      subtitle: 'in 50 minutes',
      lectures: '79 Lectures',
      students: '1.2K',
      rating: '4.5',
      price: '\$300',
      imagePath: 'assets/images/clock.png',
      color: Colors.orange.shade700,
      isFavorite: false,
    ),
    Course(
      title: 'UX&UI Thinking',
      subtitle: '',
      lectures: '79 Lectures',
      students: '1.2K',
      rating: '4.5',
      price: '\$300',
      imagePath: 'assets/images/thinking.png',
      color: Colors.blue.shade300,
      isFavorite: true,
    ),
    Course(
      title: 'UX Research',
      subtitle: '',
      lectures: '79 Lectures',
      students: '1.2K',
      rating: '4.5',
      price: '\$300',
      imagePath: 'assets/images/ux_research.png',
      color: Colors.green.shade300,
      isFavorite: false,
    ),
    Course(
      title: 'UI Design',
      subtitle: '',
      lectures: '79 Lectures',
      students: '1.2K',
      rating: '4.5',
      price: '\$300',
      imagePath: 'assets/images/ui-design.png',
      color: Colors.grey.shade300,
      isFavorite: false,
    ),
    Course(
      title: 'Web Development',
      subtitle: '',
      lectures: '79 Lectures',
      students: '1.2K',
      rating: '4.5',
      price: '\$300',
      imagePath: 'assets/images/coding.png',
      color: Colors.blue.shade300,
      isFavorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              _buildHeader(context),
              const SizedBox(height: 45),
              Expanded(
                child: ListView.builder(
                  itemCount: _courses.length,
                  itemBuilder: (context, index) {
                    final course = _courses[index];
                    return CourseCard(
                      course: course,
                      onFavoriteToggle: () => _toggleFavorite(index),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () async {
            await Future.delayed(const Duration(milliseconds: 300));
            Navigator.pop(context);
          },
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.grey,
              size: 20,
            ),
          ),
        ),
        const SizedBox(width: 30),
        const Text(
          'Course List',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
        )
      ],
    );
  }

  void _toggleFavorite(int index) {
    setState(() {
      _courses[index].isFavorite = !_courses[index].isFavorite;
    });

    final message = _courses[index].isFavorite
        ? '${_courses[index].title} was added to your favorites'
        : '${_courses[index].title} was removed from your favorites';

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
