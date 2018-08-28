class MegaGreeter
  attr_accessor :names

  def initialize(names = 'World')
    @names = names
  end

  def say_hi
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('each')
      @names.each do |name|
        puts "Helllo #{name}"
      end
    else
      puts "Hello #{@names}"
    end
  end

  def say_bye
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('join')
      puts "Goodbye #{@names.join(', ')}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye
  puts
  # change to Zeke
  mg.names = 'Zeke'
  mg.say_hi
  mg.say_bye
  puts
  # change to an array of names
  mg.names = ['Rob', 'Bob','Scott']
  mg.say_hi
  mg.say_bye
  puts
  # change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye

end


end