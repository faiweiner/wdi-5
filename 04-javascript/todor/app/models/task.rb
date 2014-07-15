# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  due_date    :date
#  completed   :boolean          default(FALSE)
#  user_id     :integer
#  priority_id :integer
#

class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :priority
end
