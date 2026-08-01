class AppNotification {
  final String sender;
  final String message;
  final String timeAgo;
  final String avatarPath;

  AppNotification({
    required this.sender,
    required this.message,
    required this.timeAgo,
    this.avatarPath = '',
  });
}
