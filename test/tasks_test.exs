defmodule TasksTest do
  use ExUnit.Case

  import Tasks

  describe "fib" do
    test "no 0th fibonacci" do
      assert "There is no 0th fibonacci" == fib(0)
    end

    test "first fibonacci" do
      assert 0 == fib(1)
    end

    test "second fibonacci" do
      assert 1 == fib(2)
    end

    test "fifth fibonacci" do
      assert 3 == fib(5)
    end

    test "21th fibonacci" do
      assert 6765 == fib(21)
    end
  end
end
