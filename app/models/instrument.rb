class Instrument < ApplicationRecord
  belongs_to :tone, optional: true

end
