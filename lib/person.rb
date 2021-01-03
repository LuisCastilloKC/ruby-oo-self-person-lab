# your code goes here
class Person

    attr_accessor :bank_account, :happiness, :hygiene, :bank_account
    attr_reader :name

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8         
    end

    def name
        @name
    end

    def happiness
        @happiness.clamp(0,10)
    end
    def hygiene 
        @hygiene.clamp(0,10)   
    end

    def happy?
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary)
       @bank_account += salary
      "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness -= -2 
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness +=3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"   
    end

    def start_conversation(person, topic)
        
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end


# Person
#   instantiation
#     ::new
#       a new person is instantiated with a name
#     #initialize
#       #name
#         a new person knows its name once he/she has been initialized
#         a new person instance cannot overwrite the name it was instantied with
#       #bank_account
#         a new person instance is initialized with a bank_account balance of $25
#         a person instance can change his/her bank_account amount
#       #happiness
#         a new person instance is initialized with a happiness index of 8
#         a person instance can change his/her happiness index
#         a person's happiness doesn't exceed 10
#         a person's happiness doesn't go below 0
#       #hygiene
#         a person instance is initialized with a hygiene index of 8
#         a person instance can change its hygiene index
#         a person instance's hygiene index cannot exceed 10
#         a person instance hygiene index cannot be less than 0
#   non-attribute instance methods
#     #happy?
#       returns true if happiness is greater than seven, else false
#     #clean?
#       returns true if hygiene is greater than seven, else false
#     #get_paid
#       accepts an argument of salary
#       increments bank_account by the salary
#       returns 'all about the benjamins'
#     #take_bath
#       makes the person cleaner by 4 points
#       returns a song
#       can't make a person cleaner by 10 points (hint: use the custom #hygiene= method)
#       calls on the #hygiene= method to increment hygiene
#     #work_out
#       makes the person dirtier by 3 points
#       never makes the person have negative dirty points
#         (hint: use the #hygiene= method)
#       calls on the #hygiene= method to decrease hygiene
#       makes the person happier by 2 points
#       never makes the person have more than 10 happiness points
#         (hint: use the #happiness= method)
#       calls on the #happiness= method to increment happiness
#       returns Queen lyrics
#     #call_friend
#       accepts one argument, an instance of the Person class
#       makes the person calling happier by three points
#       makes the friend happier by three points
#       never makes the happiness of either party exceed 10
#         (hint: use the cutom #happiness= method)
#       calls on the #happiness= method to increment happiness
#       returns a string that reflects the caller's side of the conversation
#     #start_conversation
#       accepts two arguments, a person to strike a convo with and a topic
#       topic: politics
#         returns 'blah blah partisan blah lobbyist' if the topic is politics
#         if topic is politics, it makes both people in the convo two points less happy
#         never makes either party less than 0 points happy (never negative)
#           (hint: use your #happiness= method)
#         calls on the #happiness= method
#       topic: weather
#         returns 'blah blah sun blah rain' if the topic is weather
#         if topic is weather, it makes both people in the convo one point more happy
#         never makes either party more than 10 points happy
#           (hint: use your #happiness= method)
#         calls on the #happiness= method
#       topic: other
#         returns 'blah blah blah blah blah' if the topic is not politics or weather
#         if topic is not politics or weather, it doesn't affect happiness

# Finished in 0.02696 seconds (files took 0.11874 seconds to load)
# 46 examples, 0 failures