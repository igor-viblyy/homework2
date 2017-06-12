# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # class Car
  class Car
    attr_reader :model, :year, :color, :current_speed

    DEFAULT_CAR = {
      color: 'purple',
      model: 'skyline',
      year: 2015
    }.freeze

    def self.default_car
      new
    end

    def initialize(attr)
      @model = attr.fetch(:@model, DEFAULT_CAR[:model])
      @year = attr.fetch(:@year, DEFAULT_CAR[:year])
      @color = attr.fetch(:@color, DEFAULT_CAR[:color])
      @current_speed = 0
    end

    def speed_up(speed)
      @current_speed = speed.to_i
    end

    def push_break(breake_speed)
      @current_speed -= breake_speed if @current_speed >= breake_speed
    end
  end
end
