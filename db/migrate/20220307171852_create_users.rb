class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :note_id
      t.integer :study_session_id
    end
  end
end
