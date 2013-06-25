class AddSoundcloudEmbed < ActiveRecord::Migration
	 def change
		add_column :soirees, :soundcloud_embed,  :string 
	end
end
