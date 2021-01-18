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

  def handle_file_head({:error, reason}), do: reason
end
