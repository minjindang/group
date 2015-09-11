# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Running..."
# create_account = User.create([email: 'example@gmail.com', password: '12345678', password_confirmation: '12345678', name: '測試用帳號'])
create_groups = for i in 1..20 do
    Group.create!([title: "Group no.#{i}", description: "測試資料第 #{i} 個討論版", user_id: "1"])
    for k in 1..30 do
        Post.create!([group_id: "#{i}",content: "測試資料第 #{k} 個留言", user_id: "1"])
    end
end
puts "Finish!!!"
