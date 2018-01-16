defmodule Sup.EfenceSup do
  @moduledoc false
  
  use Supervisor

  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg)
  end

  def init(_arg) do
    children = [
      worker(Efence.Main, [], restart: :permanent),
    ]

    supervise(children, strategy: :one_for_one)
  end
end