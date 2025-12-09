# frozen_string_literal: true

module Categories
  class BaseCategory
    attr_reader :days_remaining, :quality

    def initialize(days_remaining:, quality:)
      @days_remaining = days_remaining
      @quality = quality
    end

    def calculate_quality!
      raise NotImplementedError
    end

    def calculate_days_remaining!
      raise NotImplementedError
    end
  end
end
