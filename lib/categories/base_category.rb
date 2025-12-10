# frozen_string_literal: true

module Categories
  class BaseCategory
    def calculate_quality!
      raise NotImplementedError
    end

    def calculate_days_remaining!
      raise NotImplementedError
    end
  end
end
