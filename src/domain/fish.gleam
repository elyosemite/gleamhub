import gleam/io
import gleam/option.{type Option, None, Some}

pub type Fish {
  Starfish(name: String, favourite_color: String)
  Jellyfish(name: String, jiggly: Bool)
}

pub type IceCream {
  IceCream(flavour: String)
}

pub fn get_favourite_color(fish: Fish) -> Option(String) {
  case fish {
    Starfish(_, favourite_color) -> Some(favourite_color)
    Jellyfish(_, ..) -> None
  }
}

pub fn handle_fish(fish: Fish) {
  case fish {
    Starfish(_, favourite_color) -> io.println(favourite_color)
    Jellyfish(name, ..) -> io.println(name)
  }
}

pub fn handle_ice_cream(ice_cream: IceCream) {
  let IceCream(flavour) = ice_cream
  io.println(flavour)
}
