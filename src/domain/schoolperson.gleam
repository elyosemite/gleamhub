import gleam/int
import gleam/io

pub type SchoolPerson {
  Teacher(name: String, subject: String, floor: Int, room: Int)
  Student(name: String)
}

// I am using update syntax to update the floor and room of a teacher
pub fn reset_floor_and_room(teacher: SchoolPerson) -> SchoolPerson {
  case teacher {
    Teacher(name, subject, _, _) -> Teacher(name, subject, 0, 0)
    Student(name) -> Student(name)
  }
}

pub fn to_string() -> Nil {
  let teacher = Teacher("Mr Schofield", "Physics", floor: 2, room: 2)
  let student = Student("Koushiar")
  io.println(teacher.subject)
  io.println(teacher.name)
  io.println(student.name)

  // update the teacher's floor and room with Record updates
  let updated_teacher = Teacher(..teacher, floor: 3, room: 3)
  io.println(updated_teacher.subject)

  // or by using the reset_floor_and_room function
  let reset_teacher = reset_floor_and_room(teacher)
  case reset_teacher {
    Teacher(name, subject, floor, room) -> {
      io.println(name)
      io.println(subject)
      io.println(int.to_string(floor))
      io.println(int.to_string(room))
    }
    Student(name) -> {
      io.println(name)
    }
  }
}
