defmodule Tasks do
  def frequencies(string) do
    list =
      string
      |> String.split()
      |> Enum.map(fn word -> String.downcase(word) end)

    frequencies_helper(list, %{})
  end

  defp frequencies_helper([], solution), do: solution

  defp frequencies_helper([_head | []], solution), do: solution

  defp frequencies_helper([head | tail], solution) do
    head = head

    count = Enum.count(tail, fn word -> word == head end) + 1
    tail = Enum.filter(tail, fn word -> word != head end)
    solution = Map.put(solution, head, count)
    frequencies_helper(tail, solution)
  end
end
