import 'package:flutter/material.dart';
import '../models/course.dart';
import '../utils/app_colors.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  final VoidCallback onFavoriteToggle;

  const CourseCard({
    Key? key,
    required this.course,
    required this.onFavoriteToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: AppColors.softShadow,
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildImageSection(),
            _buildContentSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    return Container(
      width: 110,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: course.color.withOpacity(0.15),
        borderRadius: const BorderRadius.horizontal(left: Radius.circular(24)),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (course.subtitle.isNotEmpty) ...[
              Text(
                course.subtitle,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: course.color.withOpacity(0.8),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
            ],
            Image.asset(
              course.imagePath,
              width: 60,
              height: 60,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContentSection() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    course.title,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textDark,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 8),
                _buildFavoriteButton(),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              course.lectures,
              style: const TextStyle(color: AppColors.textGrey, fontSize: 13, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildStats(),
                Text(
                  course.price,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: AppColors.primaryBlue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFavoriteButton() {
    return GestureDetector(
      onTap: onFavoriteToggle,
      child: Container(
        width: 34,
        height: 34,
        decoration: BoxDecoration(
          color: course.isFavorite ? Colors.red.withOpacity(0.1) : AppColors.lightGrey,
          shape: BoxShape.circle,
        ),
        child: Icon(
          course.isFavorite ? Icons.favorite_rounded : Icons.favorite_outline_rounded,
          color: course.isFavorite ? Colors.red : AppColors.textGrey,
          size: 18,
        ),
      ),
    );
  }

  Widget _buildStats() {
    return Row(
      children: [
        _buildStatItem(Icons.people_alt_rounded, course.students),
        const SizedBox(width: 12),
        _buildStatItem(Icons.star_rounded, course.rating, color: Colors.orange),
      ],
    );
  }

  Widget _buildStatItem(IconData icon, String value, {Color color = AppColors.textGrey}) {
    return Row(
      children: [
        Icon(icon, color: color, size: 14),
        const SizedBox(width: 4),
        Text(
          value,
          style: const TextStyle(color: AppColors.textGrey, fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
