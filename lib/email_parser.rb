# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser
    attr_reader :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        email_addresses.split(/[, ]/).reject {|e| e.empty?}.uniq
    end
    
end

EmailAddressParser.new("avi@test.com, arel@test.com").parse