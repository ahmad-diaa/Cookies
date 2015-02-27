class AddCategories < ActiveRecord::Migration
  def change
  Category.create :name => "Other" 

  Category.create :name => "Experience" 

  Category.create :name => "Team"

  Category.create :name => "Work"  

  end
end