defmodule Tasks do
  def find_first(word) do
    word = String.to_charlist(word)
    find_first_helper(word)
  end

  defp find_first_helper([]), do: "no solution"

  defp find_first_helper([letter | rest]) do
    if letter in rest do
      rest = Enum.filter(rest, fn l -> l != letter end)
      find_first_helper(rest)
    else
      <<letter>>
    end
  end
end
