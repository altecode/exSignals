# ExSignal

Django like signals implementation in elixir

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_signal` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_signal, "~> 0.1.0"}
  ]
end
```


```elixir
  defmodule SignalsDemo do
    # The result of any function decorated as a signal
    # is sent to the receivers of the named signal
    @signal("some_signal_name")
    def foo() do
      :foo
    end

    # Receiever is any arity 1 function
    # Gets called with the result of the sender
    @receiver("some_signal_name")
    def bar(foo) do
      IO.inspect("Recieved #{foo}")
    end
  end
```
