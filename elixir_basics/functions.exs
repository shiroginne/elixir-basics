# Pattent matching
{a, b} = {"hello", "world"}

IO.puts("this is a => #{a}, this is b => #{b}")

{^a, b} = {"hello", "underworld!"}
# {^a, b} = {"halo", "underworld!"} => error: no match of right hand side value

{c, _} = {a, b}

IO.puts("this is c => #{c}")

# |> operator

[1, [2], 3] |> List.flatten()
[1, [2], 3] |> List.flatten |> Enum.map(fn x -> x * 2 end)

# Comprehensions http://elixir-lang.org/getting-started/comprehensions.html

# Functions & modules

Enum.map([1, 2, 3], fn(x) -> x * 2 end)

defmodule SimpleMath do
  def hello do
    IO.puts("hello")
  end

  def add_2(a) do
    a + 2
  end

  def zero?(0) do
    true
  end
  def zero?(x) when is_integer(x) do
    false
  end

  # def zero?(0), do: true
  # def zero?(x) when is_integer(x), do: false

  defp add_20(a) do
    a + 20
  end
end

add_4 = SimpleMath.add_2(0) + SimpleMath.add_2(0)
another_add_4 = SimpleMath.add_2(SimpleMath.add_2(0))
and_another_4 = &SimpleMath.add_2(&1) # fn x -> SimpleMath.add_2(x) end

IO.puts("guess answer? #{add_4}")
IO.puts("surprise! #{another_add_4}")
IO.puts("wow! #{and_another_4.(2)}")

defmodule SimpleStrings do
  def hello(a, b \\ "world") do
    IO.puts("#{a}, #{b}")
  end
end

IO.puts SimpleStrings.hello(a)
IO.puts SimpleStrings.hello(a, "underworld")
IO.puts SimpleStrings.hello(a, "underworld")

# Enum.reduce([1, 2, 3], 0, fn(x, acc) -> x + acc end)

# Guards http://elixir-lang.org/getting-started/case-cond-and-if.html#expressions-in-guard-clauses
