response = {
  "data" => {
    "user" => {
      "id" => 123,
      "name" => "George",
      "email" => "george@example.com",
      "profile" => {
        "city" => "Caçador",
        "country" => "Brazil"
      }
    }
  },
  "meta" => {
    "page" => 1,
    "per_page" => 20
  }
}

puts response.dig('data', 'user', 'name')

puts response.dig('data', 'user', 'profile', 'city')

puts response.dig('data', 'user').slice('id', 'name', 'email')

puts response.dig('data', 'user').slice('id', 'name', 'email').except('email')
