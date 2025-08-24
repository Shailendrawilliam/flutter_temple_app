class Ekadashi {
  final String name;
  final String date;   // e.g. "2025-01-09"
  final String startTime;  // e.g. "8:00 PM"
  final String paranTime;  // e.g. "10:00 AM"
  final String endTime;  // e.g. "10:00 AM"

  Ekadashi({
    required this.name,
    required this.date,
    required this.startTime,
    required this.paranTime,
    required this.endTime,
  });

  // You can add a factory constructor to create Ekadashi objects from JSON if you're fetching data from a backend
  factory Ekadashi.fromJson(Map<String, dynamic> json) {
    return Ekadashi(
      name: json['name'],
      date: json['date'],
      startTime: json['startTime'],
      paranTime: json['paranTime'],
      endTime: json['endTime'],
    );
  }
}
