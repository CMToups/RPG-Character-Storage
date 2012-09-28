class AddAminPlayer < ActiveRecord::Migration
  def up
	  player = Player.new(:email => "cmtoups@me.com", :password => "testing")
	  player.admin = true
	  player.save
  end

  def down
  	Player.where(:email => "cmtoups@me.com").first.delete
  end
end
