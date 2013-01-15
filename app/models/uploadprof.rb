class Uploadprof < ActiveRecord::Base
  attr_accessible :email, :name, :photo, :resume
  #paperclip
  has_attached_file :photo,
     :styles => {
       :thumb=> "100x100#",
       :small  => "400x400>" }
end
