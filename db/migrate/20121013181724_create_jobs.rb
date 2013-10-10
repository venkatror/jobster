class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :company_name
      t.text :company_info
      t.string :salary
      t.string :location

      t.timestamps
    end
  end
end
