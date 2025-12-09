# frozen_string_literal: true

module Categories
  class BCategory < BaseCategory
    def calculate_days_remaining!
      @days_remaining = days_remaining - 1
    end

    def calculate_quality!
      total_quality = quality + quality_difference
      @quality = [total_quality, 50].min
    end

    private

    def quality_difference
      days_remaining <= 0 ?
        2 :
        1
    end
  end
end
