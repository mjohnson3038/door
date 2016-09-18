class Door
  attr_accessor :closed, :locked
  #having incription be an attr_reader ensures that it can not be changed.
  attr_reader :inscription

  def initialize(inscription, closed, locked)
    @inscription = inscription
    @closed = closed
    @locked = locked
  end

  def open
    if @closed == true && @locked == false
      @closed = false
    else
      raise ArgumentError.new("Error - A door may only be opened iff it is closed and unlocked")
    end
  end

end
