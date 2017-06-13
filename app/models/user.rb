# frozen_string_literal: true
class User < ProtectedController
  include Authentication
  has_many :moods
end
