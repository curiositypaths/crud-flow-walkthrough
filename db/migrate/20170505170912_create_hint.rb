class CreateHint < ActiveRecord::Migration[5.1]
  def change
    create_table :hints do |t|
      t.string :text
    end
  end
end
