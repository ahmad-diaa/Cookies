class CreateNormals < ActiveRecord::Migration
  def change
    create_table :normals do |t|
       
      t.timestamps null: false
    end
  end
end
