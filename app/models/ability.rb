class Ability
    include CanCan::Ability

    def initialize(user)
      if user && user.role == "admin"
        can :access, :rails_admin
        can :dashboard
        can :manage, :all
      elsif user && user.role == "artist"
        can :access, :rails_admin
        can :dashboard
        can [:read, :update], Artist, :live => true, :user_id => user.id
        can :manage, ArtistImage, :artist => { :user_id => user.id }
      elsif user && user.role == "client"
        # view/edit client pages
      else      
        # view frontend, no edits
     end
   end

end
