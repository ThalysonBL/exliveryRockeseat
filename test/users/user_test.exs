defmodule Exlivery.Users.UserTest do
  use ExUnit.Case

  alias Exlivery.Users.User

  import Exlivery.Factory

  describe "build/5" do
    test "when all params are, valid, returns the user" do
      response =
        User.build(
          "rua teste banana"
          "27",
          "123456789",
          "rafa@gmail.vcom",
          "Rafael",
        )

      expected_response = {:ok, build(:user)}

      assert response == expected_response
    end

    test "when there are invalid prams, returns an  error" do
      response = User.build("Rua das bananeiras", "Thalyson", "thalyson@gmail.com", "123456", 15)

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
