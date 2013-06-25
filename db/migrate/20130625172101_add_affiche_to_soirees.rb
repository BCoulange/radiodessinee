class AddAfficheToSoirees < ActiveRecord::Migration
  def self.up
    add_attachment :soirees, :affiche
  end

  def self.down
    remove_attachment :soirees, :affiche
  end
end
