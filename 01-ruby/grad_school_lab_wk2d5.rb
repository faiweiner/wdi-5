require 'pry'
require 'pry-debugger'


class School
  attr_accessor :school_name, :db 
  def initialize(school_name)
    @school_name = school_name
    @db = {}
  end
  
  def db
    @db cal 
    #can also use the shortcut :db#
  end

  def add(name, grade)
      @db[grade] = [] if @db[grade] = nil
      # if @db[grade].nil?
      #   @db[grade] = []
      #   @db[grade] << name
      # else
      #   @db[grade] << name
      @db[grade] << name

  end
  
  def grade(grade)
    @db[grade]
  end
  def sort
    @db.each do |key, value|
      value.sort!
    end
    @db = Hash[@db.sort]
  end
end 


school = School.new("General Assembly")
school2 = School.new("dsjhadkas")
binding.pry

# school.db

# school.add("James", 2)
# school.db

# school.add("Phil", 2)
# school.add("Jennifer", 3)
# school.add("Little Billy", 1)
# school.db

# school.grade(2)