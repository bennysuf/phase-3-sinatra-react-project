puts "🌱 Seeding spices..."

User.create(username: "Benny", password: "benny00")
User.create(username: "Steve", password: "wonderer")
User.create(username: "Bob", password: "bobsworld")
User.create(username: "Tarzan", password: "jungleman")

Post.create(body: "Hello", user_id: 1 )
Post.create(body: "Goodbye", user_id: 3)
Post.create(body: "Testing", user_id: 2 )
Post.create(body: "Doing my phase-3 project!", user_id: 1)
Post.create(body: "Does anyone want to talk about the political and economic state of the world?", user_id: 3)
Post.create(body: "RIP Harambe", user_id: 4 )
Post.create(body: "Apple over Samsung!", user_id: 2)

puts "✅ Done seeding!"
