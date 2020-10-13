# code here!

require 'pry'
class School
    attr_accessor :name, :roster, :grade

    def initialize(name,roster={})
        @name =name
        @roster=roster
    end

    def add_student(name, grade)
       if @roster.key?(grade)
        @roster[grade]<< name
       else
        @roster[grade]=[]
        @roster[grade]<< name
       end
    end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted_hash = {} 
    @roster.each do |k, v|
      sorted_hash[k] = v.sort
    end 
    sorted_hash
# @roster[9].sort

    # sorted_roster=@roster.sort.to_h
    # sorted_roster.sort_by{|k,v| v}.to_

  end



end

# binding.pry