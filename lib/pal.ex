defmodule Pal do
  @moduledoc """
  Данный модуль предназначен для обучения тестированию
  """
  @doc """

  Эта функция принимает на входе строку и возвращает true, если строка - полиндром
  ## Examples

     iex> Pal.is_palyndrom?("garag")
     true

  """

  def is_palyndrom?(str), do: str == String.reverse(str)

end
