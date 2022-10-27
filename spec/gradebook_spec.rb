require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
  it 'exists' do
    gradebook = Gradebook.new("Mr. Jones")

    expect(gradebook).to be_a(Gradebook)
  end

  it 'has an instructor' do
    gradebook = Gradebook.new("Mr. Jones")

    expect(gradebook.instructor).to eq("Mr. Jones")
  end

  it 'has courses, empty by default' do
    gradebook = Gradebook.new("Mr. Jones")

    expect(gradebook.courses).to eq([])
  end

  it 'can have courses added' do
    gradebook = Gradebook.new("Mr. Jones")
    course = Course.new("Math", 20)
    gradebook.add_course("Math")
    gradebook.add_course("Science")

    expect(gradebook.courses).to eq(["Math", "Science"])
  end

  it 'can list students in courses' do
    course = Course.new("Science", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    gradebook = Gradebook.new("Mr. Jones")
    course.enroll(student1)
    course.enroll(student2)
    gradebook.add_course(course)

     require 'pry'; binding.pry
    expect(gradebook.list_students).to eq([student1, student2])
  end
end
