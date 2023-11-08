class CreateUserhavejobs < ActiveRecord::Migration[7.0]
  def change
    create_table :userhavejobs do |t|
      t.integer :user_id
      t.integer :job_id

      t.timestamps
    end
  end
end
