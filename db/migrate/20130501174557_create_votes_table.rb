class CreateVotesTable < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :post, :user
      t.integer :value
    end

    add_index :votes, [:post_id, :user_id], :unique => true
  end
end
