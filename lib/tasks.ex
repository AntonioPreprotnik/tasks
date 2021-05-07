defmodule Tasks do
  def fib(n) do
    case n do
      0 -> 0
      1 -> 1
      n -> fib(n - 1) + fib(n - 2)
    end
  end
end
