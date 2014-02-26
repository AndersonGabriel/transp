# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :remessa do
    codigorastreio "MyString"
    status "MyString"
    datapostagem "MyString"
    previsaoentrega "MyString"
    pedido nil
  end
end
