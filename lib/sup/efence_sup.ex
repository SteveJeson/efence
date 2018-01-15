defmodule EfenceSup.Supervisor do
  use Supervisor

  def start_link(opts) do
    Supervisor.start_link(__MODULE__, :ok, opts)
  end

  def init(:ok) do
    children = [
      EfenceSup.BucketSupervisor,
      {EfenceReg.Registry, name: EfenceReg.Registry},
      {Task.Supervisor, name: Efence.RouterTasks},
    ]

    Supervisor.init(children, strategy: :one_for_all)
  end
end