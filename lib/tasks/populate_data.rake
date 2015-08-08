namespace :db do
  desc "Erase and fill the database"
  task :populate => :environment do
    Faker::Config.locale = :en
    require 'faker'

    [Question,Answer].each(&:delete_all)
    Question.populate 1000 do |que|
      que.user_id = User.first.id
      que.title = Faker::Address.city
      Answer.populate 5  do |ans|
        ans.question_id = que.id
        ans.title = Faker::Lorem.sentence(rand(10..20))
        Comment.populate 2 do |comm|
          comm.desc = Faker::Lorem.sentence(rand(10..20))
          comm.answer_id = ans.id
        end
      end
    end
  end
end