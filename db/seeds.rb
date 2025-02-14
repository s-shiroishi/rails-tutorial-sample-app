# メインのサンプルユーザーを1人作成する
User.create!(name:  "taku",
             email: "sugu01140114@gmail.com",
             password:              "ws01140114",
             password_confirmation: "ws01140114",
             admin: true)

# 追加のユーザーをまとめて生成する
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
