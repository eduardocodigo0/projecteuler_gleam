import gleam/float
import gleam/int
import gleam/io
import gleam/result
import gleam_community/maths

const maxnumber = 600_851_475_143

pub fn main() {
  let root =
    int.square_root(maxnumber)
    |> result.unwrap(0.0)
    |> float.truncate

  io.println(
    "Root of " <> int.to_string(maxnumber) <> " = " <> int.to_string(root),
  )
  let factor = get_prime_factor(root, maxnumber)
  io.println(
    "Biggest prime factor of "
    <> int.to_string(maxnumber)
    <> " = "
    <> int.to_string(factor),
  )
}

fn get_prime_factor(step: Int, num: Int) -> Int {
  case num % step == 0 && maths.is_prime(step) {
    True -> step
    _ if step <= 1 -> 0
    _ -> get_prime_factor(step - 1, num)
  }
}
