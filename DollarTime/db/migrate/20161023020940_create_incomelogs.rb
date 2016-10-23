class CreateIncomelogs < ActiveRecord::Migration[5.0]
  def change
    create_table :incomelogs do |t|
      t.string :user_id
      t.string :job
      t.float :amount

      t.timestamps
    end
  end
end
