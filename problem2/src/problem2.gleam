import gleam/int
import gleam/io
import gleam/list

pub fn main() {
  fib(1, 1)
  |> list.filter(int.is_even)
  |> list.fold(0, int.add)
  |> int.to_string
  |> io.println
}

fn fib(prev: Int, current: Int) -> List(Int) {
  case current >= 4_000_000 {
    True -> []
    False -> list.append([current], fib(current, current + prev))
  }
}
