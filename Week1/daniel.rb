def num_unique_emails(emails)
  emails.map { |email| email.downcase.split('@') }
        .select{ |name, domain| !name.nil? && name != '' && !domain.nil? && domain != '' }
        .map { |name, domain| [name.split('+').first.gsub('.', ''), domain].join('@') }
        .uniq
        .count
end

if num_unique_emails(["test.email+alex@leetcode.com",
                      "test.e.mail+bob.cathy@leetcode.com",
                      "testemail+david@lee.tcode.com"]) == 2
  puts "\e[32mTest passes\e[0m"
else
  puts "\e[31mTest fails\e[0m"
end
