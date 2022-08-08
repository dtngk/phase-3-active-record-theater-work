class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        a =  auditions.map {|a| a.actor}
        
        if (a.empty?)
            return ("No Actors for this role!")
        end

        return a
    end

    def locations
        a = auditions.map {|a| a.location}

        if (a.empty?)
            return ("No Locations for this role!")
        end

        return a
    end

    def lead
        a = auditions.find_by(hired: true)

        if (!a)
            return ("no actor has been hired for this role")
        end
        
        return a
    end

    def understudy
        a =  auditions.where(hired: true).second

        if (!a)
            return ("no actor has been hired for understudy for this role")
        end

        return a
    end
end
