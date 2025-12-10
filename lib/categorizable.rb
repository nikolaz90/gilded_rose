# frozen_string_literal: true

require_relative "categories/base_category"
require_relative "categories/a_category"
require_relative "categories/b_category"
require_relative "categories/c_category"
require_relative "categories/d_category"
require_relative "categories/e_category"

module Categorizable
  CATEGORIES_MAP = {
    "aged_brie" => Categories::BCategory,
    "backstage_passes_to_a_tafkal80etc_concert" => Categories::CCategory,
    "sulfuras__hand_of_ragnaros" => Categories::DCategory,
    "conjured_mana_cake" => Categories::ECategory
  }

  def category_class
    categorizable_name = name.downcase.gsub(/\s|[^a-z0-9]/, "_")
    CATEGORIES_MAP[categorizable_name] || Categories::ACategory
  end

  def set_category
    @category = category_class.new
  end
end
