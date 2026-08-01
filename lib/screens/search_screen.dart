import 'package:flutter/material.dart';
import '../models/course.dart';
import '../widgets/course_card.dart';
import '../utils/app_colors.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<Course> _allCourses = [
    Course(
      title: 'UX/UI Design',
      subtitle: '',
      lectures: '45 Lectures',
      students: '2.5K',
      rating: '4.8',
      price: '\$199',
      imagePath: 'assets/images/ui_ux_design.png',
      color: Colors.blue,
    ),
    Course(
      title: 'Web Development',
      subtitle: '',
      lectures: '120 Lectures',
      students: '10K',
      rating: '4.9',
      price: '\$299',
      imagePath: 'assets/images/web-development.png',
      color: Colors.orange,
    ),
    Course(
      title: 'Mobile Development',
      subtitle: '',
      lectures: '85 Lectures',
      students: '5K',
      rating: '4.7',
      price: '\$249',
      imagePath: 'assets/images/development.png',
      color: Colors.green,
    ),
    Course(
      title: 'Python From A to Z',
      subtitle: '',
      lectures: '150 Lectures',
      students: '15K',
      rating: '4.9',
      price: '\$149',
      imagePath: 'assets/images/python.png',
      color: Colors.yellow.shade800,
    ),
  ];

  List<Course> _filteredCourses = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredCourses = _allCourses;
  }

  void _filterCourses(String query) {
    setState(() {
      _filteredCourses = _allCourses
          .where((course) =>
              course.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Search',
          style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: AppColors.softShadow,
              ),
              child: TextField(
                controller: _searchController,
                onChanged: _filterCourses,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded, color: AppColors.textGrey),
                  hintText: 'Search for courses...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
          ),
          Expanded(
            child: _filteredCourses.isEmpty
                ? _buildNoResults()
                : ListView.builder(
                    padding: const EdgeInsets.all(20),
                    itemCount: _filteredCourses.length,
                    itemBuilder: (context, index) {
                      return CourseCard(
                        course: _filteredCourses[index],
                        onFavoriteToggle: () {
                          setState(() {
                            _filteredCourses[index].isFavorite =
                                !_filteredCourses[index].isFavorite;
                          });
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildNoResults() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search_off_rounded, size: 80, color: AppColors.textGrey.withOpacity(0.3)),
          const SizedBox(height: 16),
          const Text(
            'No courses found',
            style: TextStyle(color: AppColors.textGrey, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
