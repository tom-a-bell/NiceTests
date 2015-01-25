# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


### Age Groups ###

age_group_1 = AgeGroup.create(name: '16 - 39')
age_group_2 = AgeGroup.create(name: '40 - 59')
age_group_3 = AgeGroup.create(name: '60 - 80')
age_group_4 = AgeGroup.create(name: '> 80 years')


### ASA Grades ###

grade_1 = AsaGrade.create(name: '1')
grade_2 = AsaGrade.create(name: '2')
grade_3 = AsaGrade.create(name: '3')
grade_4 = AsaGrade.create(name: '4')


### Reasons for ASA Grade ###

none = Reason.create(name: 'None')
cardiovascular = Reason.create(name: 'Cardiovascular')
respiratory = Reason.create(name: 'Respiratory')
renal = Reason.create(name: 'Renal')


### Surgery Grades ###

minor = Surgery.create(name: 'Minor')
intermediate = Surgery.create(name: 'Intermediate')
major = Surgery.create(name: 'Major')
complex = Surgery.create(name: 'Complex')


### Recommended Tests ###

xray  = Test.create(name: 'Chest X-ray', description: 'Radiograph')
ecg   = Test.create(name: 'ECG', description: 'Resting electrocardiogram')
fbc   = Test.create(name: 'Full blood count', description: '')
haemo = Test.create(name: 'Haemostasis', description: 'Including prothrombin time, activated partial thromboplastin time and international normalised ratio')
renfn = Test.create(name: 'Renal function', description: 'Including tests for potassium, sodium, creatinine and/or urea levels')
gluco = Test.create(name: 'Random glucose', description: '')
urine = Test.create(name: 'Urine analysis', description: 'Urine dipstick tests - test for pH, protein, glucose, ketones, blood/haemoglobin')
blood = Test.create(name: 'Blood gases', description: '')
lung  = Test.create(name: 'Lung function', description: 'Peak expiratory flow rate, forced vital capacity and forced expiratory volume')


### Minor Surgery ###

# ASA Grade 1 - minor surgery
Patient.create(age_group: age_group_1, asa_grade: grade_1, reason: none, surgery: minor, recommendation: 1, tests: [])
Patient.create(age_group: age_group_2, asa_grade: grade_1, reason: none, surgery: minor, recommendation: 1, tests: [])
Patient.create(age_group: age_group_3, asa_grade: grade_1, reason: none, surgery: minor, recommendation: 1, tests: [])
Patient.create(age_group: age_group_4, asa_grade: grade_1, reason: none, surgery: minor, recommendation: 1, tests: [ecg])

Patient.create(age_group: age_group_1, asa_grade: grade_1, reason: none, surgery: minor, recommendation: 2, tests: [urine])
Patient.create(age_group: age_group_2, asa_grade: grade_1, reason: none, surgery: minor, recommendation: 2, tests: [ecg, urine])
Patient.create(age_group: age_group_3, asa_grade: grade_1, reason: none, surgery: minor, recommendation: 2, tests: [ecg, fbc, renfn, urine])
Patient.create(age_group: age_group_4, asa_grade: grade_1, reason: none, surgery: minor, recommendation: 2, tests: [fbc, renfn, urine])

# ASA Grade 2 (cardiovascular) - minor surgery
Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: cardiovascular, surgery: minor, recommendation: 1, tests: [ecg])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: cardiovascular, surgery: minor, recommendation: 1, tests: [ecg])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: cardiovascular, surgery: minor, recommendation: 1, tests: [ecg])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: cardiovascular, surgery: minor, recommendation: 1, tests: [ecg])

Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: cardiovascular, surgery: minor, recommendation: 2, tests: [fbc, renfn, urine])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: cardiovascular, surgery: minor, recommendation: 2, tests: [xray, fbc, renfn, urine])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: cardiovascular, surgery: minor, recommendation: 2, tests: [xray, fbc, renfn, urine])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: cardiovascular, surgery: minor, recommendation: 2, tests: [xray, fbc, renfn, urine])

