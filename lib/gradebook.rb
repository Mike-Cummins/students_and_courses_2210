require './lib/course'
require './lib/student'

class Gradebook
  attr_reader :instructor, :courses
  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end
  def add_course(course)
    @courses << course
  end
  def list_students
    @courses.map students
  end

end
