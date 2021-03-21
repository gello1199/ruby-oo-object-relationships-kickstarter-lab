require 'pry'

class Backer
    attr_reader :name 


    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projects
    ProjectBacker.all.select {|projects| projects.backer == self}
    end

    def backed_projects
        projects.map {|back_proj| back_proj.project}
    end

end