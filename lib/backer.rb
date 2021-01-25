class Backer
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        arr = ProjectBacker.all.select {|p| p.backer == self}
        arr.map {|p| p.project}
    end
end