class Movie < ApplicationRecord
    mount_uploader :video, VideoUploader
    belongs_to :user
end
