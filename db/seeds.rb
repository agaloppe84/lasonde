
User.destroy_all
Answer.destroy_all
Iteration.destroy_all
Respondent.destroy_all
NumericAnswer.destroy_all
TextAnswer.destroy_all
ItemAnswer.destroy_all
Item.destroy_all
Survey.destroy_all
Question.destroy_all


puts "Seed started"
# -------------------------------- Users ---------------------------------- #
puts "Seeding USERS started"


michel  = User.create(email: "michel@gmail.com",  password: "12345678")
david   = User.create(email: "david@gmail.com",   password: "12345678")
robert  = User.create(email: "robert@gmail.com",  password: "12345678")
patrick = User.create(email: "patrick@gmail.com", password: "12345678")
john    = User.create(email: "john@gmail.com",    password: "12345678")
steven  = User.create(email: "steven@gmail.com",  password: "12345678")
bernard = User.create(email: "bernard@gmail.com", password: "12345678")
carl    = User.create(email: "carl@gmail.com",    password: "12345678")
roy     = User.create(email: "roy@gmail.com",     password: "12345678")
philip  = User.create(email: "philip@gmail.com",  password: "12345678")


puts "Seeding USERS done"
 # ------------------------------------------------------------------------ #




# ----------------------------  Surveys  ---------------------------------- #
puts "Seeding SURVEYS started"


survey01 = Survey.create(title: "Sondage 01" , user: michel )
survey02 = Survey.create(title: "Sondage 02" , user: michel )
survey03 = Survey.create(title: "Sondage 03" , user: michel )
survey04 = Survey.create(title: "Mon sondage 01" , user: david )
survey05 = Survey.create(title: "Mon sondage 02" , user: david )
survey06 = Survey.create(title: "Mon sondage 03" , user: david )
survey07 = Survey.create(title: "Sond 01" , user: robert )
survey08 = Survey.create(title: "Sond 02" , user: robert )
survey09 = Survey.create(title: "Sond 03" , user: robert )
survey10 = Survey.create(title: "Sond 04" , user: robert )
survey11 = Survey.create(title: "Sond 05" , user: robert )
survey12 = Survey.create(title: "Sond 06" , user: robert )
survey13 = Survey.create(title: "Sond 07" , user: robert )
survey14 = Survey.create(title: "Sond 08" , user: robert )
survey15 = Survey.create(title: "Sondage one" , user: john )
survey16 = Survey.create(title: "Sondage two" , user: john )
survey17 = Survey.create(title: "Sondage three" , user: john )


puts "Seeding SURVEYS done"
# ------------------------------------------------------------------------ #





# ----------------------------  Questions  ------------------------------- #
puts "Seeding QUESTIONS started"


quest01 = Question.create(survey: survey01 , label: "Quel est le ..... ?" , kind: "single" , rank: 1)
quest02 = Question.create(survey: survey01 , label: "Quel est le ..... ?" , kind: "single" , rank: 2)
quest03 = Question.create(survey: survey01 , label: "Quel est le ..... ?" , kind: "multi" ,  rank: 3)
quest04 = Question.create(survey: survey01 , label: "Quel est le ..... ?" , kind: "multi" , rank: 4)
quest05 = Question.create(survey: survey01 , label: "Quel est le ..... ?" , kind: "single" , rank: 5)
quest06 = Question.create(survey: survey01 , label: "Quel est le ..... ?" , kind: "stars" , rank: 6)
quest07 = Question.create(survey: survey01 , label: "Quel est le ..... ?" , kind: "stars" , rank: 7)
quest08 = Question.create(survey: survey01 , label: "Quel est le ..... ?" , kind: "single" , rank: 8)
quest09 = Question.create(survey: survey01 , label: "Quel est le ..... ?" , kind: "open-text" ,    rank: 9)
quest10 = Question.create(survey: survey01 , label: "Quel est le ..... ?" , kind: "open-text" ,    rank: 10)


