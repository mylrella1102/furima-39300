FactoryBot.define do
  factory :order_address do
    postal_code{ "111-0000" }
    prefecture_id{ 7 }
    city{"横浜市緑区"}
    house_number{"青山1-1-1"}
    building{"柳ビル103"}
    phone_number{ '08011111111' }
    token {"tok_abcdefghijk00000000000000000"}

  end
end
