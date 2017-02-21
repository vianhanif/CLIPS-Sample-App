
(defrule app_urine
	=>
	(section)
	(print "1. transparent")
	(print "2. pale-straw")
	(print "3. transparent-yellow")
	(print "4. dark-yellow")
	(print "5. amber")
	(print "6. honey")
	(print "7. syrup")
	(print "8. brown-ale")
	(print "9. orange")
	(print "-----------------------------")
	(ask_urine "What is the color of your urine ? ")
)

(defrule urine1
  	(user_urine transparent)
	=>
	(print-bot "You're drinking a lot of water, You may want to cut back" "")
)

(defrule urine2
  	(user_urine pale-straw)
	=>
	(print-bot "You're normal, healthy and well-hydrated." "")
)

(defrule urine3
	(user_urine transparent-yellow)
	=>
	(print-bot "You're normal." "")
)

(defrule urine4
	(user_urine dark-yellow)
	=>
	(print-bot "You're normal" "But drink some water soon.")
)


(defrule urine5
	(user_urine amber)
	=>
	(print-bot "Your body isn't getting enough water. Drink some now." "")
)

(defrule urine6
	(user_urine honey)
	=>
	(print-bot "Your body isn't getting enough water. Drink some now." "")
)

(defrule urine7
	(user_urine syrup)
	=>
	(print-bot "You could have severe dehydration. Drink water." "")
)

(defrule urine8
	(user_urine brown-ale)
	=>
	(print-bot "You could have severe dehydration. Drink water." "If it persist, see a doctor (you could have liver disease).")
)

(defrule urine9
	(user_urine orange)
	=>
	(print-bot "You may not be drinking enough water or it could be food dye." "If it persist, see a doctor (you could have a liver or bile duct condition).")
)




