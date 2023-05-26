FactoryBot.define do
  factory :order do
    postal_code
    prefecture_id
    city
    house_number
    building
    phone_number

    token {"tok_abcdefghijk00000000000000000"}
  end
end
