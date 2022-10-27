class Student
  attr_reader :name, :age, :scores
  def initialize(args)
    args.each do |name, age|
      instance_variable_set("@#{name}", age)
      @scores = []
    end
  end
  def log_score(score)
    @scores << score
  end
  def grade
    (@scores.sum / @scores.count.to_f).round(1)
  end
end
