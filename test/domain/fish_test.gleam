import domain/fish
import gleam/option.{None, Some}
import gleeunit/should

pub fn has_favorite_color_test() {
  let favorite_color = "red"
  let fish = fish.Starfish("Nemo", favorite_color)
  let fish_favorite_color = fish.get_favourite_color(fish)
  should.equal(Some(favorite_color), fish_favorite_color)
}

pub fn has_not_favorite_color_test() {
  let fish = fish.Jellyfish("Hey bro, I am Jeffy fish", False)
  let fish_favorite_color = fish.get_favourite_color(fish)
  should.equal(None, fish_favorite_color)
}
