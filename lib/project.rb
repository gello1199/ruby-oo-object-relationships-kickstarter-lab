require 'pry'

class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

   def add_backer(backer)
    ProjectBacker.new(self, backer)
   end

   def backed_projects
    ProjectBacker.all.select {|backers| backers.project == self}
    end

    def backers
        backed_projects.map {|back_proj| back_proj.backer}
    end

end