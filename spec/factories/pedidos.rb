# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pedido do
    peso "MyString"
    dimensao "MyString"
    numero "MyString"
    cliente nil
    loja nil
  end
end