quest11 = Question.create(survey: survey02 , label: "Quel est le ..... ?" , kind: "single" , rank: 1)
quest12 = Question.create(survey: survey02 , label: "Quel est le ..... ?" , kind: "single" , rank: 2)
quest13 = Question.create(survey: survey02 , label: "Quel est le ..... ?" , kind: "multi" ,  rank: 3)
quest14 = Question.create(survey: survey02 , label: "Quel est le ..... ?" , kind: "single" , rank: 4)
quest15 = Question.create(survey: survey02 , label: "Quel est le ..... ?" , kind: "single" , rank: 5)
quest16 = Question.create(survey: survey02 , label: "Quel est le ..... ?" , kind: "single" , rank: 6)
quest17 = Question.create(survey: survey02 , label: "Quel est le ..... ?" , kind: "single" , rank: 7)
quest18 = Question.create(survey: survey02 , label: "Quel est le ..... ?" , kind: "single" , rank: 8)
quest19 = Question.create(survey: survey02 , label: "Quel est le ..... ?" , kind: "open-text" ,    rank: 9)
quest20 = Question.create(survey: survey02 , label: "Quel est le ..... ?" , kind: "open-text" ,    rank: 10)



quest21 = Question.create(survey: survey03 , label: "Quel est le ..... ?" , kind: "single" , rank: 1)
quest22 = Question.create(survey: survey03 , label: "Quel est le ..... ?" , kind: "single" , rank: 2)
quest23 = Question.create(survey: survey03 , label: "Quel est le ..... ?" , kind: "multi" ,  rank: 3)
quest24 = Question.create(survey: survey03 , label: "Quel est le ..... ?" , kind: "single" , rank: 4)
quest25 = Question.create(survey: survey03 , label: "Quel est le ..... ?" , kind: "single" , rank: 5)
quest26 = Question.create(survey: survey03 , label: "Quel est le ..... ?" , kind: "single" , rank: 6)
quest27 = Question.create(survey: survey03 , label: "Quel est le ..... ?" , kind: "single" , rank: 7)
quest28 = Question.create(survey: survey03 , label: "Quel est le ..... ?" , kind: "single" , rank: 8)
quest29 = Question.create(survey: survey03 , label: "Quel est le ..... ?" , kind: "open-text" ,    rank: 9)
quest30 = Question.create(survey: survey03 , label: "Quel est le ..... ?" , kind: "open-text" ,    rank: 10)



quest31 = Question.create(survey: survey04 , label: "Quel est le ..... ?" , kind: "single" , rank: 1)
quest32 = Question.create(survey: survey04 , label: "Quel est le ..... ?" , kind: "single" , rank: 2)
quest33 = Question.create(survey: survey04 , label: "Quel est le ..... ?" , kind: "multi" ,  rank: 3)
quest34 = Question.create(survey: survey04 , label: "Quel est le ..... ?" , kind: "single" , rank: 4)
quest35 = Question.create(survey: survey04 , label: "Quel est le ..... ?" , kind: "single" , rank: 5)
quest36 = Question.create(survey: survey04 , label: "Quel est le ..... ?" , kind: "single" , rank: 6)
quest37 = Question.create(survey: survey04 , label: "Quel est le ..... ?" , kind: "single" , rank: 7)
quest38 = Question.create(survey: survey04 , label: "Quel est le ..... ?" , kind: "single" , rank: 8)
quest39 = Question.create(survey: survey04 , label: "Quel est le ..... ?" , kind: "open-text" ,    rank: 9)
quest40 = Question.create(survey: survey04 , label: "Quel est le ..... ?" , kind: "open-text" ,    rank: 10)


