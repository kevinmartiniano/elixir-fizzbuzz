defmodule ElixirFizzbuzz do

  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_head()
  end

  defp handle_file_head({:ok, result}) do
    result =
      result
      |> String.split(",")
      |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, result}
  end

  defp handle_file_head({:error, reason}), do: {:error, "Error reading the file: #{reason}"}

  defp convert_and_evaluate_numbers(number) do
    number
    |> String.to_integer()
    |> fizz_buzz()
  end

  defp fizz_buzz(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  defp fizz_buzz(number) when rem(number, 3) == 0, do: :fizz
  defp fizz_buzz(number) when rem(number, 5) == 0, do: :buzz
  defp fizz_buzz(number), do: number

end
