defmodule Fibonacci do
  def number(0) do 0 end
  def number(1) do 1 end

  def number(n) do
    number(n - 1) + number(n - 2)
  end
end
