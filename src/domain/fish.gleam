import gleam/io

pub type Fish {
  Starfish(name: String, favourite_color: String)
  Jellyfish(name: String, jiggly: Bool)
}

pub type IceCream {
  IceCream(flavour: String)
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
