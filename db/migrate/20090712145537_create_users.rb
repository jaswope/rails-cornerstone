class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string    :login,               :null => false 
      t.string    :email,               :null => false
      t.string    :crypted_password,    :null => false
      t.string    :password_salt,       :null => false
      t.string    :persistence_token,   :null => false  # required
      t.string    :perishable_token,    :null => false 
      t.integer   :login_count,         :null => false, :default => 0
      t.integer   :failed_login_count,  :null => false, :default => 0 
      t.datetime  :last_request_at 
      t.datetime  :current_login_at
      t.datetime  :last_login_at  
      t.string    :current_login_ip
      t.string    :last_login_ip        
      t.timestamps
    end
    #
    # Add indexes
    #
    add_index :users, :perishable_token
    add_index :users, :email    
    #
    # Create your initial user.  
    # Will make this an administrator user later.
    #
    usr = User.create \
              :login => 'admin',
              :email => 'admin@yoursite.com',
              :password => 'betterpassword',
              :password_confirmation => 'betterpassword'
  end
  #
  #
  def self.down
    drop_table :users
  end
end


