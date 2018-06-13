# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :twitter_scheduler, TwitterScheduler.Scheduler,
  jobs: [
    # Every minute
    {"* * * * *",              {Heartbeat, :send, []}},
    {{:cron, "* * * * *"},     {Heartbeat, :send, []}},
    # Every second
    {{:extended, "* * * * *"}, {Heartbeat, :send, []}},
    # Every 15 minutes
    {"*/15 * * * *",           fn -> System.cmd("rm", ["/tmp/tmp_"]) end},
    # Runs on 18, 20, 22, 0, 2, 4, 6:
    {"0 18-6/2 * * *",         fn -> :mnesia.backup('/var/backup/mnesia') end},
    # Runs every midnight:
    {"@daily",                 {Backup, :backup, []}}
  ]

config :logger,
  level: :debug
