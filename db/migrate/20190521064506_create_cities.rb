class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|

    	t.string :city



t.references :country , foreign_key: true

 t.references :state, foreign_key: true



    #	t.references :cityable, :polymorphic => true , :index => true

      t.timestamps
    end
  end
end
