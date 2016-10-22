class CreateIncomeLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :income_logs do |t|
      t.string :uid
      t.string :name
      t.integer :session_id
      t.string :job_title
      t.float :money_made

      t.timestamps
    end
  end
end
