# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # main
  class Car
    attr_reader :color, :model, :year, :current_speed

    def self.default_car
      new({})
    end

    def initialize(hash)
      @model = hash.fetch(:model, 'audi')
      @color = hash.fetch(:color, 'yellow')
      @year = hash.fetch(:year, 'year')
      @current_speed = 0
    end

    def speed_up(velocity)
      @current_speed += velocity
    end

    def push_break(negative_velocity)
      return if @current_speed < negative_velocity
      @current_speed -= negative_velocity
    end
  end
end
