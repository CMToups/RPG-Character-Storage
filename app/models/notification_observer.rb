class NotificationObserver < ActiveRecord::Observer
  observe :Ability
  
  def after_save(ability)
    @skill = Skill.where(:character_id => ability.character_id)
    @skill.each do |skill|
      skill.save
    end
  end
end
