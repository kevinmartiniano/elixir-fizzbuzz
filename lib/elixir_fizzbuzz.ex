defmodule ElixirFizzbuzz do

  def build(file_name) do
    file_name
    |> File.read()
    |> handle_file_head()
  end

  def handle_file_head({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
  end

  def handle_file_head({:error, reason}), do: "Error reading the file: #{reason}"

  def convert_and_evaluate_numbers(number) do
    number
    |> String.to_integer()
    |> fizz_buzz()
  end

  def fizz_buzz(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  def fizz_buzz(number) when rem(number, 3) == 0, do: :fizz
  def fizz_buzz(number) when rem(number, 5) == 0, do: :buzz
  def fizz_buzz(number), do: number
end
