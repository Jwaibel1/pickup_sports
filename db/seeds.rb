(1..10).each do |i|
    user = User.create(
        username: Faker::Internet.username(specifier: 3..20, separators: %w(_)),
        email: Faker::Internet.email,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        password: 'secret',
        password_confirmation: 'secret'
    )

    rand(1..10).times do
        user.posts.create(content: Faker::Lorem.paragraph)
    end
end