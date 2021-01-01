class AddColumnsToCatsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :cats, :birth_date
    add_column :cats, :birth_date, :date, null: false
    add_column :cats, :color, :string, null: false
    add_column :cats, :name, :string, null: false
    add_column :cats, :sex, :string, null: false
    add_column :cats, :description, :text


  end
end
