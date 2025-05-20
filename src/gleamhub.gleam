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

fn double(a: Int) -> Int {
  multiply(a, 2)
}

fn multiply(a: Int, b: Int) -> Int {
  a * b
}

fn add_one(argument: Int) -> Int {
  argument + 1
}

fn add(x: Int, y: Int) -> Int {
  x + y
}

fn twice(argument: Int, passed_function: fn(Int) -> Int) -> Int {
  passed_function(passed_function(argument))
}

fn generic_twice(argument: value, my_func: fn(value) -> value) -> value {
  my_func(my_func(my_func(argument)))
}

fn calculate(value: Int, add added: Int, multiply multiplier: Int) {
  value * multiplier + added
}

fn calculate_total_cost(
  quantity quantity: Float,
  unit_price price: Float,
  discount discount: Float,
) -> Float {
  let subtotal = quantity *. price
  let discount = subtotal *. discount
  subtotal -. discount
}

fn get_name(x: String) -> String {
  case x {
    //The pattern "Hello, " <> name matches any string that starts with "Hello, " 
    // and assigns the rest of the string to the variable name.
    "Hello, " <> name -> name
    _ -> "Unknown"
  }
}

fn study_case_expression() {
  let x = int.random(5)
  io.println(int.to_string(x))

  let result = case x {
    // Match specific values
    0 -> "Zero"
    1 -> "One"
    other -> "The other value is: " <> int.to_string(other)
  }

  io.println(result)
  io.println(get_name("Hello, Joe"))
  io.println(get_name("System still working?"))
}

fn study_list_patterns() {
  let x = list.repeat(int.random(5), times: int.random(3))
  list.each(x, fn(a) { io.println(int.to_string(a)) })

  let result = case x {
    [] -> "Empty list"
    [1] -> "List of just 1"
    [4, ..] -> "List starting with 4"
    [_, _] -> "List of 2 elements"
    _ -> "Some other list"
  }

  io.println(result)
}

pub fn main() -> Nil {
  io.println("Hello from gleamhub!")

  // echo 4
  // echo 1 + 1
  // echo 5 - 1
  // echo 5 / 2
  // echo 3 * 3
  // echo 5 % 2

  // // Int comparisons
  // echo 2 > 1
  // echo 2 < 1
  // echo 2 >= 1
  // echo 2 <= 1

  // echo int.max(42, 77)
  // echo int.clamp(5, 10, 20)

  // // Float Arithmetic
  // echo 1.0 +. 1.5
  // echo 5.0 -. 1.5
  // echo 5.0 /. 2.5
  // echo 3.0 *. 3.5

  // // Float comparisons
  // echo 2.2 >. 1.3
  // echo 2.2 <. 1.3
  // echo 2.2 >=. 1.3
  // echo 2.2 <=. 1.3

  // // Equality works for any type
  // echo 1.1 == 1.1
  // echo 2.1 == 1.2

  // // Division by zero is not an error
  // echo 3.14 /. 0.0

  // // Standard library float functions
  // echo float.max(2.0, 9.5)
  // echo float.ceiling(5.4)

  // // Bool operators
  // echo True && False
  // echo True && True
  // echo False || False
  // echo False || True

  // echo bool.to_string(True)

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
  //let one: UserId = 1
  //let two: Int = 2

  study_blocks()

  study_lists()

  // echo ints
  // echo ints == [1, 2, 3]
  // echo floats
  // echo floats == [1.1, 2.2, 3.3]

  // echo double(2)

  // echo twice(1, add_one)

  // let my_function = add_one
  // echo my_function(100)

  // // Assign an anonymous function to a variable
  // let add_two_anonymously = fn(a) { a + 2 }
  // echo twice(1, add_two_anonymously)

  // // Pass an anonymous function as an argument
  // echo twice(1, fn(a) { a + 3 })

  // let sercret_number = 42
  // // This anonynmous function always returns 42
  // let secret = fn() { sercret_number }
  // echo secret()

  // let add_one_v1 = fn(x) { add(1, x) }
  // let add_one_v2 = add(1, _)

  // echo add_one_v1(10)
  // echo add_one_v2(10)

  // Generic Functions
  // let add_three = fn(x) { x + 3 }
  // let exclaim = fn(x) { x <> "!" }
  // echo generic_twice(10, add_three)
  // echo generic_twice("Yuri", exclaim)

  // Pipelines

  // Without the pipe operator
  io.println(string.drop_start(string.drop_end("Hello, Yuri!", 1), 7))

  // With the pipe operator
  "Hello, Thamirys"
  |> string.drop_end(1)
  |> string.drop_start(7)
  |> io.println

  // Changing order with function capturing
  "1"
  |> string.append("2")
  |> string.append("3", _)
  |> io.println

  // Labelled arguments
  io.println(int.to_string(calculate(1, add: 2, multiply: 3)))

  // Label shorthand syntax
  let quantity = 5.0
  let unit_price = 10.0
  let discount = 0.2

  // Using the regular label syntax
  calculate_total_cost(
    quantity: quantity,
    unit_price: unit_price,
    discount: discount,
  )

  // Using the shorthand syntax
  calculate_total_cost(quantity:, unit_price:, discount:)

  study_case_expression()

  study_list_patterns()

  io.println("end of the file")
}
