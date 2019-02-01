class Fish
  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name)
  	@name = name
  	@mood = "nervous"
  end

  def fish_owner
  	if self.owner == nil
		nil
	elsif self.owner.name
		self.owner.name
	end
  end
end