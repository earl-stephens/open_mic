class User
attr_reader :name,
            :jokes

  def initialize(name_arg)
    @name = name_arg
    @jokes = []
  end

  def learn(joke_arg)
    @jokes << joke_arg
  end

  def tell(listener_arg, joke_arg)
    listener_arg.learn(joke_arg)
  end

end
