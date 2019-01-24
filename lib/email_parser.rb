require "pry"
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  
  def initialize(emails)
    @emails = emails
  end
  
  attr_accessor :emails
  
  def parse
    email_array = @emails.split(/[\s,]+/)
    email_array.uniq
  end
end