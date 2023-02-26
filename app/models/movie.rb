class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        self.create(title: title)
    end

    def self.first_movie
        self.first
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        self.count
    end

    def self.find_movie_with_id(val)
        self.find(val)
    end

    def self.find_movie_with_attributes (atr)
        self.find_by(atr)
    end

    def self.find_movies_after_2002
        self.where("release_date > ? ", 2002)
    end

    def update_with_attributes(atr)
        self.update(atr)
    end

    def self.update_all_titles(t)
        self.update(id = :all, title: t)
    end

    def self.delete_by_id(id)
        self.destroy(id)
    end

    def self.delete_all_movies
        self.destroy_all
    end
end