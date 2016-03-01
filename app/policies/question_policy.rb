class QuestionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.survey.user == user
  end

  def create?
    true
  end

  def update?
    record.survey.user == user
  end

  def destroy?
    record.survey.user == user
  end
end
