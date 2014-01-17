class Challenge < ActiveRecord::Base
	before_save { self.description = description.titleize }
	has_and_belongs_to_many :users
	default_scope -> { order('created_at DESC') }

	def self.all_types
		[	
			"pushups",
			"running",
			"pie-eating contest",
			"donkey racing",
			"yak shaving",
			"karate",
			"karaoke",
			"knitting",
			"horse back riding",
			"chili cookoff",
			"jello wrestling",
			"carpet cleaning",
			"chess",
			"checkers",
			"scrabble",
			"jenga",
			"lawnmowing",
			"blood donation",
			"steve jobs look-alike contest",
			"coffee brewing",
			"body hiding",
			"water filtration",
			"pasta making",
			"pea shooting",
			"moustache growing",
			"pokemon battle",
			"air guitar",
			"rock paper scissors",
			"curling",
			"jamaican bobsledding",
			"cheese rolling",
			"extreme ironing",
			"javelin",
			"shoelace tying",
			"sheep counting",
			"spin the bottle",
			"hot dog eating",
			"pumpkin catapaulting",
			"ostrich racing",
			"yodeling",
			"tug o war",
			"table tennis",
			"don't spill the beans",
			"cat herding",
			"being the ugliest",
			"arm wrestling",
			"fly fishing",
			"spelling bee",
			"chest hair removal",
			"fire breathing",
			"lego tower building",
			"falcon training",
			"having the most hobbit-like feet",
			"billboard painting",
			"bird watching",
			"bluetooth device ownership",
			"janitorial services",
			"self-tattooing"
		]	
	end
end
