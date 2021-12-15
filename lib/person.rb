# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  #ClassName#method_name = instance method
  #ClassName.method_name = method to call on class

  def happiness=(value)
    #min is 0, max is 10
    @happiness=
      if value > 10
        10
      elsif value < 0
        0
      else
        value
      end
    #Could also use .clamp
    #@happiness = num.clamp(0, 10)
  end

  def hygiene=(value)
    #min is 0, max is 10
    @hygiene=
      if value > 10
        10
      elsif value < 0
        0
      else
        value
      end
      #Could also use .clamp
      #@happiness = num.clamp(0, 10)
  end

  def clean?
    #returns true if hygiene is more than 7
    self.hygiene > 7
  end

  def happy?
    #returns true if happiness is more than 7
    self.happiness > 7
  end

  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
      when "politics"
        self.happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
      when "weather"
        self.happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
    end
  end






end