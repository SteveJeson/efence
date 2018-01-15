defmodule Efence do
  @moduledoc """
  Documentation for Efence.
  """
  use Application

  def start(_type, _args) do
    EfenceSup.Supervisor.start_link(name: EfenceSup.Supervisor)
  end
  @doc """
  Hello world.

  ## Examples

      iex> Efence.hello
      :world

  """
  def hello do
<<<<<<< HEAD
    :world
  end
  def sum(a, b) do
    sum = a + b
    {:ok, sum}
=======
#    Task.async()
>>>>>>> d7c555a8e31ca3e7b81e6bd97ac211b45202f86a
  end
end
