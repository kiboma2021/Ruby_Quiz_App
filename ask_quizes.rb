class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

p1 = "Who owns Microsoft? \n (a) Bill gates \n (b) Michael Jackson \n (c) Abraham Lincolin"
p2 = "Who is the president of Kenya? \n (a) Bill Clinton \n (b) Barrack Obama \n (c) William Ruto"
p3 = "Among the below, wo is the longest serving president? \n (a) Nelson Mandera \n (b) Yoweri Museveni \n (c) Idi Amin"

questions = [
  Question.new(p1, "a"),
  Question.new(p2, "c"),
  Question.new(p3, "b")
]

# Create a method to run the test

def run_questions(questions)
  answer = ""
  score = 0
  for question in questions
    puts question.prompt
    answer = gets.chomp()
    if answer == question.answer
      score +=1
    end
  end
  puts ("You scored " + score.to_s + "/" + questions.length().to_s)
end

#call the method
run_questions(questions)