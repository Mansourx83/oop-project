import 'Academy .dart';

void main(List<String> args) {
  Student joe = Student(
    name: 'Yousef',
    age: 20,
    faculty: 'CS',
    email: 'yousef83@gmail.com',
    phone: '0115436219',
    address: 'Banha',
  );
  Student ziad = Student(
    name: 'Ziad',
    age: 22,
    faculty: 'IT',
    email: 'zaza22@gmail.com',
    phone: '01236354902',
    address: 'Cairo',
  );
  Instructor goba = Instructor(
    lessons: ['Intro', 'Basics', 'Dart', 'Flutter '],
    name: 'Youssef goba',
    age: 28,
    email: 'goba28@gmail.com',
    address: 'Dokki',
  );
  Group sat28 = Group(
    nameOfGroup: 'sat28',
    instructor: goba,
    students: [joe, ziad],
    date: DateTime(2020, 10, 10),
  );
  print(joe);
  print(ziad);
  print(goba);
  print(sat28);
  joe.attends();
  ziad.attends();
  joe.attends();
  goba.addLesson('Design Patterns');
  goba.showLessons();
  sat28.deletStident(joe);
  print(sat28);
  Student mariam = Student(
    name: 'Mariam',
    age: 21,
    faculty: 'IS',
    email: 'mariam8@gmail.com',
    phone: '0115564519',
    address: 'Banha',
  );
  Student sara = Student(
    name: 'sara',
    age: 18,
    faculty: 'Eng',
    email: 'sara18@gmail.com',
    phone: '01295144902',
    address: 'Cairo',
  );
  sat28.addStudent(mariam);
  sat28.addStudent(sara);
  print(sat28);
  sat28.showStudentsNames();
}
