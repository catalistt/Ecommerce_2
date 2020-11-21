class Category < ApplicationRecord
  has_many :product_categories
  before_save :category_id_validation

  def category_id_validation
    if self.category_id != 0
      padre = Category.find_by(id: self.category_id)
      if padre == nil
        raise "Categoría no encontrada"
      end
  end
end

  def father
    if self.father?
      raise "No existe registro"
    else
    father_aux = Category.find_by(id: self.category_id)
      if father_aux.nil?
        raise "Categoría no encontrada"
      else
        return father_aux.name
      end
    end

    def father?
      self.category_id == 0
    end

  end