# ASA Grade 2 (respiratory) - minor surgery
Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: respiratory, surgery: minor, recommendation: 1, tests: [])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: respiratory, surgery: minor, recommendation: 1, tests: [])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: respiratory, surgery: minor, recommendation: 1, tests: [])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: respiratory, surgery: minor, recommendation: 1, tests: [])

Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: respiratory, surgery: minor, recommendation: 2, tests: [fbc, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: respiratory, surgery: minor, recommendation: 2, tests: [xray, ecg, fbc, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: respiratory, surgery: minor, recommendation: 2, tests: [xray, ecg, fbc, renfn, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: respiratory, surgery: minor, recommendation: 2, tests: [xray, ecg, fbc, renfn, urine, blood])

# ASA Grade 2 (renal) - minor surgery
Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: renal, surgery: minor, recommendation: 1, tests: [renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: renal, surgery: minor, recommendation: 1, tests: [renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: renal, surgery: minor, recommendation: 1, tests: [renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: renal, surgery: minor, recommendation: 1, tests: [renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: renal, surgery: minor, recommendation: 2, tests: [fbc, urine])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: renal, surgery: minor, recommendation: 2, tests: [ecg, fbc, urine])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: renal, surgery: minor, recommendation: 2, tests: [ecg, fbc, urine])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: renal, surgery: minor, recommendation: 2, tests: [xray, ecg, fbc, urine])

# ASA Grade 3 (cardiovascular) - minor surgery
Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: cardiovascular, surgery: minor, recommendation: 1, tests: [ecg, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: cardiovascular, surgery: minor, recommendation: 1, tests: [ecg, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: cardiovascular, surgery: minor, recommendation: 1, tests: [ecg, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: cardiovascular, surgery: minor, recommendation: 1, tests: [ecg, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: cardiovascular, surgery: minor, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: cardiovascular, surgery: minor, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: cardiovascular, surgery: minor, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: cardiovascular, surgery: minor, recommendation: 2, tests: [xray, fbc, urine, blood])

# ASA Grade 3 (respiratory) - minor surgery
Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: respiratory, surgery: minor, recommendation: 1, tests: [])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: respiratory, surgery: minor, recommendation: 1, tests: [])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: respiratory, surgery: minor, recommendation: 1, tests: [])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: respiratory, surgery: minor, recommendation: 1, tests: [])

Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: respiratory, surgery: minor, recommendation: 2, tests: [xray, ecg, fbc, renfn, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: respiratory, surgery: minor, recommendation: 2, tests: [xray, ecg, fbc, renfn, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: respiratory, surgery: minor, recommendation: 2, tests: [xray, ecg, fbc, renfn, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: respiratory, surgery: minor, recommendation: 2, tests: [xray, ecg, fbc, renfn, urine, blood])

# ASA Grade 3 (renal) - minor surgery
Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: renal, surgery: minor, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: renal, surgery: minor, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: renal, surgery: minor, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: renal, surgery: minor, recommendation: 1, tests: [fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: renal, surgery: minor, recommendation: 2, tests: [haemo, gluco, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: renal, surgery: minor, recommendation: 2, tests: [ecg, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: renal, surgery: minor, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: renal, surgery: minor, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])


### Intermediate Surgery ###

# ASA Grade 1 - intermediate surgery
Patient.create(age_group: age_group_1, asa_grade: grade_1, reason: none, surgery: intermediate, recommendation: 1, tests: [])
Patient.create(age_group: age_group_2, asa_grade: grade_1, reason: none, surgery: intermediate, recommendation: 1, tests: [])
Patient.create(age_group: age_group_3, asa_grade: grade_1, reason: none, surgery: intermediate, recommendation: 1, tests: [fbc])
Patient.create(age_group: age_group_4, asa_grade: grade_1, reason: none, surgery: intermediate, recommendation: 1, tests: [ecg, fbc])

Patient.create(age_group: age_group_1, asa_grade: grade_1, reason: none, surgery: intermediate, recommendation: 2, tests: [urine])
Patient.create(age_group: age_group_2, asa_grade: grade_1, reason: none, surgery: intermediate, recommendation: 2, tests: [ecg, fbc, gluco, urine])
Patient.create(age_group: age_group_3, asa_grade: grade_1, reason: none, surgery: intermediate, recommendation: 2, tests: [ecg, renfn, gluco, urine])
Patient.create(age_group: age_group_4, asa_grade: grade_1, reason: none, surgery: intermediate, recommendation: 2, tests: [renfn, gluco, urine])

# ASA Grade 2 (cardiovascular) - intermediate surgery
Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: cardiovascular, surgery: intermediate, recommendation: 1, tests: [ecg])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: cardiovascular, surgery: intermediate, recommendation: 1, tests: [ecg])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: cardiovascular, surgery: intermediate, recommendation: 1, tests: [ecg, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: cardiovascular, surgery: intermediate, recommendation: 1, tests: [ecg, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: cardiovascular, surgery: intermediate, recommendation: 2, tests: [xray, fbc, renfn, urine])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: cardiovascular, surgery: intermediate, recommendation: 2, tests: [xray, fbc, renfn, urine])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: cardiovascular, surgery: intermediate, recommendation: 2, tests: [xray, fbc, urine])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: cardiovascular, surgery: intermediate, recommendation: 2, tests: [xray, fbc, urine])

