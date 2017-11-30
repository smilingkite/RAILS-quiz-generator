class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :vraag
      t.string :image_url

      t.timestamps
    end
  end
end
