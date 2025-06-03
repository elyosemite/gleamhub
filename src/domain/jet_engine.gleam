pub type UnitedStatesManufactorer {
  PrattAndWhitney
  GeneralElectricAviation
  HoneywellAerospace
}

pub type EuropeanManufactorer {
  RollsRoyce
  SafranAircraftEngines
  MTUAeroEngines
  EurojetTurboGmbH
}

pub type RussianManufactorer {
  NPOSaturn
  Aviadvigatel
  Tumansky
  Klimov
}

pub type ChineseManufactorer {
  ShenyangAviationEngine
  XianAeroEngineCorporation
  GuizhouAircraftIndustryCorporation
}

pub type JetEngine(manufactorer) {
  JetEngine(
    manufacturer: manufactorer,
    model: String,
    thrust: Int,
    fuel_consumption: Float,
    weight: Int,
  )
}
