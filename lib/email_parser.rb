# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  @emails = []
  def initialize(stuff)
    intermediate=stuff.split(" ")
    neolist=intermediate.join(",")
    emails_initial=neolist.split(",")
    emails = []
    emails_initial.each do |mail|
      if mail.length>4 && !emails.include?(mail)
        emails << mail
      end
    end
    @emails=emails
  end
  attr_accessor :emails
  def parse
    @emails
  end
end