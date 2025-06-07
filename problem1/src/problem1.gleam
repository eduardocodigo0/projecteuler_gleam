import gleam/int
import gleam/io
import gleam/list

pub fn main() {
  list.range(0, 999)
  |> list.filter(fn(n) { n % 3 == 0 || n % 5 == 0 })
  |> list.fold(0, fn(acc, n) { n + acc })
  |> int.to_string
  |> io.println
}
