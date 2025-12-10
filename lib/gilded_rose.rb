# frozen_string_literal: true

require_relative "categorizable"

class GildedRose
  include Categorizable

  attr_reader :name
  attr_accessor :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
    set_category
  end

  def tick
    calculate_quality!
    calculate_days_remaining!
  end

  private

  def calculate_days_remaining!
    @days_remaining = @category.calculate_days_remaining(days_remaining:)
  end

  def calculate_quality!
    @quality = @category.calculate_quality(days_remaining:, quality:)
  end
end
