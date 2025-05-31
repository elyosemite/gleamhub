pub type Person {
  Person(name: String, age: Int, needs_glasses: Bool)
}

pub fn has_glasses(person: Person) -> Bool {
  case person {
    Person(_, _, True) -> True
    _ -> False
  }
}
