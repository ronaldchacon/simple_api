5.times do
  Post.create(
    {
      title: Faker::Hacker.say_something_smart,
      url: Faker::Internet.url
    }
  )
end
