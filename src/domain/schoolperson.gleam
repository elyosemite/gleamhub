import gleam/io

pub type SchoolPerson {
  Teacher(name: String, subject: String)
  Student(name: String)
}

pub fn to_string() -> Nil {
  let teacher = Teacher("Mr Schofield", "Physics")
  let student = Student("Koushiar")
  io.println(teacher.subject)
  io.println(teacher.name)
  io.println(student.name)
}
