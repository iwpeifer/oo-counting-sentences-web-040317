require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
  	self[-1] == "?" ? true : false
  end

  def exclamation?
  	self[-1] == "!" ? true : false
  end

  def count_sentences
  	result = self.split(". ")
  	result.map! do |s|
  		s.split("? ")
  	end
  	result.flatten!
  	result.map! do |s|
  		s.split("! ")
  	end
  	result.flatten.count
  end

end