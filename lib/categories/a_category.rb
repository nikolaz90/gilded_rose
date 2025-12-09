# frozen_string_literal: true

module Categories
  class ACategory < BaseCategory
    def calculate_days_remaining!
      @days_remaining = days_remaining - 1
    end

    def calculate_quality!
      total_quality = quality - quality_difference
      @quality = total_quality.positive? ? total_quality : 0
    end

    private

    def quality_difference
      days_remaining <= 0 ?
        2 :
        1
    end
  end
end
