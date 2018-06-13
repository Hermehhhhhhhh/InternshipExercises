defmodule TwitterScheduler.Scheduler do
  use Quantum.Scheduler,
  otp_app: :twitter_scheduler

  # def schedule_file(schedule, file) do
  #   Quantum.add_job(schedule, fn -> IO.puts TwitterScheduler.FileReader.get_strings_to_tweet(file)end)
  # end

end
