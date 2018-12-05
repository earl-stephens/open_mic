require './lib/user'

class OpenMic
  attr_reader :information,
              :performers

  def initialize(information_arg)
    @information = information_arg
    @performers = []
  end

  def location
    location = @information[:location]
  end

  def date
    date = @information[:date]
  end

  def welcome(performer_name)
    @performers << performer_name
  end

  def repeated_jokes?
     if @performers[1].knows_joke?
     elsif @performers[0].knows_joke?
       return false
     end
  end

end
