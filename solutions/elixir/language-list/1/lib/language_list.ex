defmodule LanguageList do
  # Please implement the new/0 function
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove([_ | tail]) do
    tail
  end

  def first([head | _]) do
    head
  end

  def count([]), do: 0

  def count([_ | tail]), do: 1 + count(tail)

  def functional_list?(["Elixir" | _]), do: true
  def functional_list?([_ | tail]), do: functional_list?(tail)
  def functional_list?([]), do: false
end
