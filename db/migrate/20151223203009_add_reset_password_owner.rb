class AddResetPasswordOwner < ActiveRecord::Migration
  def change
  	add_column :owners, :reset_password_token, :string, :default => nil
    add_column :owners, :reset_password_token_expires_at, :datetime, :default => nil
    add_column :owners, :reset_password_email_sent_at, :datetime, :default => nil
  end
end