quest41 = Question.create(survey: survey05 , label: "Quel est le ..... ?" , kind: "single" , rank: 1)
quest42 = Question.create(survey: survey05 , label: "Quel est le ..... ?" , kind: "single" , rank: 2)
quest43 = Question.create(survey: survey05 , label: "Quel est le ..... ?" , kind: "multi" ,  rank: 3)
quest44 = Question.create(survey: survey05 , label: "Quel est le ..... ?" , kind: "single" , rank: 4)
quest45 = Question.create(survey: survey05 , label: "Quel est le ..... ?" , kind: "single" , rank: 5)
quest46 = Question.create(survey: survey05 , label: "Quel est le ..... ?" , kind: "single" , rank: 6)
quest47 = Question.create(survey: survey05 , label: "Quel est le ..... ?" , kind: "single" , rank: 7)
quest48 = Question.create(survey: survey05 , label: "Quel est le ..... ?" , kind: "single" , rank: 8)
quest49 = Question.create(survey: survey05 , label: "Quel est le ..... ?" , kind: "open-text" ,    rank: 9)
quest50 = Question.create(survey: survey05 , label: "Quel est le ..... ?" , kind: "open-text" ,    rank: 10)



quest51 = Question.create(survey: survey06 , label: "Quel est le ..... ?" , kind: "single" , rank: 1)
quest52 = Question.create(survey: survey06 , label: "Quel est le ..... ?" , kind: "single" , rank: 2)
quest53 = Question.create(survey: survey06 , label: "Quel est le ..... ?" , kind: "multi" ,  rank: 3)
quest54 = Question.create(survey: survey06 , label: "Quel est le ..... ?" , kind: "single" , rank: 4)
quest55 = Question.create(survey: survey06 , label: "Quel est le ..... ?" , kind: "single" , rank: 5)
quest56 = Question.create(survey: survey06 , label: "Quel est le ..... ?" , kind: "single" , rank: 6)
quest57 = Question.create(survey: survey06 , label: "Quel est le ..... ?" , kind: "single" , rank: 7)
quest58 = Question.create(survey: survey06 , label: "Quel est le ..... ?" , kind: "single" , rank: 8)
quest59 = Question.create(survey: survey06 , label: "Quel est le ..... ?" , kind: "open-text" ,    rank: 9)
quest60 = Question.create(survey: survey06 , label: "Quel est le ..... ?" , kind: "open-text" ,    rank: 10)


puts "Seeding QUESTIONS done"
# ------------------------------------------------------------------------- #







 # ---------------------------- Respondents ------------------------------- #
 puts "Seeding RESPONDENTS started"


respon01 = Respondent.create
respon02 = Respondent.create
respon03 = Respondent.create
respon04 = Respondent.create
respon05 = Respondent.create


 puts "Seeding RESPONDENTS done"
 # ------------------------------------------------------------------------ #









# -----------------------------  Iterations  ----------------------------- #
puts "Seeding ITERATIONS started"



iter01 = Iteration.create(number: 1 , label: "1" , question: quest01)
iter02 = Iteration.create(number: 2 , label: "2" , question: quest01)
iter03 = Iteration.create(number: 3 , label: "3" , question: quest01)
iter04 = Iteration.create(number: 4 , label: "4" , question: quest01)
iter05 = Iteration.create(number: 5 , label: "5" , question: quest01)

iter06 = Iteration.create(number: 6 , label: "6" , question: quest02)
iter07 = Iteration.create(number: 7 , label: "7" , question: quest02)
iter08 = Iteration.create(number: 8 , label: "8" , question: quest02)
iter09 = Iteration.create(number: 9 , label: "9" , question: quest02)
iter10 = Iteration.create(number: 10 , label: "10" , question: quest02)

iter11 = Iteration.create(number: 1 , label: "1" , question: quest03)
iter12 = Iteration.create(number: 2 , label: "2" , question: quest03)
iter13 = Iteration.create(number: 3 , label: "3" , question: quest03)
iter14 = Iteration.create(number: 4 , label: "4" , question: quest03)
iter15 = Iteration.create(number: 5 , label: "5" , question: quest03)

iter16 = Iteration.create(number: 1 , label: "1" , question: quest04)
iter17 = Iteration.create(number: 2 , label: "2" , question: quest04)
iter18 = Iteration.create(number: 3 , label: "3" , question: quest04)
iter19 = Iteration.create(number: 4 , label: "4" , question: quest04)
iter20 = Iteration.create(number: 5 , label: "5" , question: quest04)

