import gleam/bool
import gleam/bytes_tree
import gleam/float
import gleam/int
import gleam/io
import gleam/list
import gleam/option.{type Option, None, Some}
import gleam/string
import gleam/string_tree.{type StringTree}

// Type Alias
pub type UserId =
  Int

pub fn great(option: Option(String)) -> String {
  case option {
    Some(name) -> "Hello " <> name
    None -> "Hello, World"
  }
}

pub fn seven_bit_little_endian_int() -> BitArray {
  <<2:size(7)-little>>
}

pub fn study_blocks() {
  io.println("Let's study blocks")
  let fahrenheit = {
    let degrees = 64
    degrees
  }
  // echo degrees
  //      ^^^^^^^ This will not compile

  // Changing order of evaluation
  let celsius = { fahrenheit - 32 } * 5 / 9
  io.println(int.to_string(celsius))
}

pub fn print_list(name: String, items: List(Int)) {
  let str_items = list.map(items, int.to_string)
  let joined = string.join(str_items, ", ")
  io.println(name <> ": [" <> joined <> "]")
}

pub fn study_lists() {
  let ints = [1, 2, 3]

  print_list("ints", ints)

  // Immutably prepend
  print_list("another list:", [-1, 0, ..ints])

  // Uncomment this to see the error
  // echo ["zero", ..ints]

  // The original lists are unchanged
  print_list("original list:", ints)
}

const ints: List(Int) = [1, 2, 3]

const floats = [1.1, 2.2, 3.3]

pub fn main() -> Nil {
  io.println("Hello from gleamhub!")

  echo 4
  echo 1 + 1
  echo 5 - 1
  echo 5 / 2
  echo 3 * 3
  echo 5 % 2

  // Int comparisons
  echo 2 > 1
  echo 2 < 1
  echo 2 >= 1
  echo 2 <= 1

  echo int.max(42, 77)
  echo int.clamp(5, 10, 20)

  // Float Arithmetic
  echo 1.0 +. 1.5
  echo 5.0 -. 1.5
  echo 5.0 /. 2.5
  echo 3.0 *. 3.5

  // Float comparisons
  echo 2.2 >. 1.3
  echo 2.2 <. 1.3
  echo 2.2 >=. 1.3
  echo 2.2 <=. 1.3

  // Equality works for any type
  echo 1.1 == 1.1
  echo 2.1 == 1.2

  // Division by zero is not an error
  echo 3.14 /. 0.0

  // Standard library float functions
  echo float.max(2.0, 9.5)
  echo float.ceiling(5.4)

  // Bool operators
  echo True && False
  echo True && True
  echo False || False
  echo False || True

  echo bool.to_string(True)

  // String Concat
  io.println("one " <> "two")

  io.println(string.reverse("Hello, Joe!"))
  io.println(string.append("abc", "def"))

  // Assignments
  let x = "Original"
  io.println(x)

  let y = x
  io.println(y)

  let x = "New"
  io.println(x)
  io.println(y)
  // Discard Patterns
  // This variable is never used
  // Uncomment this and look at the warning
  //let _score = 1000

  let _name: String = "Gleam"
  let _is_cool: Bool = True
  let _version: Int = 1
  io.println("teste")

  // Type imports

  // Referring to a type in a qualified way
  let _bytes: bytes_tree.BytesTree = bytes_tree.new()

  // Refering to a type in an unqualified way
  let _text: StringTree = string_tree.new()

  // By using Type aliases
  let one: UserId = 1
  let two: Int = 2

  study_blocks()

  study_lists()

  echo ints
  echo ints == [1, 2, 3]
  echo floats
  echo floats == [1.1, 2.2, 3.3]
  io.println("end of the file")
}
