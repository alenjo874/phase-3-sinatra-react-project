class CreateNotes < ActiveRecord::Migration[6.1]
  def change
      create_table :notes do |t|
      t.string :subject
      t.string :study_note
    end
  end
end
