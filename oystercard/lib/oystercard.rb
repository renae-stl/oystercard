require_relative 'journey'

class Oystercard
    BALANCE_LIMIT = 90
    BALANCE_MINIMUM = 1
    MINIMUM_FARE = 1.50
    PENALTY_FARE = 3
    attr_reader :balance, :journey_history, :journey

    def initialize
        @balance = 0
        @journey_history = []
        @journey = nil
    end

    def top_up(amount)
        @balance += amount
        fail "top up limit of £#{BALANCE_LIMIT} reached" if @balance >= BALANCE_LIMIT         
    end

    def touch_in(current_station)
      if @journey 
        deduct(@journey.fare)
        @journey_history.push(@journey)
      end
      fail "Insufficient funds" if @balance <= BALANCE_MINIMUM
      @journey = Journey.new(entry_station: current_station)
    end

    def touch_out(exit_station)
        if @journey == nil
            @journey = Journey.new
            deduct(@journey.fare)
        else
          @journey.finish(exit_station)
          deduct(@journey.fare)
          @journey_history.push(@journey)
        end
        @journey = nil
    end


    private

    def deduct(amount)
        @balance -= amount
    end



end
