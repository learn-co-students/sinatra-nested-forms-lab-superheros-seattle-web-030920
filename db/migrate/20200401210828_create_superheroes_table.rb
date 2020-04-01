class CreateSuperheroesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :superheroes do |t|
      t.string :name
      t.string :power
      t.string :bio
      t.integer :team_id
    end
  end
end
