puts "🌱 Seeding spices..."

User.create(username: "Benny", password: "bennysuf00")
User.create(username: "Steve", password: "wonderer")
User.create(username: "Bob", password: "bobsworld")

Post.create(body: "Hello", user_id: 1 )
Post.create(body: "Goodbye", user_id: 3)
Post.create(body: "Testing", user_id: 2 )
Post.create(body: "Whatever", user_id: 1)
Post.create(body: "The Stack component manages layout of immediate children along the vertical or horizontal axis with optional spacing and/or dividers between each child.", user_id: 4)
Post.create(body: "See the documentation below for a complete reference to all of the props and classes available to the components mentioned here.", user_id: 3 )
Post.create(body: "By default, Stack arranges items vertically in a column. However, the direction prop can be used to position items horizontally in a row as well.", user_id: 2)

# Message.create([
#   {
#     body: "Hello 👋",
#     username: "Liza"
#   },
#   {
#     body: "Hi!",
#     username: "Duane"
#   },
#   {
#     body: "let's get this chat app working",
#     username: "Liza"
#   },
#   {
#     body: "ngl, this looks like a lot 😬",
#     username: "Duane"
#   },
#   {
#     body: "You got this! 💪",
#     username: "Liza"
#   }
# ])

# Users
# Chats
# Messages


# Seed your database here

puts "✅ Done seeding!"
