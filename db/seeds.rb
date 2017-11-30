Question.destroy_all
Quiz.destroy_all

quiz1 = Quiz.create!({name: "Women in Computer Science QUIZ"})

Question.create!([
  {vraag: 'Who was the first person to create a computer algorithm?',
    image_url: "https://raw.githubusercontent.com/smilingkite/REACT-quiz/master/src/images/Ada-Lovelace.jpg",
    quiz: quiz1},
  {vraag: 'Who created the first compiler?',
    image_url: "https://raw.githubusercontent.com/smilingkite/REACT-quiz/master/src/images/Grace-Hopper.png",
    quiz: quiz1},
  {vraag: 'The first woman to win the Alan Turing award was...',
    image_url:"https://raw.githubusercontent.com/smilingkite/REACT-quiz/master/src/images/Frances-e-Allen.jpg",
    quiz: quiz1}
  ])

quiz_count = Quiz.count
puts "#{quiz_count} quizzes were created."
