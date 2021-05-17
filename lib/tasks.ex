defmodule Tasks do
  def frequencies(string) do
    string
    |> String.downcase()
    |> String.split()
    |> Enum.frequencies()
  end
end