# ASA Grade 2 (respiratory) - intermediate surgery
Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: respiratory, surgery: intermediate, recommendation: 1, tests: [])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: respiratory, surgery: intermediate, recommendation: 1, tests: [])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: respiratory, surgery: intermediate, recommendation: 1, tests: [])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: respiratory, surgery: intermediate, recommendation: 1, tests: [])

Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: respiratory, surgery: intermediate, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: respiratory, surgery: intermediate, recommendation: 2, tests: [xray, ecg, fbc, renfn, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: respiratory, surgery: intermediate, recommendation: 2, tests: [xray, ecg, fbc, renfn, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: respiratory, surgery: intermediate, recommendation: 2, tests: [xray, ecg, fbc, renfn, urine, blood])

# ASA Grade 2 (renal) - intermediate surgery
Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: renal, surgery: intermediate, recommendation: 1, tests: [renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: renal, surgery: intermediate, recommendation: 1, tests: [renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: renal, surgery: intermediate, recommendation: 1, tests: [ecg, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: renal, surgery: intermediate, recommendation: 1, tests: [ecg, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: renal, surgery: intermediate, recommendation: 2, tests: [ecg, fbc, urine])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: renal, surgery: intermediate, recommendation: 2, tests: [ecg, fbc, urine])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: renal, surgery: intermediate, recommendation: 2, tests: [xray, fbc, urine])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: renal, surgery: intermediate, recommendation: 2, tests: [xray, fbc, urine])

# ASA Grade 3 (cardiovascular) - intermediate surgery
Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: cardiovascular, surgery: intermediate, recommendation: 1, tests: [ecg, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: cardiovascular, surgery: intermediate, recommendation: 1, tests: [ecg, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: cardiovascular, surgery: intermediate, recommendation: 1, tests: [ecg, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: cardiovascular, surgery: intermediate, recommendation: 1, tests: [ecg, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: cardiovascular, surgery: intermediate, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: cardiovascular, surgery: intermediate, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: cardiovascular, surgery: intermediate, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: cardiovascular, surgery: intermediate, recommendation: 2, tests: [xray, fbc, urine, blood])

# ASA Grade 3 (respiratory) - intermediate surgery
Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: respiratory, surgery: intermediate, recommendation: 1, tests: [])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: respiratory, surgery: intermediate, recommendation: 1, tests: [])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: respiratory, surgery: intermediate, recommendation: 1, tests: [ecg])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: respiratory, surgery: intermediate, recommendation: 1, tests: [ecg, fbc])

Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: respiratory, surgery: intermediate, recommendation: 2, tests: [xray, ecg, fbc, renfn, urine, blood, lung])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: respiratory, surgery: intermediate, recommendation: 2, tests: [xray, ecg, fbc, renfn, urine, blood, lung])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: respiratory, surgery: intermediate, recommendation: 2, tests: [xray, fbc, renfn, urine, blood, lung])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: respiratory, surgery: intermediate, recommendation: 2, tests: [xray, renfn, urine, blood, lung])

