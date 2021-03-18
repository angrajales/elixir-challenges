check_palindrome = fn word ->
  {word, (word |> String.graphemes) == (word |> String.reverse |> String.graphemes) }
end
result = File.read!("in.txt")
  |> String.split(:binary.compile_pattern(["\r\n", "\n"]), trim: true)
  |> Enum.map(&check_palindrome.(&1))
  |> Enum.reduce("", &(&2 <> "#{elem(&1, 0)}: #{elem(&1, 1)}" <> "\n"))
File.write!("out.txt", result, mode: :write)
