class Page < ApplicationRecord
  # instance method
  def info
    return "Hello I am #{self.author} and you are reading #{self.body}"
  end

  # class method
  def self.custom_sql_call
    return "do custom sql here"
  end
end
