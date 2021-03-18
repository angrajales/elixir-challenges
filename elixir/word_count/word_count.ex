result = File.read!("in.txt") |>
  String.split(~r/[ |\n|\,|\.]+/, trim: true) |>
  Enum.frequencies |>
  Enum.sort(&(elem(&1, 1) >= elem(&2, 1))) |>
  Enum.reduce("", &(&2 <> "#{elem(&1, 0)} : #{elem(&1, 1)}" <> "\n"))
File.write!("out.txt", result, mode: :write)
