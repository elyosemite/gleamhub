import gleam/io

pub fn log_information(message: String) {
  io.println("LOG: " <> message)
}
