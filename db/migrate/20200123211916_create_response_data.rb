class CreateResponseData < ActiveRecord::Migration[5.2]
  def change
    create_table :response_data do |t|
      t.string :uuid
      t.string :response

      t.timestamps
    end
  end
end
