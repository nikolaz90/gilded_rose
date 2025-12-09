# frozen_string_literal: true

module Categories
  class DCategory < BaseCategory
    def calculate_days_remaining!
      days_remaining
    end

    def calculate_quality!
      quality
    end
  end
end
