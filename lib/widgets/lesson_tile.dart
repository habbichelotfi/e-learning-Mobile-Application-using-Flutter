import 'package:flutter/material.dart';
import '../models/lesson.dart';

class LessonTile extends StatelessWidget {
  final Lesson lesson;
  final VoidCallback onTap;

  const LessonTile({
    Key? key,
    required this.lesson,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: lesson.isLocked ? onTap : null,
      tileColor: lesson.isPlaying ? Colors.lightBlue.shade50 : null,
      leading: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: lesson.isPlaying ? null : Border.all(color: Colors.grey.shade400),
          color: lesson.isPlaying ? Colors.blueAccent : Colors.white,
        ),
        child: lesson.isPlaying
            ? const Icon(Icons.play_arrow, color: Colors.white)
            : Center(
                child: Text(
                  '${lesson.order}',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 7),
          Text(
            lesson.title,
            style: TextStyle(
              fontWeight: lesson.isPlaying ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            lesson.duration,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 7),
        ],
      ),
      trailing: lesson.isLocked ? const Icon(Icons.lock) : null,
    );
  }
}
