require 'pry'
class Person
    attr_accessor :bank_account, :happiness, :hygiene   #read and write
    attr_reader :name #you can only read the value, but not change it. 
    #attr_writer #you can only change a value but not read it.

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account
        @bank_account
        #self.bank_account = @bank_account 
    end

    def happiness
        if @happiness< 0
            @happiness = 0
        elsif @happiness > 10
            @happiness = 10
        end
        @happiness
    end

    def hygiene
        if @hygiene < 0
            @hygiene = 0
        elsif @hygiene > 10
            @hygiene = 10
        end
        @hygiene 
    end

    ###########

    def clean? #CORRECT
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def happy? #CORRECT
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        self.bank_account = @bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        #@hygiene = @hygiene + 4
        self.hygiene = @hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        #Person.happiness
        #Person.hygiene
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = self.happiness - 2
            friend.happiness = friend.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            friend.happiness = friend.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end
