namespace :db do
  desc "Erase and fill the database"
  task :populate => :environment do
    Faker::Config.locale = :en
    require 'faker'

    [Question,Answer].each(&:delete_all)
    Question.populate 50000 do |que|
      que.user_id = User.first.id
      que.title = Faker::Address.city
      Answer.populate 20 do |ans|
        ans.user_id = User.first.id
        ans.parent_id = que.id
        ans.title = Faker::Lorem.sentence(rand(10..20))
      end
    end
  end
end