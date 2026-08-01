class Lesson {
  final String title;
  final String duration;
  final bool isLocked;
  final int order;
  final bool isPlaying;

  Lesson({
    required this.title,
    required this.duration,
    this.isLocked = true,
    required this.order,
    this.isPlaying = false,
  });
}
