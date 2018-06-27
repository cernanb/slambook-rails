class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text :content
      t.belongs_to :question
      t.timestamps
    end
  end
end
