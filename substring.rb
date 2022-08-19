def substrings(string, dico)
  string_arr = string.split
  dico.reduce({}) do |hash, value|
    if string.downcase.include?(value.downcase)
      hash[value] = string_arr.count {|x| x.downcase.include?(value.downcase)}
    end
    hash
  end
end

my_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", my_dictionary)

