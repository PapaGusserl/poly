defmodule Pal do
  require Logger

  @moduledoc """
  Данный модуль предназначен для обучения тестированию
  """
  @doc """

  Эта функция принимает на входе строку и возвращает true, если строка - полиндром
  ## Examples

     iex> Pal.is_polyndrom?("garag")
     true

  """

  def is_palyndrom?(str) do
    str = str |> ignore_whitespace |> ignore_symbols |> ignore_case
    str == String.reverse(str)
  end

  defp ignore_whitespace(str), do: String.replace(str, " ", "")
  defp ignore_symbols(str),    do: String.replace(str, ~w/. - , —/, "")
  defp ignore_case(str),       do: String.downcase(str)

end
