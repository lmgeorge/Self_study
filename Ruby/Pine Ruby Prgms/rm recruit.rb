is_an_experienced_programmer = 
candidate.years_of_experience = years
candidate.github_points = github
candidate.languages_worked_with = Ruby
candidate.applied_recently? = recent
candidate.age = age
((candidate.years_of_experience >= 2) 
|| (candidate.github_points >= 500)) 
&& (candidate.languages_worked_with = ['Ruby'] == true) 
&& (candidate.applied_recently? == false) 
&& (candidate.age >= 15)