class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
  	@name = name
  	@mood = "nervous"
  end

  def dog_owner
  	if self.owner == nil
		nil
	elsif self.owner.name
		self.owner.name
	end
  end
end