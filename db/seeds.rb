Question.destroy_all
Quiz.destroy_all
Answer.destroy_all

quiz1 = Quiz.create!({name: "Women in Computer Science QUIZ"})

algo = Question.create!(
  {vraag: 'Who was the first person to create a computer algorithm?',
    image_url: "https://raw.githubusercontent.com/smilingkite/REACT-quiz/master/src/images/Ada-Lovelace.jpg",
    quiz: quiz1})
compiler = Question.create!(
  {vraag: 'Who created the first compiler?',
    image_url: "https://raw.githubusercontent.com/smilingkite/REACT-quiz/master/src/images/Grace-Hopper.png",
    quiz: quiz1})
turing = Question.create!(
  {vraag: 'The first woman to win the Alan Turing award was...',
    image_url:"https://raw.githubusercontent.com/smilingkite/REACT-quiz/master/src/images/Frances-e-Allen.jpg",
    quiz: quiz1})

Answer.create!([
  {true: false, answertext: 'Edsger W. Dijkstra', question: algo},
  {true: false, answertext: 'Alan Turing', question: algo},
  {true: true, answertext:  'Ada Lovelace', question: algo}, 
  {true: false, answertext: 'Alan Turing', question: compiler},
  {true: true, answertext: 'Grace Hopper', question: compiler},
  {true: false, answertext: 'Edsger W. Dijkstra', question: compiler},
  {true: true, answertext: 'Frances E. Allen', question: turing},
  {true: false, answertext: 'Barbara Liskov', question: turing},
  {true: false, answertext: 'Shafi Goldwasser', question: turing},
  {true: false, answertext: 'Grace Hopper', question: turing}
])
  





quiz_count = Quiz.count
question_count = Question.count
puts "#{quiz_count} quizzes were created."
puts "#{question_count} questions were created."
