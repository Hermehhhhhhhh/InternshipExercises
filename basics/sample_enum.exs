defmodule Sample.Enum do

  import IO
  # def first(list) do
  #   hd(list)
  # end

  # def first([]), do: nil
  # def first([head | _]), do: head

  # def first(list) when length(list) == 0, do: nil
  # def first([head | _]), do: head

  def first(list, val \\ nil)
  def first([head | _], _), do: head
  def first([], val ), do: val

  def add(list, val \\ 0) do
    trace(val)
    [val | list]
  end

  defp trace(string) do
    puts("The value passed in was #{string}")
  end
end
