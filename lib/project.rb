class Project
    attr_accessor :title
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        arr = ProjectBacker.all.select {|p| p.project == self}
        arr.map {|p| p.backer}
    end
end