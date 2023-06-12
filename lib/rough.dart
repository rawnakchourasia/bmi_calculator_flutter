void main() {
  // Creating a map to represent student grades
  Map<String, int> studentGrades = {
    'John': 90,
    'Sarah': 85,
    'Michael': 92,
    'Emily': 88,
  };

  // Accessing values in the map
  int? johnGrade = studentGrades['John'];
  print('John\'s grade: $johnGrade'); // Output: John's grade: 90

  // Adding a new student and grade to the map
  studentGrades['David'] = 95;

  // Deleting a student from the map
  studentGrades.remove('Sarah');

  // Printing the number of students
  int numberOfStudents = studentGrades.length;
  print(
      'Number of students: $numberOfStudents'); // Output: Number of students: 3

  // Printing all the student names
  List<String> studentNames = studentGrades.keys.toList();
  print(
      'Student names: $studentNames'); // Output: Student names: [John, Michael, Emily, David]

  // Printing all the student grades
  List<int> grades = studentGrades.values.toList();
  print('Grades: $grades'); // Output: Grades: [90, 92, 88, 95]

  // Printing all the student names and grades
  studentGrades.forEach((name, grade) {
    print('$name: $grade');
  });
}
