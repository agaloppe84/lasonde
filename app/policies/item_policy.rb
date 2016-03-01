class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.question.survey.user == user
  end

  def create?
    true
  end

  def update?
    record.question.survey.user == user
  end

  def destroy?
    record.question.survey.user == user
  end
end
