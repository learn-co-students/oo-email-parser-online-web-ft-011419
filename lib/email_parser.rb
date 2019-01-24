# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "pry"

class EmailParser
  attr_accessor :email

  @@email = []

  def initialize(email)
    @@email = Array.new
    @@email << email
  end

  def delete(array)
    new_array = array.reject{|obj| obj == ""}
    updated_array = new_array.reject{|obj| obj == ","}
    final_array = updated_array.reject{|obj| obj == " "}
    final_array.uniq
  end

  def parse
    @@email.collect do |email|
      ind_email = email.split(/(\s|,)/)
      emails = delete(ind_email)
      emails
    end.flatten
  end

end
