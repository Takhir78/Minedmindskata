grades = {:math => "90", :art => "80", :japanese => "85", :chemistry => "75"}

grades.each {|subject, score| grades.delete(subject) if score.to_i < 85}

p grades
