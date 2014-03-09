# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :historico do
    evento "MyString"
    observacao "MyString"
    data "MyString"
    remessa nil
  end
end
