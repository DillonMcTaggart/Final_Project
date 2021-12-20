class Province < ApplicationRecord
  def list
    @provinces = Provinces.all
  end
end
