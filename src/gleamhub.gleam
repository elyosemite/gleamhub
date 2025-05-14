import gleam/bool
import gleam/float
import gleam/int
import gleam/io
import gleam/string

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
}
