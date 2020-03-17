defmodule ExSignalTest do
  use ExUnit.Case
  doctest ExSignal

  test "greets the world" do
    assert ExSignal.hello() == :world
  end
end
