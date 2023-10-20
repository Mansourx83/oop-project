class Person {
  String name;
  int age;
  String? address;
  String? phone;
  String? email;
  Person({
    required this.name,
    required this.age,
    this.address,
    this.email,
    this.phone,
  }) {}
  String toString() {
    return 'Person name: $name, age: $age, address: $address, phone: $phone, email: $email';
  }
}

class Instructor extends Person {
  List<String> lessons;
  Instructor({
    required this.lessons,
    required super.name,
    required super.age,
    super.phone,
    super.address,
    super.email,
  });
  @override
  String toString() {
    return 'Instructor name: $name , age: $age , lessons :$lessons , address: $address, phone: $phone , email: $email';
  }

  void showLessons() {
    for (var i = 0; i < lessons.length; i++) {
      print(' lesson ${i + 1} : ${lessons[i]}');
    }
  }

  void addLesson(String lesson) {
    if (lessons.contains(lesson)) {
      print('Lesson "$lesson" already exists.');
    } else
      lessons.add(lesson);
    print('$lesson is Added');
  }
}

class Student extends Person {
  int attend = 0;
  String faculty;
  Student(
      {required super.name,
      required super.age,
      required this.faculty,
      super.email,
      super.address,
      super.phone}) {}
  void attends() {
    attend += 1;
    print('$name has attended . Total attendance: $attend');
  }

  @override
  String toString() {
    return 'Student name: $name , age: $age , faculty : $faculty , address: $address, phone: $phone , email: $email';
  }
}

class Group {
  String nameOfGroup;
  Instructor instructor;
  DateTime date;
  List<Student> students;
  Group({
    required this.nameOfGroup,
    required this.instructor,
    required this.students,
    required this.date,
  }) {}
  @override
  String toString() =>
      'Group $nameOfGroup has Coach ${instructor.name} , which includes ${students.length} students, and its date is $date';

  void addStudent(Student student) {
    students.add(student);
  }

  void deletStident(Student student) {
    if (students.isEmpty) {
      print('the list of students is empty ');
    }
    if (students.contains(student)) {
      students.remove(student);
      print('${student.name} is removed ');
    } else {
      print('the student not exist ');
    }
  }

  void showStudentsNames() {
    for (var i = 0; i < students.length; i++) {
      print('Student ${i + 1} : ${students[i].name}');
    }
  }
}
