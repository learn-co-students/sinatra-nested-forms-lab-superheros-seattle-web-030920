class ChangeSuperheroTableName < ActiveRecord::Migration[6.0]
  def change
    rename_table :superheroes, :superheros
  end
end
