defmodule ChatBot.Server do
  use GenServer
  import IO
  # CLIENT SIDE
  def start_link do
    # GenServer.start_link(ChatBot.Server, [])
    puts "1"
    GenServer.start_link(__MODULE__, [], name: :chat_room)
  end

  def get_msgs do
    puts "2"
    GenServer.call(:chat_room, :get_msgs) #synchronous
  end

  def add_msg(msg) do
    puts "3"
    GenServer.cast(:chat_room, {:add_msg, msg})
    get_msgs()
  end

  # SERVER SIDE
  def init(msgs) do
    puts "4"
    {:ok, msgs}
  end

  def handle_call(:get_msgs, _form, msgs) do
    puts "5"
    {:reply, msgs, msgs}
  end

  def handle_cast({:add_msg, msg}, msgs) do
    puts "6"
    # {:noreply, [msg | msgs]}
    {:noreply, [msg | msgs]}
  end
end



# NOTES:
#  command1 : {:ok, pid} = ChatBot.Server.start_link
#             runs: start_link and init (1, 4)
#
#  command2 : ChatBot.Server.add_msg(pid, "Hi")
#             runs: add_msg and handle_cast (2, 5)
#
#  command3 : ChatBot.Server.get_msgs(pid)
#             runs: get_msgs and handle_call (3, 6)
