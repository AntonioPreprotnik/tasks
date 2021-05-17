defmodule TasksTest do
  use ExUnit.Case
  import Tasks

  describe "frequencies" do
    test "ping pong pung" do
      result = frequencies("ping PING pong pung PiNg pInG Pang PoNg punG punG")

      assert Map.has_key?(result, "ping")
      refute Map.has_key?(result, "PING")
      assert Map.get(result, "ping") == 4

      assert Map.has_key?(result, "pong")
      refute Map.has_key?(result, "PoNg")
      assert Map.get(result, "pong") == 2

      assert Map.has_key?(result, "pung")
      refute Map.has_key?(result, "PUNG")
      assert Map.get(result, "pung") == 3
    end

    test "empty" do
      result = frequencies("")
      assert result == %{}
    end
  end
end
