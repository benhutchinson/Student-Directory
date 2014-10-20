# Arrange all the players into an array.

players = [
	{:name => "Mirco Antenucci", :squad => :season201415}, 
	{:name => "Marco Silvestri", :squad => :season201415}, 
	{:name => "Giuseppe Bellusci", :squad => :season201415}, 
	{:name => "Gaetano Berardi", :squad => :season201415}, 
	{:name => "Sam Byram", :squad => :season201415}, 
	{:name => "Stephen Warnock", :squad => :season201415}, 
	{:name => "Liam Cooper", :squad => :season201415}, 
	{:name => "Jason Pearce", :squad => :season201415}, 
	{:name => "Rodolph Austin", :squad => :season201415}, 
	{:name => "Tommasso Bianchi", :squad => :season201415}, 
	{:name => "Lewis Cook", :squad => :season201415}, 
	{:name => "Alex Mowatt", :squad => :season201415}, 
	{:name => "Luke Murphy", :squad => :season201415}, 
	{:name => "Nicky Ajose", :squad => :season201415}, 
	{:name => "Billy Sharp", :squad => :season201415}, 
	{:name => "Souleymane Doukara", :squad => :season201415}, 
]

def print_header
	puts "The players at Leeds United"
	puts "-------------------"
end

def print(players)
	players.each do |member| 
		puts "#{member[:name]} (#{member[:squad]} squad}"
	end
end

def print_footer(names)
	puts "Overall we have #{names.length} great players"
end

# nothing happens until we call the methods

print_header
print(players)
print_footer(players)