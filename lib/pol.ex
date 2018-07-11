defmodule Pol do
  @moduledoc """
  Данный модуль предназначен для обучения тестированию
  """
  @doc """

  Эта функция принимает на входе строку и возвращает true, если строка - полиндром
  ## Examples

     iex> Pol.is_polyndrom?("garag")
     true

  """

  def is_polyndrom?(str), do: str == String.reverse(str)

end
