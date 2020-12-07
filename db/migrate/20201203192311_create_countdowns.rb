class CreateCountdowns < ActiveRecord::Migration[6.0]
  def change
    create_table :countdowns do |t|
      t.date :date
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