# ASA Grade 3 (renal) - intermediate surgery
Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: renal, surgery: intermediate, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: renal, surgery: intermediate, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: renal, surgery: intermediate, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: renal, surgery: intermediate, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: renal, surgery: intermediate, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: renal, surgery: intermediate, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: renal, surgery: intermediate, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: renal, surgery: intermediate, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])


### Major Surgery ###

# ASA Grade 1 - major surgery
Patient.create(age_group: age_group_1, asa_grade: grade_1, reason: none, surgery: major, recommendation: 1, tests: [fbc])
Patient.create(age_group: age_group_2, asa_grade: grade_1, reason: none, surgery: major, recommendation: 1, tests: [fbc])
Patient.create(age_group: age_group_3, asa_grade: grade_1, reason: none, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_1, reason: none, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_1, reason: none, surgery: major, recommendation: 2, tests: [renfn, gluco, urine])
Patient.create(age_group: age_group_2, asa_grade: grade_1, reason: none, surgery: major, recommendation: 2, tests: [ecg, renfn, gluco, urine])
Patient.create(age_group: age_group_3, asa_grade: grade_1, reason: none, surgery: major, recommendation: 2, tests: [xray, gluco, urine])
Patient.create(age_group: age_group_4, asa_grade: grade_1, reason: none, surgery: major, recommendation: 2, tests: [xray, gluco, urine])

# ASA Grade 2 (cardiovascular) - major surgery
Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: cardiovascular, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: cardiovascular, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: cardiovascular, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: cardiovascular, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: cardiovascular, surgery: major, recommendation: 2, tests: [xray, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: cardiovascular, surgery: major, recommendation: 2, tests: [xray, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: cardiovascular, surgery: major, recommendation: 2, tests: [xray, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: cardiovascular, surgery: major, recommendation: 2, tests: [xray, urine, blood])

# ASA Grade 2 (respiratory) - major surgery
Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: respiratory, surgery: major, recommendation: 1, tests: [fbc])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: respiratory, surgery: major, recommendation: 1, tests: [fbc])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: respiratory, surgery: major, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: respiratory, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: respiratory, surgery: major, recommendation: 2, tests: [xray, ecg, renfn, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: respiratory, surgery: major, recommendation: 2, tests: [xray, ecg, renfn, urine, blood, lung])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: respiratory, surgery: major, recommendation: 2, tests: [xray, ecg, urine, blood, lung])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: respiratory, surgery: major, recommendation: 2, tests: [xray, urine, blood, lung])

# ASA Grade 2 (renal) - major surgery
Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: renal, surgery: major, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: renal, surgery: major, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: renal, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: renal, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: renal, surgery: major, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: renal, surgery: major, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: renal, surgery: major, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: renal, surgery: major, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])

# ASA Grade 3 (cardiovascular) - major surgery
Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: cardiovascular, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: cardiovascular, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: cardiovascular, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: cardiovascular, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: cardiovascular, surgery: major, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: cardiovascular, surgery: major, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: cardiovascular, surgery: major, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: cardiovascular, surgery: major, recommendation: 2, tests: [xray, haemo, urine, blood])

# ASA Grade 3 (respiratory) - major surgery
Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: respiratory, surgery: major, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: respiratory, surgery: major, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: respiratory, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: respiratory, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: respiratory, surgery: major, recommendation: 2, tests: [xray, ecg, gluco, urine, blood, lung])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: respiratory, surgery: major, recommendation: 2, tests: [xray, ecg, gluco, urine, blood, lung])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: respiratory, surgery: major, recommendation: 2, tests: [xray, gluco, urine, blood, lung])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: respiratory, surgery: major, recommendation: 2, tests: [xray, gluco, urine, blood, lung])

