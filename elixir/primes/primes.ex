# Primes between 1 and n
n = 15578
Enum.filter(
  1..n,
  &(&1 == 2 || Enum.all?(2..&1 - 1, fn x -> rem(&1, x) != 0 end))
) |> Enum.each(&(IO.puts/1))

IO.puts("Number of primes less than #{n} is ")
# Number of primes
Enum.filter(
  1..n,
  &(&1 == 2 || Enum.all?(2..&1 - 1, fn x -> rem(&1, x) != 0 end))
) |> Enum.count |> IO.puts()
