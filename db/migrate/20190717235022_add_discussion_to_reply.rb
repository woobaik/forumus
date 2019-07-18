class AddDiscussionToReply < ActiveRecord::Migration[5.2]
  def change
    add_reference :replies, :discussion, foreign_key: true
  end
end
