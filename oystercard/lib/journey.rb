class Journey
  PENALTY_FARE = 6
  attr_reader :entry_station, :exit_station

  def initialize(entry_station: nil)
    @entry_station = entry_station
    @exit_station = nil
    @fare = PENALTY_FARE
  end
  
  def complete?
    @entry_station && @exit_station
  end 

  def finish(station)
    @exit_station = station
    return self
  end

  def fare
    if complete?
      @fare = 1
    end
    @fare
  end

  
end