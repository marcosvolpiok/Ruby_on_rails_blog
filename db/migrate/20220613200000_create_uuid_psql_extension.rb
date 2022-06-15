class CreateUuidPsqlExtension < ActiveRecord::Migration[4.2]
  def self.up
  enable_extension "uuid-ossp"
  end
  
  def self.down
  disable_extension "uuid-ossp"
  end
  end