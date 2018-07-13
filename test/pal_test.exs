defmodule PalTest do
  use ExUnit.Case, async: true
  
  ## Привет! У тебя в файлике много ненужных пробелов. В твоем редакторе кода наверняка есть функция для этого. trailing whitespace
  # Посмотри в гугле про это)
  # А ненужные пробелы - это зло. Баласт.

  test "empty string" do
      assert Pal.is_palyndrom?("")==true
   end
   
   test "valid request" do
      assert Pal.is_palyndrom?("потоп")==true
   end
   
   test "valid request_1" do
      assert Pal.is_palyndrom?("А роза упала на лапу Азора")==true
   end

   ## Этот тест не должен проходить, так как ё и е - разные буквы
   # Поэтому давай здесь сравнивать с false ИЛИ замени assert на refute
   test "valid request_2" do
      refute Pal.is_palyndrom?("А лис, он умён — крыса сыр к нему носила.")==true
   end
   
   ## А этот тест пройдет
   test "valid request_2.1" do
      assert Pal.is_palyndrom?("А лис, он умен — крыса сыр к нему носила.")==true
   end

   test "invalid request" do
      assert Pal.is_palyndrom?("энциклопедия")==false
   end
end
