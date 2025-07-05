import 'dart:io';
/*
void add(int c, int d, [String ? s])
{
  int result;
  result = c + d;
  //print(result);

  print("${s ?? "s = null"} "); // null checking

  s != null ? print("$s = $result") : print(result); // ternary operator

 /* if(s != null)
    {
      print("$s = $result");
    }
  else
    {
      print(result);
    }*/
}

int sum(int a, int b) => a+b; // arrow syntax | single expression

void main()
{

  int ? a , b;
  a = int.tryParse(stdin.readLineSync()!);
  b = int.tryParse(stdin.readLineSync()!);
  //add(a!,b!, "sadi");
  add(a!,b!);
 // print(sum(a!, b!));

}*/

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


void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];


  Map<String, double> averages = {};
  for (var student in students) {
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores']);
    double average = scores.reduce((a, b) => a + b) / scores.length;
    averages[name] = double.parse(average.toStringAsFixed(2));
  }


  var sort = averages.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedAvg = {
    for (var result in sort) result.key: result.value
  };

  print(sortedAvg);
}

