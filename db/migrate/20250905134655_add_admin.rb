class AddAdmin < ActiveRecord::Migration[8.0]
  def change
    User.create! do |u|
      u.email = "admin@test.com"
      u.password = "iamadmin"
      u.admin = true
    end
  end
end
