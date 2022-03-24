class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  mount_uploaders :avatars, AvatarUploader

  #serialize :avatar, JSON
end
