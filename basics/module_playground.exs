defmodule ModulePlayground do
  # IMPORT DIRECTIVE
  # import IO # import all functions in module IO
  import IO, only: [puts: 1] # import "puts" function only from module IO
  import Kernel, except: [inspect: 1] # imports all function from module Kernel except "inspect" function

  # ALIAS DIRECTIVE
  alias ModulePlayground.Misc.Util.Math, as: MyMath

  # RERQUIRE DIRECTIVE
  # require Integer

  def say_here do
    # IO.puts "Hello World"
    # puts "Hello World" # because we import module IO
    inspect "I'm here"
  end

  def inspect(param1) do
    puts "Starting Ouput"
    puts param1
    puts "Ending ouput"
  end

  def print_sum do
    MyMath.add(1,2)
  end

  # def print_is_even(num) do
  #   puts "Is #{num} even? #{Integer.is_eve(num)}"
  # end

end
