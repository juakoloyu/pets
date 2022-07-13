class PostPolicy < ApplicationPolicy
  def edit?
    record.user == user
  end

  def delete?
    record.user == user
  end
end
