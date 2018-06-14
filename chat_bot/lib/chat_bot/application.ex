defmodule ChatBot.Application do
  use Application

  def start(_type, _args) do
    ChatBot.Supervisor.start_link
  end
end
