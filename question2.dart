// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐
/**
 * EXPECTED OUTPUT:
 * Student Scores: {Alice: <random>, Bob: <random>, ...}
 * Highest Score: <Name> with <Score>
 * Lowest Score: <Name> with <Score>
 * Average Score: <Value>
 * Alice: <Score> (Category)
 * ...
 */

import 'dart:math';

void main() {

  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];

  Map<String, int> studentScores = {};

  Random random = Random();
for (String name in studentNames) {
  studentScores[name] = 60 + random.nextInt(41);
}

  
  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  double averageScore = 0.0;


int total = 0;
studentScores.forEach((studentName, score) {
  total += score;
  if (score > highestScore) {
    highestScore = score;
    highestStudent = studentName;
  }
  if (score < lowestScore) {
    lowestScore = score;
    lowestStudent = studentName;
  }
});
averageScore = total / studentScores.length;

  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: $averageScore");

  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";

    switch (score) {
  case int s when s >= 90:
    category = "Excellent";
  case int s when s >= 80:
    category = "Good";
  case int s when s >= 70:
    category = "Average";
  default:
    category = "Needs Improvement";
}

    print("$student: $score ($category)");
  }
}
