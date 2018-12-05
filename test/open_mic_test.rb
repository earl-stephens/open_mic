require 'minitest/autorun'
require 'minitest/pride'
require './lib/joke'
require './lib/user'
require './lib/open_mic'
require 'pry'

class OpenMicTest < Minitest::Test

  def test_it_exists
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    assert_instance_of OpenMic, open_mic
  end

  def test_it_has_a_location
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    assert_equal "Comedy Works", open_mic.location
  end

  def test_it_has_a_date
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    assert_equal "11-20-18", open_mic.date
  end

  def test_it_can_display_performers
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    assert_equal [], open_mic.performers
  end

  def test_it_can_accept_a_performer
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    sal = User.new("Sal")
    open_mic.welcome(sal)
    assert_equal [sal], open_mic.performers
  end

  def test_it_can_accept_multiple_performers
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    sal = User.new("Sal")
    ali = User.new("Ali")
    open_mic.welcome(sal)
    open_mic.welcome(ali)
    assert_equal [sal, ali], open_mic.performers
  end


end
