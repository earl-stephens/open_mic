class Joke
attr_reader :id,
            :setup,
            :punchline

  def initialize(id_arg, question_arg, answer_arg)
    @id = id_arg
    @setup = question_arg
    @punchline = answer_arg
  end

end
