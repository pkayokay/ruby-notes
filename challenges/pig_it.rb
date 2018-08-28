def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end

puts pig_it("Hello world")

