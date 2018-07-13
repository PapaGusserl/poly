defmodule PalTest do
  use ExUnit.Case, async: true

  describe "Заполнение межбуквенного пространства" do
  test "empty string" do
      assert Pal.is_palyndrom?("")==true
   end
   end

    describe "Положительные проверки" do
    test "valid request" do
      assert Pal.is_palyndrom?("потоп")==true
   end

   test "valid request_1" do
      assert Pal.is_palyndrom?("А роза упала на лапу Азора")==true
   end

   test "valid request_2" do
      assert Pal.is_palyndrom?("20800802")==true
   end

   test "valid request_2.1" do
      assert Pal.is_palyndrom?("А лис, он умен — крыса сыр к нему носила.")==true
   end
   end

   describe "Отрицательные проверки" do
   test "invalid request" do
      assert Pal.is_palyndrom?("энциклопедия")==false
   end

   test "invalid request_1" do
      refute Pal.is_palyndrom?("А лис, он умён — крыса сыр к нему носила.")==true
   end

   test "invalid request_2" do
    assert Pal.is_palyndrom?("А в Енисее —5 синева.")==false
   end
   end
end
