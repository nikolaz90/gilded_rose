# frozen_string_literal: true

module Categories
  class ECategory < BaseCategory
    def calculate_days_remaining(days_remaining:)
      days_remaining - 1
    end

    def calculate_quality(days_remaining:, quality:)
      total_quality = quality - quality_difference(days_remaining)
      total_quality.positive? ? total_quality : 0
    end

    private

    def quality_difference(days_remaining)
      days_remaining <= 0 ?
        4 :
        2
    end
  end
end
