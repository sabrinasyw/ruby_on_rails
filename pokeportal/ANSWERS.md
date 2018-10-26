# Q0: Why are these two errors being thrown?
1. rails db:migrate makes sure that our database schema is up to date.
Database tables are rigid. Once you declare the properties that a particular model has during your rails generate model command, there is no easy way to change the table to add a property. The way we have to go about doing this is through a concept called Migrations.

2. it doesn't know what "Pokemon" is because we haven't created the model yet

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
appear on the top of page randomly

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
Whenever we click on the button with name "Throw a Pokeball!", it goes to the path with prefix name capture and apply a patch method.

# Question 3: What would you name your own Pokemon?
supermon

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
a path, its prefix name.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
flash simply holds a message for your views to display.
errors.full_messages returns an array of all the error messages which is why you see the brackets and quotes. You can use .to_sentence to turn that array into a readable sentence

# Give us feedback on the project and decal below!
This project is much easier to follow than hw2. Love it. Thank you all the staff for always trying to make this class more approachable for students.

# Extra credit: Link your Heroku deployed app
I only implemented Heal method.

github repo link:
https://github.com/sabrinasyw/ruby_on_rails
