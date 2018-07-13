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
   
   test "valid request_2" do
      assert Pal.is_palyndrom?("А лис, он умён — крыса сыр к нему носила.")==true
   end
   
   test "invalid request" do
      assert Pal.is_palyndrom?("энциклопедия")==false
   end
end
