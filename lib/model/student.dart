import 'dart:math';

class Student {
  String id;
  String name;
  String avg;

  Student(this.id, this.name, this.avg);

}

List<Student> students = List.generate(50, (index) {
  var rand = Random();
  return Student(index.toString(), "Student $index", (rand.nextInt(10) + 10).toString());
});