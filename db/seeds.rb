p "Destroying users"
User.destroy_all

users_h = [
  {
    email: "myriam@gmail.com",
    password: "myriam",
    username: "mymy"
  },
  {
    email: "marie@gmail.com",
    password: "maries",
    username: "marieszz"
  }
]

users_h.each do |user|
  u = User.new(user)
  u.save!
end
