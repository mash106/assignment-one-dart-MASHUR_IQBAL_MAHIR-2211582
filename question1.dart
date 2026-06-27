  // Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐
/**
 * EXPECTED OUTPUT:
 * Name: John Doe, Age: 25, Height: 5.9, Is Student: true
 * BMI: 22.5
 * Grade: B
 */

String name = "";
int age = 0;
double height = 0.0;
bool isStudent = false;


double calculateBMI(double weight, double height) {
   return weight / (height * height);

}

String getGrade(int score) {
  if (score >= 90) return "A";
  if (score >= 80) return "B";
  if (score >= 70) return "C";
  if (score >= 60) return "D";
  return "F";
}

void main() {
  name = "John Doe";
  age = 25;
  height = 5.9;
  isStudent = true;

  double bmi = calculateBMI(90.0, 2.0);
  String grade = getGrade(85);

  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  print("BMI: $bmi");
  print("Grade: $grade");
}
