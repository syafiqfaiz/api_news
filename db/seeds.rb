# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#user
5.times do 
	User.create(email: Faker::Internet.email, firstname: Faker::Name.first_name, lastname: Faker::Name.last_name)
end

#tag
10.times do 
	Tag.create(name: Faker::Lorem.word)
end

#post
20.times do 
	@user = User.all.sample
	@post = @user.posts.create(link: Faker::Internet.url)
	rand(1..6).times do
		Tag.all.sample.posts << @post
	end
end

#comment
50.times do 
	@post = Post.all.sample
	@user = User.all.sample
	@comment = @post.comments.create(text: Faker::Lorem.sentences)
	@user.comments << @comment
end

  # create_table "comments", force: :cascade do |t|
  #   t.string   "text"
  #   t.integer  "post_id"
  #   t.integer  "vote"
  #   t.integer  "user_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

  # create_table "post_tags", force: :cascade do |t|
  #   t.integer  "post_id"
  #   t.integer  "tag_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

  # create_table "posts", force: :cascade do |t|
  #   t.string   "link"
  #   t.integer  "vote"
  #   t.integer  "user_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

  # create_table "tags", force: :cascade do |t|
  #   t.string   "name"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

  # create_table "users", force: :cascade do |t|
  #   t.string   "email"
  #   t.string   "firstname"
  #   t.string   "lastname"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at