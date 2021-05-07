defmodule TaskTsest do
  use ExUnit.Case
  import Tasks

  describe "testing fibonacci" do
    test "fib(0)" do
      assert 0 = fib(0)
    end

    test "fib(1)" do
      assert 1 = fib(1)
    end

    test "fib(5)" do
      assert 5 = fib(5)
    end
  end
end
