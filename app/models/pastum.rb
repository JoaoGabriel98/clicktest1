class Pastum < ApplicationRecord
    
    has_many :archives
    has_many :subdiretorio, class_name: "Pastum", foreign_key: "id_pasta"
    belongs_to :pasta_raiz, class_name: "Pastum"

end
