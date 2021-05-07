defmodule Tasks do
  def fib(0), do: "There is no 0th fibonacci"
  def fib(1), do: 0
  def fib(2), do: 1
  def fib(n), do: fib(n - 1) + fib(n - 2)
end
