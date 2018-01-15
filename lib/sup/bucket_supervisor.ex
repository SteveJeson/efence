defmodule EfenceSup.BucketSupervisor do
  use Supervisor

  # A simple module attribute that stores the supervisor name
  @name EfenceSup.BucketSupervisor

  def start_link(_opts) do
    Supervisor.start_link(__MODULE__, :ok, name: @name)
  end

  def start_bucket do
    Supervisor.start_child(@name, [])
  end

  def init(:ok) do
    Supervisor.init([Efence.Bucket], strategy: :simple_one_for_one)
  end
end