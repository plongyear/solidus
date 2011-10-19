module Spree
  class Tracker < ActiveRecord::Base
    def self.current
      find(:first, :conditions => { :active => true, :environment => Rails.env })
    end
  end
end