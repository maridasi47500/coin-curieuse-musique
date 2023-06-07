class Piece < ApplicationRecord
  has_many :hasmanydanses
  def mycontent
    str=""
    if numero.length > 0
      str+= "que signifie "+numero+" ?"
    end
    
    str
  end
end
