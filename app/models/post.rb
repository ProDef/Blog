class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }

	has_many :votes

  def votes_total
    return nil if (upvotes + downvotes).empty?
    upvotes.size - downvotes.size
  end

  private

  def upvotes
    votes.where(direction: 'up')
  end

  def downvotes
    votes.where(direction: 'down')
  end


end