defmodule TwitterScheduler do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(TwitterScheduler.Scheduler, [])
    ]

    opts = [stategy: :one_for_one, name: TwitterScheduler.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
