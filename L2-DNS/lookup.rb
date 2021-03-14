def get_command_line_argument
  # ARGV is an array that Ruby defines for us,
  # which contains all the arguments we passed to it
  # when invoking the script from the command line.
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end

# `domain` contains the domain name we have to look up.
domain = get_command_line_argument

# File.readlines reads a file and returns an
# array of string, where each element is a line
dns_raw = File.readlines("zone.rb")

def parse_dns(dns_raw)
  dns_records ={}
  dns_raw.each do |record|
    if(record[0].chr != "#")
      record_array = record.split(',')
      dns_records[record_array[1].strip] = []
      dns_records[record_array[1].strip].push(record_array[0].strip)
      dns_records[record_array[1].strip].push(record_array[2].strip)
    end
  end
  dns_records
end

def resolve(dns_records, lookup_chain, domain)
  if(!dns_records.has_key?(domain))
    return lookup_chain
  elseif(dns_records[domain][0] == "A")
    lookup_chain.push(dns_records[domain][1])
  else
  lookup_chain.push(dns_records[domain][1])
  resolve(dns_records,lookup_chain,dns_records[domain][1])
  end
end

dns_records = parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
if(lookup_chain.length == 1)
  puts "Error: record not found for #{domain}"
else
  puts lookup_chain.join(" => ")
end
