class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.boolean :true
      t.string :answertext

      t.timestamps
    end
  end
end