# ASA Grade 3 (renal) - major surgery
Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: renal, surgery: major, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: renal, surgery: major, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: renal, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: renal, surgery: major, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: renal, surgery: major, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: renal, surgery: major, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: renal, surgery: major, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: renal, surgery: major, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])


### Complex Surgery ###

# ASA Grade 1 - complex surgery
Patient.create(age_group: age_group_1, asa_grade: grade_1, reason: none, surgery: complex, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_1, reason: none, surgery: complex, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_1, reason: none, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_1, reason: none, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_1, reason: none, surgery: complex, recommendation: 2, tests: [haemo, gluco, urine])
Patient.create(age_group: age_group_2, asa_grade: grade_1, reason: none, surgery: complex, recommendation: 2, tests: [ecg, haemo, gluco, urine])
Patient.create(age_group: age_group_3, asa_grade: grade_1, reason: none, surgery: complex, recommendation: 2, tests: [xray, haemo, gluco, urine])
Patient.create(age_group: age_group_4, asa_grade: grade_1, reason: none, surgery: complex, recommendation: 2, tests: [xray, haemo, gluco, urine])

# ASA Grade 2 (cardiovascular) - complex surgery
Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: cardiovascular, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: cardiovascular, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: cardiovascular, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: cardiovascular, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: cardiovascular, surgery: complex, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: cardiovascular, surgery: complex, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: cardiovascular, surgery: complex, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: cardiovascular, surgery: complex, recommendation: 2, tests: [xray, haemo, urine, blood])

# ASA Grade 2 (respiratory) - complex surgery
Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: respiratory, surgery: complex, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: respiratory, surgery: complex, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: respiratory, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: respiratory, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: respiratory, surgery: complex, recommendation: 2, tests: [xray, ecg, haemo, urine, blood, lung])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: respiratory, surgery: complex, recommendation: 2, tests: [xray, ecg, haemo, urine, blood, lung])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: respiratory, surgery: complex, recommendation: 2, tests: [xray, haemo, urine, blood, lung])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: respiratory, surgery: complex, recommendation: 2, tests: [xray, haemo, urine, blood, lung])

# ASA Grade 2 (renal) - complex surgery
Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: renal, surgery: complex, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: renal, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: renal, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: renal, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_2, reason: renal, surgery: complex, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_2, reason: renal, surgery: complex, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_2, reason: renal, surgery: complex, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_2, reason: renal, surgery: complex, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])

# ASA Grade 3 (cardiovascular) - complex surgery
Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: cardiovascular, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: cardiovascular, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: cardiovascular, surgery: complex, recommendation: 1, tests: [xray, ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: cardiovascular, surgery: complex, recommendation: 1, tests: [xray, ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: cardiovascular, surgery: complex, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: cardiovascular, surgery: complex, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: cardiovascular, surgery: complex, recommendation: 2, tests: [haemo, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: cardiovascular, surgery: complex, recommendation: 2, tests: [haemo, urine, blood])

# ASA Grade 3 (respiratory) - complex surgery
Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: respiratory, surgery: complex, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: respiratory, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: respiratory, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: respiratory, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: respiratory, surgery: complex, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood, lung])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: respiratory, surgery: complex, recommendation: 2, tests: [xray, haemo, gluco, urine, blood, lung])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: respiratory, surgery: complex, recommendation: 2, tests: [xray, haemo, gluco, urine, blood, lung])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: respiratory, surgery: complex, recommendation: 2, tests: [xray, haemo, gluco, urine, blood, lung])

# ASA Grade 3 (renal) - complex surgery
Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: renal, surgery: complex, recommendation: 1, tests: [fbc, renfn])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: renal, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: renal, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: renal, surgery: complex, recommendation: 1, tests: [ecg, fbc, renfn])

Patient.create(age_group: age_group_1, asa_grade: grade_3, reason: renal, surgery: complex, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_2, asa_grade: grade_3, reason: renal, surgery: complex, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_3, asa_grade: grade_3, reason: renal, surgery: complex, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age_group: age_group_4, asa_grade: grade_3, reason: renal, surgery: complex, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