iter21 = Iteration.create(number: 1 , label: "1" , question: quest05)
iter22 = Iteration.create(number: 2 , label: "2" , question: quest05)
iter23 = Iteration.create(number: 3 , label: "3" , question: quest05)
iter24 = Iteration.create(number: 4 , label: "4" , question: quest05)
iter25 = Iteration.create(number: 5 , label: "5" , question: quest05)

iter26 = Iteration.create(number: 1 , label: "1" , question: quest06)
iter27 = Iteration.create(number: 2 , label: "2" , question: quest06)
iter28 = Iteration.create(number: 3 , label: "3" , question: quest06)
iter29 = Iteration.create(number: 4 , label: "4" , question: quest06)
iter30 = Iteration.create(number: 5 , label: "5" , question: quest06)

iter31 = Iteration.create(number: 1 , label: "1" , question: quest07)
iter32 = Iteration.create(number: 2 , label: "2" , question: quest07)
iter33 = Iteration.create(number: 3 , label: "3" , question: quest07)
iter34 = Iteration.create(number: 4 , label: "4" , question: quest07)
iter35 = Iteration.create(number: 5 , label: "5" , question: quest07)

iter36 = Iteration.create(number: 1 , label: "1" , question: quest08)
iter37 = Iteration.create(number: 2 , label: "2" , question: quest08)
iter38 = Iteration.create(number: 3 , label: "3" , question: quest08)
iter39 = Iteration.create(number: 4 , label: "4" , question: quest08)
iter40 = Iteration.create(number: 5 , label: "5" , question: quest08)

iter41 = Iteration.create(number: 1 , label: "1" , question: quest09)
iter42 = Iteration.create(number: 2 , label: "2" , question: quest09)
iter43 = Iteration.create(number: 3 , label: "3" , question: quest09)
iter44 = Iteration.create(number: 4 , label: "4" , question: quest09)
iter45 = Iteration.create(number: 5 , label: "5" , question: quest09)

iter46 = Iteration.create(number: 1 , label: "1" , question: quest10)
iter47 = Iteration.create(number: 2 , label: "2" , question: quest10)
iter48 = Iteration.create(number: 3 , label: "3" , question: quest10)
iter49 = Iteration.create(number: 4 , label: "4" , question: quest10)
iter50 = Iteration.create(number: 5 , label: "5" , question: quest10)


puts "Seeding ITERATIONS done"
# ------------------------------------------------------------------------ #







# ------------------------------  Answers  ------------------------------- #
puts "Seeding ANSWERS started"


answer01 = Answer.create(iteration: iter01)
answer02 = Answer.create(iteration: iter02)
answer03 = Answer.create(iteration: iter03)
answer04 = Answer.create(iteration: iter04)
answer05 = Answer.create(iteration: iter05)
answer06 = Answer.create(iteration: iter06)
answer07 = Answer.create(iteration: iter07)
answer08 = Answer.create(iteration: iter08)
answer09 = Answer.create(iteration: iter09)
answer10 = Answer.create(iteration: iter10)


puts "Seeding ANSWERS done"
# ------------------------------------------------------------------------ #






# --------------------------  Numeric answers  --------------------------- #
puts "Seeding NUMERIC ANSWERS started"


numansw01 = iter01.answers << NumericAnswer.create!(content: "1" ,  respondent: respon01)
numansw02 = iter02.answers << NumericAnswer.create!(content: "2" ,  respondent: respon01)
numansw03 = iter03.answers << NumericAnswer.create!(content: "3" ,  respondent: respon01)
numansw04 = iter04.answers << NumericAnswer.create!(content: "4" ,  respondent: respon01)
numansw05 = iter05.answers << NumericAnswer.create!(content: "5" ,  respondent: respon01)
numansw06 = iter06.answers << NumericAnswer.create!(content: "6" ,  respondent: respon01)
numansw07 = iter07.answers << NumericAnswer.create!(content: "7" ,  respondent: respon01)
numansw08 = iter08.answers << NumericAnswer.create!(content: "8" ,  respondent: respon01)
numansw09 = iter09.answers << NumericAnswer.create!(content: "9" ,  respondent: respon01)
numansw10 = iter10.answers << NumericAnswer.create!(content: "10" , respondent: respon01)


