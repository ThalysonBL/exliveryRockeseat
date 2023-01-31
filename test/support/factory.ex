defmodule Exlivery.Factory do
    use ExMachina

    alias Exlivery.Users.User
    def user_factory do
      %User{
        address: "rua teste banana",
        age: "27",
        cpf: "123456789",
        email: "rafa@gmail.vcom",
        name: "Rafael",
      }
    end
end
