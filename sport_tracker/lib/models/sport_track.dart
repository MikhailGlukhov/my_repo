// ignore_for_file: public_member_api_docs, sort_constructors_first


class SportTrack {
  String uid;
  String title;
  bool isCompleted;
  int roundTime;
  int restTime;
  int rounds;
  SportTrack({
    required this.uid,
    required this.title,
    required this.isCompleted,
    required this.roundTime,
    required this.restTime,
    required this.rounds,
  });
}
