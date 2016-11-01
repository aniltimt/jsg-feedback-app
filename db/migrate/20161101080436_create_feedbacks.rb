class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string  :crew_name
      t.string  :passanger_name
      t.string  :aircraft_name
      t.attachment :video      
      #t.string  :title
      t.text    :feedback_text
      t.boolean :status

      t.timestamps null: false
    end
  end
end
