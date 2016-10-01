# Hello to Elixir. This is a comment!

IO.puts "Hello to Elixir!"

# Strings, chats, binaries

string = "String, 🏄🏻!"
IO.puts String.reverse(string)

chars = 'chars! wooow'
IO.puts chars

binary = <<0, 1, 2, 3>>
IO.inspect binary #!

# Atoms

atom = :this_is_atom

IO.puts atom

# Itegers and Floats

integer = 1
float = 1.0

IO.puts integer + float

# Booleans

IO.puts true || false

# Tuples

tuple = {:ok, "Halo!"}
{:ok, halo} = tuple
IO.puts halo

# Lists

list = [1,2,3]
another_list = list ++ [4,5,10]

# list => [head | tail]

IO.puts hd(list)
IO.puts tl(another_list)

Enum.max(list)

# Anonimous functions

a_func = fn a, b -> a + b end

IO.puts("function result #{a_func.(2,4)}")

# Keyword Lists

k_list = [{:a, 1}, {:b, 2}]
IO.inspect k_list

# Maps

map = %{a: 1, b: 2}

Map.get(map, :a)
new_map = Map.put(map, :c, 3) # http://elixir-lang.org/docs/stable/elixir/Map.html#put

IO.puts new_map.c

# End of part 1

IO.puts "Bye! 🖖🏻"
