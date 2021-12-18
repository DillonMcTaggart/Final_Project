class AddVgameToVgameVariants < ActiveRecord::Migration[6.1]
  def change
    add_reference :vgame_variants, :vgame, null: false, foreign_key: true
  end
end
