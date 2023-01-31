## Exlivery: nome do projeto #Users nome da pasta # User nome do arquivo
defmodule Exlivery.Users.User do
  @keys [:address, :name, :email, :cpf, :age]
  ## Só posso passar uma strcut se definir os elementos dentro do array
  @enforce_keys @keys

  defstruct @keys

  ## se for maior que 18
  def build(address, name, email, cpf, age) when age >= 18 and is_bitstring(cpf) do
    {
      :ok,
      ### Esse formato imprimira o nome do próprio modulo Exlivery.Users.User
      %__MODULE__{
        address: address,
        ## name atribuimos a aridade name
        name: name,
        email: email,
        cpf: cpf,
        age: age
      }
    }
  end

  def build(_address, _name, _email, _cpf, _age), do: {:error, "Invalid parameters"}
end
