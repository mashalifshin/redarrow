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
        cannot :access, :rails_admin
        cannot :dashboard
        can :read, ClientImage, :live => true, :user_id => user.id
      else      
        cannot :access, :rails_admin
        cannot :dashboard
        can :read, AboutInfo
        can :read, Announcement
        can :read, Artist
        can :read, ArtistImage
        can :read, ContactInfo
        can :read, Exhibition
        can :read, ExhibitionImage
        can :read, SlideshowImage
     end
   end

end
