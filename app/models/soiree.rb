class Soiree < ActiveRecord::Base
  attr_accessible :titre,:soundcloud_embed

  attr_accessible :affiche
  has_attached_file :affiche, :styles => {:medium => "210x297>" }, :default_url => "/images/:style/missing.png"
end
