defmodule ElixirFizzbuzzTest do
  use ExUnit.Case

  describe "build/1" do

    test "when an invalid file is provided, return an error" do
      expected_respose = {:error, "Error reading the file: enoent"}

      file_name = "random.txt"

      assert ElixirFizzbuzz.build(file_name) == expected_respose
    end
  end
end
