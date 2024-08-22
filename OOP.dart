class Student {
  String name;
  int age;
  String gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printStudentInfo() {
    print('Student Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printTeacherInfo() {
    print('Teacher Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

class School {
  void showInfo() {
    Student student = Student('Anne Apiyo', 16, '10th Grade');
    student.printStudentInfo();

    Teacher teacher = Teacher('Mr Ogal', 30, 'Mathematics');
    teacher.printTeacherInfo();
  }
}

void main() {
  School school = School();
  school.showInfo();
}
