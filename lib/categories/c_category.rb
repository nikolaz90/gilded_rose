module Categories
  class CCategory < BaseCategory
    def calculate_days_remaining!
      @days_remaining = days_remaining - 1
    end

    def calculate_quality!
      return 0 if days_remaining <= 0

      total_quality = quality + quality_difference

      @quality = [total_quality, 50].min
    end

    private

    def quality_difference
      case days_remaining
      when (6..10)
        2
      when (0..5)
        3
      else
        1
      end
    end
  end
end
