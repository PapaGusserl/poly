defmodule Pal do
  require Logger

  @moduledoc """
  Данный модуль предназначен для обучения тестированию
  """
  @doc """

  Эта функция принимает на входе строку и возвращает true, если строка - полиндром
  ## Examples

     iex> Pal.is_palyndrom?("garag")
     true

  """

  @spec is_palyndrom?(String.t()) :: boolean | {:error, atom}

  def is_palyndrom?(str) when length(str) == 0, do: {:error, :string_is_empty}



  def is_palyndrom?(str) do
    str = str |> ignore_whitespace |> ignore_symbols |> ignore_case
    Logger.info str
    str == String.reverse(str)
  end

  defp ignore_whitespace(str), do: String.replace(str, " ", "")
  defp ignore_symbols(str),    do: String.replace(str, ~w/. - , — ^ ; : ? !/, "")
  defp ignore_case(str),       do: String.downcase(str)

end
