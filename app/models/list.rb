class List < ActiveRecord::Base
  has_many :items, dependent: :destroy
  belongs_to :user

  validates :name, length:{ minimum: 2, maximum: 100 }, presence: true
  validates :permissions, :inclusion => { :in => %w(public private), :message => "%{value} is not a valid permission ('public' or 'private')." }
end
