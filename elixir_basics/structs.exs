defmodule User do
  defstruct name: "", age: 0
end

defmodule PrintUser do
  def print do
    IO.inspect %User{name: "Michael", age: 29}
  end
end

PrintUser.print
