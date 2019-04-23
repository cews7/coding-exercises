# input: ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
# output: 2
# "testemail@leetcode.com" and "testemail@lee.tcode.com" actually receive mail

# we want to evaluate everything left of the @ and apply the '.' '+' rules
# we want to use a fresh collector to collect all the unqiue addresses
# return count of unique addresses
require 'pry'
class Filter
  def unique_emails(generic_email_list)
    num_unique_addresses = generic_email_list.map do |email|
      past_localname = false
      found_plus     = false
      cleaned_emails = email.chars.map do |char|
        past_localname = true if char.eql? '@'
        found_plus = true if char.eql? '+'
        !past_localname && char == '.' ? char = '' : char
        !past_localname && found_plus ? '' : char
      end.join
    end.uniq.count
    print num_unique_addresses
  end
end

input = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
Filter.new.unique_emails(input)
