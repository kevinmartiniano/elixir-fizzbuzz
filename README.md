# ElixirFizzbuzz

**O FizzBuzz é um exercício bastante utilizado para auxiliar a começar a praticar alguma linguagem de programação.**

**Para realizar esse exercício devemos retornar fizz quando o número é multiplo de 3, retornar buzz quando o número é multiplo de 5, retornar fizzbuzz quando o número é multiplo de ambos e retornar o próprio número quando ele não é multiplo de nenhum dos anteriores.**

**Neste projeto, utilizamos uma lista de números salvos em um arquivo txt, mas o mesmo poderia ser feito para alguma entrada de usuário.**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixir_fizzbuzz` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elixir_fizzbuzz, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/elixir_fizzbuzz](https://hexdocs.pm/elixir_fizzbuzz).

## Executar

Você pode rodar este projeto de duas formas.

Primeira forma é executar um "mix test" em seu terminal, onde os testes serão executados.

A segunda é executar iex -S mix em seu terminal, onde será aberto um espaço onde você pode executar comandos do elixir, neste momento você deverá rodar o comando ElixirFizzbuzz.build("numbers.txt") e com isso verá o retorno de sucesso da função, ou trocar o nome do arquivo passado e verá o retorno de erro, como por exemplo rodar ElixirFizzbuzz.build("invalid.txt")
