class AnswerWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(que_id)
    que = Question.find(que_id)
    5.times{|x| que.answers.create(title: "title_#{x}")}
  end
end