puts "Seeding NUMERIC ANSWERS done"
# ------------------------------------------------------------------------ #






# ----------------------------  Text answers  ----------------------------- #
puts "Seeding TEXT ANSWERS started"



textansw01 = iter10.answers << TextAnswer.create(content: "Oui" , respondent: respon01)
textansw02 = iter11.answers << TextAnswer.create(content: "Non" , respondent: respon01)
textansw03 = iter12.answers << TextAnswer.create(content: "Un peu" , respondent: respon01)
textansw04 = iter13.answers << TextAnswer.create(content: "Beaucoup" , respondent: respon01)
textansw05 = iter14.answers << TextAnswer.create(content: "Moins" , respondent: respon01)
textansw06 = iter15.answers << TextAnswer.create(content: "Plus" , respondent: respon01)
textansw07 = iter16.answers << TextAnswer.create(content: "peut etre" , respondent: respon01)
textansw08 = iter17.answers << TextAnswer.create(content: "jamais" , respondent: respon01)
textansw09 = iter18.answers << TextAnswer.create(content: "Tout le temps" , respondent: respon01)
textansw10 = iter19.answers << TextAnswer.create(content: "A fond" , respondent: respon01)



puts "Seeding TEXT ANSWERS done"
# ------------------------------------------------------------------------ #







# -------------------------------- Items  --------------------------------- #
puts "Seeding ITEMS started"


item01 = Item.create(label: "Oui" , rank: 1 , question: quest01)
item02 = Item.create(label: "Oui" , rank: 2 , question: quest01)
item03 = Item.create(label: "Oui" , rank: 3 , question: quest01)
item04 = Item.create(label: "Oui" , rank: 4 , question: quest01)
item05 = Item.create(label: "Oui" , rank: 5 , question: quest01)

item06 = Item.create(label: "Oui" , rank: 1 , question: quest02)
item07 = Item.create(label: "Oui" , rank: 2 , question: quest02)
item08 = Item.create(label: "Oui" , rank: 3 , question: quest02)
item09 = Item.create(label: "Oui" , rank: 4 , question: quest02)
item10 = Item.create(label: "Oui" , rank: 5 , question: quest02)


puts "Seeding ITEMS done"
# ------------------------------------------------------------------------ #







# ----------------------------  Item answers  ----------------------------- #
puts "Seeding ITEM ANSWERS started"


itemanswer01 = iter20.answers << ItemAnswer.create(respondent: respon01 , item: item01)
itemanswer02 = iter21.answers << ItemAnswer.create(respondent: respon01 , item: item02)
itemanswer03 = iter22.answers << ItemAnswer.create(respondent: respon01 , item: item03)
itemanswer04 = iter23.answers << ItemAnswer.create(respondent: respon01 , item: item04)
itemanswer05 = iter24.answers << ItemAnswer.create(respondent: respon01 , item: item05)
itemanswer06 = iter25.answers << ItemAnswer.create(respondent: respon01 , item: item06)
itemanswer07 = iter26.answers << ItemAnswer.create(respondent: respon01 , item: item07)
itemanswer08 = iter27.answers << ItemAnswer.create(respondent: respon01 , item: item08)
itemanswer09 = iter28.answers << ItemAnswer.create(respondent: respon01 , item: item09)
itemanswer10 = iter29.answers << ItemAnswer.create(respondent: respon01 , item: item10)


puts "Seeding ITEM ANSWERS done"
# ------------------------------------------------------------------------ #




# --------------------------------------------------------------------------- #
puts "Fucking seeding Done !!!!"






























