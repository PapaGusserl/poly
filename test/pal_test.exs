defmodule PalTest do
  use ExUnit.Case, async: true
  

  test "empty string" do
      assert Pal.is_palyndrom?("")==true
   end
   
   test "valid request" do
      assert Pal.is_palyndrom?("потоп")==true
   end
   
   test "valid request_1" do
      assert Pal.is_palyndrom?("А роза упала на лапу Азора")==true
   end
   
   test "invalid request" do
      assert Pal.is_palyndrom?("энциклопедия")==false
   end
end
