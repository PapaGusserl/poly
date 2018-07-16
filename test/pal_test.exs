defmodule PalTest do
  use ExUnit.Case, async: true
  @moduletag :capture_log

  describe "Заполнение межбуквенного пространства" do
    test "empty string" do
      assert Pal.is_palyndrom?("")==true
    end

    test "Знаки препинания" do
        assert Pal.is_palyndrom?("50^22:22;05")==true
    end

    test "Знаки препинания_1" do
        assert Pal.is_palyndrom?("Не диво ли, мама?! Хам, а миловиден!")==true
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

    ## это не палиндром посимвольный, а полиндром по словам) Это задаток для
    #нового функционала, но сейчас он будет выдавать лишь false
    test"valid request_3" do
        assert Pal.is_palyndrom?("King, are you glad you are king?")==true
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

    test "invalid request_3" do
        refute Pal.is_palyndrom?("еле ели")==true
    end

    test "invalid request_4" do
        refute Pal.is_palyndrom?("Доброе утро, madam!")==true
    end
    end

   import ExUnit.CaptureIO

    test "capture io" do
       result = capture_io(fn -> IO.puts "А в Енисее — синева" end)
        assert result=="А в Енисее — синева\n"
    end
end
