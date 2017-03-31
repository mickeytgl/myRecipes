class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
    	t.text					:body
    	t.integer 				:chef_id, :recipe_id
    end
  end
end
