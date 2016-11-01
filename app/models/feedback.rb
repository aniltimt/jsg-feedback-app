class Feedback < ActiveRecord::Base
  has_attached_file :video, #:styles => {:small => '94x58#',:medium => '188x116#',:large => '376x232#' },
    :url  => "/assets/videos/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/videos/:id/:style/:basename.:extension"
  validates_attachment_presence :video
  validates_attachment_size :video, :less_than => 100.megabytes
  validates_attachment_content_type :video, :content_type => ['video/mp4', 'video/flv','video/3gp']
end
