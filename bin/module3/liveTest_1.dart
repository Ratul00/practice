import 'dart:io';

void main() {

  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];


  var s_avg = students.map((student) {
    var name = student["name"];
    var scores = student["scores"] as List<int>;
    var sum = scores.reduce((a, b) => a + b);
    var average = sum / scores.length;
    return {"name": name, "average": double.parse(average.toStringAsFixed(2))};
  }).toList();

  s_avg.sort((a, b) => (b["average"] as double).compareTo(a["average"] as double));


  var result = {};
  for (var student in s_avg) {
    result[student["name"]] = student["average"];
  }

  print(result);
}
