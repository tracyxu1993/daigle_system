class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   "username"
      t.timestamps
      t.string   "password_digest"
      t.boolean  "admin",           default: false
      t.boolean  "cowboy"
      t.boolean  "handy"
      t.boolean  "doctor"
      t.string   "email"
      t.string  "phone"
      t.text     "address"
    end
  end
end
