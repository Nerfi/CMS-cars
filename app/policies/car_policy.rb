class CarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
     true
    #everyone

  end


  def create?
     new?

  end

  def show?
    #everyone can see an article
    return true

  end

    def update?
    user_is_owner?
    #record.user == user
    #solo pueden hacer 'update'
    #aquellos que hallan creado el article in this case

  end

   def destroy?
    user_is_owner?


  end

  private

  def user_is_owner?
    record.user == user

  end


end
