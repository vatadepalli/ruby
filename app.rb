require "csv"
require_relative "classes/Person"
require_relative "classes/Email"
require_relative "classes/Mailbox"
require_relative "classes/MailboxHtmlFormatter"

person = Person.new("Ada")
person.password = "super secret"
puts person.encrypted_password

emails = CSV.read(File.join(__dir__, "data", "emails.csv"))
p emails

# emails = [
#     Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous" }),
#     Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana" }),
#     Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane" })
# ]

emails = emails.slice(1, emails.length).map {
  |email|
  Email.new(email[2], { :date => email[0], :from => email[1] })
}

mailbox = Mailbox.new("Ruby Study Group", emails)

mailbox.emails.each do |email|
  puts email
  puts
end

formatter = MailboxHtmlFormatter.new(mailbox)
puts formatter.format
# File.write(File.join(File.dirname(__FILE__), '..', 'dist', 'emails.html'), formatter.format)
File.write(File.join(__dir__, "dist", "emails.html"), formatter.format)
