# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  
  attr_accessor :email
  #read/writer accessor for class EmailParser
  
  @@all = []
  
  def self.save
    self.class.all << self
  end
  
  def initialize(email)
    @email = email
  end
  
  def parse
    @email.split(/[,\s]+/).uniq
  end
end
