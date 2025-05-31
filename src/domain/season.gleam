pub type Season {
  Winter
  Spring
  Summer
  Autumn
}

pub fn weather(season: Season) -> String {
  case season {
    Spring -> "The weather is mild and flowers are blooming."
    Summer -> "The weather is hot and sunny."
    Autumn -> "The weather is cool and leaves are falling."
    Winter -> "The weather is cold and snowy."
  }
}

pub fn is_winter(season: Season) -> Bool {
  case season {
    Winter -> True
    _ -> False
  }
}

pub fn is_summer(season: Season) -> Bool {
  case season {
    Summer -> True
    _ -> False
  }
}

pub fn is_spring(season: Season) -> Bool {
  case season {
    Spring -> True
    _ -> False
  }
}

pub fn is_autumn(season: Season) -> Bool {
  case season {
    Autumn -> True
    _ -> False
  }
}
