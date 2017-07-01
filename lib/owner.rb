class Owner

	attr_accessor :pets, :name
	attr_reader :species
 	
 	@@all = []

	def initialize(species)
		@pets = {fishes: [], cats: [], dogs: []}
		@species = "human"
		@@all << self
		# keeps track of the owners that have been created


	end

	def self.all
		@@all
	end

	def self.reset_all
		self.all.clear
	end

	def save
		self.class.all << self
	end

	def self.count
		@@all.length
		# counts how many owners have been created
	end

	def say_species
		"I am a #{species}."
	end

	def buy_fish(name)
		new_fish = Fish.new(name)
		@pets[:fishes] << new_fish
		# buys a fish that is an instance of the Fish class
		# knows about its fishes
	end

	def buy_cat(name)
		new_cat = Cat.new(name)
		@pets[:cats] << new_cat
	end

	def buy_dog(name)
		new_dog = Dog.new(name)
		@pets[:dogs] << new_dog
	end

	def walk_dogs
		@pets[:dogs].each do |dog|
			dog.mood = "happy"
		end
		# access each dog from the hash, run the iterator 
		# change mood to happy
	end

	def play_with_cats
		@pets[:cats].each do |cat|
			cat.mood = "happy"
		end
	end

	def feed_fish
		@pets[:fishes].each do |fish|
			fish.mood = "happy"
		end
	end

	def sell_pets
		@pets.each do |species, pets|
			# go through the list
			pets.each do |pet|
				# go through the pets
				pet.mood = "nervous"
				# makes all pets nervous
			end
		end
		@pets = [] 
		# empty pets
	end

	def list_pets
		"I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."

		# length returns count of each key.
	end


end