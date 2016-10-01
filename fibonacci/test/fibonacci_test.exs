defmodule FibonacciTest do
  use ExUnit.Case

  test "number returns Fibonacci number" do
    assert Fibonacci.number(0) == 0
    assert Fibonacci.number(1) == 1
    assert Fibonacci.number(2) == 1
    assert Fibonacci.number(3) == 2

    assert Fibonacci.number(10) == 55
    assert Fibonacci.number(11) == 89
  end

end
