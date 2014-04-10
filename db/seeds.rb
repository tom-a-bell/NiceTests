# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


### Recommended Tests ###

xray = Test.create(name: 'Chest X-ray', description: 'Radiograph')
ecg = Test.create(name: 'ECG', description: 'Resting electrocardiogram')
fbc = Test.create(name: 'Full blood count', description: '')
haemo = Test.create(name: 'Haemostasis', description: 'Including prothrombin time, activated partial thromboplastin time and international normalised ratio')
renal = Test.create(name: 'Renal function', description: 'Including tests for potassium, sodium, creatinine and/or urea levels')
gluco = Test.create(name: 'Random glucose', description: '')
urine = Test.create(name: 'Urine analysis', description: 'Urine dipstick tests - test for pH, protein, glucose, ketones, blood/haemoglobin')
blood = Test.create(name: 'Blood gases', description: '')
lung  = Test.create(name: 'Lung function', description: 'Peak expiratory flow rate, forced vital capacity and forced expiratory volume')


### Minor Surgery ###

# ASA Grade 1 - minor surgery
Patient.create(age: 1, status: 1, reason: 0, surgery: 1, recommendation: 1, tests: [])
Patient.create(age: 2, status: 1, reason: 0, surgery: 1, recommendation: 1, tests: [])
Patient.create(age: 3, status: 1, reason: 0, surgery: 1, recommendation: 1, tests: [])
Patient.create(age: 4, status: 1, reason: 0, surgery: 1, recommendation: 1, tests: [ecg])

Patient.create(age: 1, status: 1, reason: 0, surgery: 1, recommendation: 2, tests: [urine])
Patient.create(age: 2, status: 1, reason: 0, surgery: 1, recommendation: 2, tests: [ecg, urine])
Patient.create(age: 3, status: 1, reason: 0, surgery: 1, recommendation: 2, tests: [ecg, fbc, renal, urine])
Patient.create(age: 4, status: 1, reason: 0, surgery: 1, recommendation: 2, tests: [fbc, renal, urine])

# ASA Grade 2 (cardiovascular) - minor surgery
Patient.create(age: 1, status: 2, reason: 1, surgery: 1, recommendation: 1, tests: [ecg])
Patient.create(age: 2, status: 2, reason: 1, surgery: 1, recommendation: 1, tests: [ecg])
Patient.create(age: 3, status: 2, reason: 1, surgery: 1, recommendation: 1, tests: [ecg])
Patient.create(age: 4, status: 2, reason: 1, surgery: 1, recommendation: 1, tests: [ecg])

Patient.create(age: 1, status: 2, reason: 1, surgery: 1, recommendation: 2, tests: [fbc, renal, urine])
Patient.create(age: 2, status: 2, reason: 1, surgery: 1, recommendation: 2, tests: [xray, fbc, renal, urine])
Patient.create(age: 3, status: 2, reason: 1, surgery: 1, recommendation: 2, tests: [xray, fbc, renal, urine])
Patient.create(age: 4, status: 2, reason: 1, surgery: 1, recommendation: 2, tests: [xray, fbc, renal, urine])

# ASA Grade 2 (respiratory) - minor surgery
Patient.create(age: 1, status: 2, reason: 2, surgery: 1, recommendation: 1, tests: [])
Patient.create(age: 2, status: 2, reason: 2, surgery: 1, recommendation: 1, tests: [])
Patient.create(age: 3, status: 2, reason: 2, surgery: 1, recommendation: 1, tests: [])
Patient.create(age: 4, status: 2, reason: 2, surgery: 1, recommendation: 1, tests: [])

Patient.create(age: 1, status: 2, reason: 2, surgery: 1, recommendation: 2, tests: [fbc, urine, blood])
Patient.create(age: 2, status: 2, reason: 2, surgery: 1, recommendation: 2, tests: [xray, ecg, fbc, urine, blood])
Patient.create(age: 3, status: 2, reason: 2, surgery: 1, recommendation: 2, tests: [xray, ecg, fbc, renal, urine, blood])
Patient.create(age: 4, status: 2, reason: 2, surgery: 1, recommendation: 2, tests: [xray, ecg, fbc, renal, urine, blood])

# ASA Grade 2 (renal) - minor surgery
Patient.create(age: 1, status: 2, reason: 3, surgery: 1, recommendation: 1, tests: [renal])
Patient.create(age: 2, status: 2, reason: 3, surgery: 1, recommendation: 1, tests: [renal])
Patient.create(age: 3, status: 2, reason: 3, surgery: 1, recommendation: 1, tests: [renal])
Patient.create(age: 4, status: 2, reason: 3, surgery: 1, recommendation: 1, tests: [renal])

Patient.create(age: 1, status: 2, reason: 3, surgery: 1, recommendation: 2, tests: [fbc, urine])
Patient.create(age: 2, status: 2, reason: 3, surgery: 1, recommendation: 2, tests: [ecg, fbc, urine])
Patient.create(age: 3, status: 2, reason: 3, surgery: 1, recommendation: 2, tests: [ecg, fbc, urine])
Patient.create(age: 4, status: 2, reason: 3, surgery: 1, recommendation: 2, tests: [xray, ecg, fbc, urine])

# ASA Grade 3 (cardiovascular) - minor surgery
Patient.create(age: 1, status: 3, reason: 1, surgery: 1, recommendation: 1, tests: [ecg, renal])
Patient.create(age: 2, status: 3, reason: 1, surgery: 1, recommendation: 1, tests: [ecg, renal])
Patient.create(age: 3, status: 3, reason: 1, surgery: 1, recommendation: 1, tests: [ecg, renal])
Patient.create(age: 4, status: 3, reason: 1, surgery: 1, recommendation: 1, tests: [ecg, renal])

Patient.create(age: 1, status: 3, reason: 1, surgery: 1, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age: 2, status: 3, reason: 1, surgery: 1, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age: 3, status: 3, reason: 1, surgery: 1, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age: 4, status: 3, reason: 1, surgery: 1, recommendation: 2, tests: [xray, fbc, urine, blood])

# ASA Grade 3 (respiratory) - minor surgery
Patient.create(age: 1, status: 3, reason: 2, surgery: 1, recommendation: 1, tests: [])
Patient.create(age: 2, status: 3, reason: 2, surgery: 1, recommendation: 1, tests: [])
Patient.create(age: 3, status: 3, reason: 2, surgery: 1, recommendation: 1, tests: [])
Patient.create(age: 4, status: 3, reason: 2, surgery: 1, recommendation: 1, tests: [])

Patient.create(age: 1, status: 3, reason: 2, surgery: 1, recommendation: 2, tests: [xray, ecg, fbc, renal, urine, blood])
Patient.create(age: 2, status: 3, reason: 2, surgery: 1, recommendation: 2, tests: [xray, ecg, fbc, renal, urine, blood])
Patient.create(age: 3, status: 3, reason: 2, surgery: 1, recommendation: 2, tests: [xray, ecg, fbc, renal, urine, blood])
Patient.create(age: 4, status: 3, reason: 2, surgery: 1, recommendation: 2, tests: [xray, ecg, fbc, renal, urine, blood])

# ASA Grade 3 (renal) - minor surgery
Patient.create(age: 1, status: 3, reason: 3, surgery: 1, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 2, status: 3, reason: 3, surgery: 1, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 3, status: 3, reason: 3, surgery: 1, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 4, status: 3, reason: 3, surgery: 1, recommendation: 1, tests: [fbc, renal])

Patient.create(age: 1, status: 3, reason: 3, surgery: 1, recommendation: 2, tests: [haemo, gluco, urine, blood])
Patient.create(age: 2, status: 3, reason: 3, surgery: 1, recommendation: 2, tests: [ecg, haemo, gluco, urine, blood])
Patient.create(age: 3, status: 3, reason: 3, surgery: 1, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age: 4, status: 3, reason: 3, surgery: 1, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])


### Intermediate Surgery ###

# ASA Grade 1 - intermediate surgery
Patient.create(age: 1, status: 1, reason: 0, surgery: 2, recommendation: 1, tests: [])
Patient.create(age: 2, status: 1, reason: 0, surgery: 2, recommendation: 1, tests: [])
Patient.create(age: 3, status: 1, reason: 0, surgery: 2, recommendation: 1, tests: [fbc])
Patient.create(age: 4, status: 1, reason: 0, surgery: 2, recommendation: 1, tests: [ecg, fbc])

Patient.create(age: 1, status: 1, reason: 0, surgery: 2, recommendation: 2, tests: [urine])
Patient.create(age: 2, status: 1, reason: 0, surgery: 2, recommendation: 2, tests: [ecg, fbc, gluco, urine])
Patient.create(age: 3, status: 1, reason: 0, surgery: 2, recommendation: 2, tests: [ecg, renal, gluco, urine])
Patient.create(age: 4, status: 1, reason: 0, surgery: 2, recommendation: 2, tests: [renal, gluco, urine])

# ASA Grade 2 (cardiovascular) - intermediate surgery
Patient.create(age: 1, status: 2, reason: 1, surgery: 2, recommendation: 1, tests: [ecg])
Patient.create(age: 2, status: 2, reason: 1, surgery: 2, recommendation: 1, tests: [ecg])
Patient.create(age: 3, status: 2, reason: 1, surgery: 2, recommendation: 1, tests: [ecg, renal])
Patient.create(age: 4, status: 2, reason: 1, surgery: 2, recommendation: 1, tests: [ecg, renal])

Patient.create(age: 1, status: 2, reason: 1, surgery: 2, recommendation: 2, tests: [xray, fbc, renal, urine])
Patient.create(age: 2, status: 2, reason: 1, surgery: 2, recommendation: 2, tests: [xray, fbc, renal, urine])
Patient.create(age: 3, status: 2, reason: 1, surgery: 2, recommendation: 2, tests: [xray, fbc, urine])
Patient.create(age: 4, status: 2, reason: 1, surgery: 2, recommendation: 2, tests: [xray, fbc, urine])

# ASA Grade 2 (respiratory) - intermediate surgery
Patient.create(age: 1, status: 2, reason: 2, surgery: 2, recommendation: 1, tests: [])
Patient.create(age: 2, status: 2, reason: 2, surgery: 2, recommendation: 1, tests: [])
Patient.create(age: 3, status: 2, reason: 2, surgery: 2, recommendation: 1, tests: [])
Patient.create(age: 4, status: 2, reason: 2, surgery: 2, recommendation: 1, tests: [])

Patient.create(age: 1, status: 2, reason: 2, surgery: 2, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age: 2, status: 2, reason: 2, surgery: 2, recommendation: 2, tests: [xray, ecg, fbc, renal, urine, blood])
Patient.create(age: 3, status: 2, reason: 2, surgery: 2, recommendation: 2, tests: [xray, ecg, fbc, renal, urine, blood])
Patient.create(age: 4, status: 2, reason: 2, surgery: 2, recommendation: 2, tests: [xray, ecg, fbc, renal, urine, blood])

# ASA Grade 2 (renal) - intermediate surgery
Patient.create(age: 1, status: 2, reason: 3, surgery: 2, recommendation: 1, tests: [renal])
Patient.create(age: 2, status: 2, reason: 3, surgery: 2, recommendation: 1, tests: [renal])
Patient.create(age: 3, status: 2, reason: 3, surgery: 2, recommendation: 1, tests: [ecg, renal])
Patient.create(age: 4, status: 2, reason: 3, surgery: 2, recommendation: 1, tests: [ecg, renal])

Patient.create(age: 1, status: 2, reason: 3, surgery: 2, recommendation: 2, tests: [ecg, fbc, urine])
Patient.create(age: 2, status: 2, reason: 3, surgery: 2, recommendation: 2, tests: [ecg, fbc, urine])
Patient.create(age: 3, status: 2, reason: 3, surgery: 2, recommendation: 2, tests: [xray, fbc, urine])
Patient.create(age: 4, status: 2, reason: 3, surgery: 2, recommendation: 2, tests: [xray, fbc, urine])

# ASA Grade 3 (cardiovascular) - intermediate surgery
Patient.create(age: 1, status: 3, reason: 1, surgery: 2, recommendation: 1, tests: [ecg, renal])
Patient.create(age: 2, status: 3, reason: 1, surgery: 2, recommendation: 1, tests: [ecg, renal])
Patient.create(age: 3, status: 3, reason: 1, surgery: 2, recommendation: 1, tests: [ecg, renal])
Patient.create(age: 4, status: 3, reason: 1, surgery: 2, recommendation: 1, tests: [ecg, renal])

Patient.create(age: 1, status: 3, reason: 1, surgery: 2, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age: 2, status: 3, reason: 1, surgery: 2, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age: 3, status: 3, reason: 1, surgery: 2, recommendation: 2, tests: [xray, fbc, urine, blood])
Patient.create(age: 4, status: 3, reason: 1, surgery: 2, recommendation: 2, tests: [xray, fbc, urine, blood])

# ASA Grade 3 (respiratory) - intermediate surgery
Patient.create(age: 1, status: 3, reason: 2, surgery: 2, recommendation: 1, tests: [])
Patient.create(age: 2, status: 3, reason: 2, surgery: 2, recommendation: 1, tests: [])
Patient.create(age: 3, status: 3, reason: 2, surgery: 2, recommendation: 1, tests: [ecg])
Patient.create(age: 4, status: 3, reason: 2, surgery: 2, recommendation: 1, tests: [ecg, fbc])

Patient.create(age: 1, status: 3, reason: 2, surgery: 2, recommendation: 2, tests: [xray, ecg, fbc, renal, urine, blood, lung])
Patient.create(age: 2, status: 3, reason: 2, surgery: 2, recommendation: 2, tests: [xray, ecg, fbc, renal, urine, blood, lung])
Patient.create(age: 3, status: 3, reason: 2, surgery: 2, recommendation: 2, tests: [xray, fbc, renal, urine, blood, lung])
Patient.create(age: 4, status: 3, reason: 2, surgery: 2, recommendation: 2, tests: [xray, renal, urine, blood, lung])

# ASA Grade 3 (renal) - intermediate surgery
Patient.create(age: 1, status: 3, reason: 3, surgery: 2, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 2, status: 3, reason: 3, surgery: 2, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 3, status: 3, reason: 3, surgery: 2, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 4, status: 3, reason: 3, surgery: 2, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 3, reason: 3, surgery: 2, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age: 2, status: 3, reason: 3, surgery: 2, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age: 3, status: 3, reason: 3, surgery: 2, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age: 4, status: 3, reason: 3, surgery: 2, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])


### Major Surgery ###

# ASA Grade 1 - major surgery
Patient.create(age: 1, status: 1, reason: 0, surgery: 3, recommendation: 1, tests: [fbc])
Patient.create(age: 2, status: 1, reason: 0, surgery: 3, recommendation: 1, tests: [fbc])
Patient.create(age: 3, status: 1, reason: 0, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 4, status: 1, reason: 0, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 1, reason: 0, surgery: 3, recommendation: 2, tests: [renal, gluco, urine])
Patient.create(age: 2, status: 1, reason: 0, surgery: 3, recommendation: 2, tests: [ecg, renal, gluco, urine])
Patient.create(age: 3, status: 1, reason: 0, surgery: 3, recommendation: 2, tests: [xray, gluco, urine])
Patient.create(age: 4, status: 1, reason: 0, surgery: 3, recommendation: 2, tests: [xray, gluco, urine])

# ASA Grade 2 (cardiovascular) - major surgery
Patient.create(age: 1, status: 2, reason: 1, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 2, status: 2, reason: 1, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 3, status: 2, reason: 1, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 4, status: 2, reason: 1, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 2, reason: 1, surgery: 3, recommendation: 2, tests: [xray, urine, blood])
Patient.create(age: 2, status: 2, reason: 1, surgery: 3, recommendation: 2, tests: [xray, urine, blood])
Patient.create(age: 3, status: 2, reason: 1, surgery: 3, recommendation: 2, tests: [xray, urine, blood])
Patient.create(age: 4, status: 2, reason: 1, surgery: 3, recommendation: 2, tests: [xray, urine, blood])

# ASA Grade 2 (respiratory) - major surgery
Patient.create(age: 1, status: 2, reason: 2, surgery: 3, recommendation: 1, tests: [fbc])
Patient.create(age: 2, status: 2, reason: 2, surgery: 3, recommendation: 1, tests: [fbc])
Patient.create(age: 3, status: 2, reason: 2, surgery: 3, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 4, status: 2, reason: 2, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 2, reason: 2, surgery: 3, recommendation: 2, tests: [xray, ecg, renal, urine, blood])
Patient.create(age: 2, status: 2, reason: 2, surgery: 3, recommendation: 2, tests: [xray, ecg, renal, urine, blood, lung])
Patient.create(age: 3, status: 2, reason: 2, surgery: 3, recommendation: 2, tests: [xray, ecg, urine, blood, lung])
Patient.create(age: 4, status: 2, reason: 2, surgery: 3, recommendation: 2, tests: [xray, urine, blood, lung])

# ASA Grade 2 (renal) - major surgery
Patient.create(age: 1, status: 2, reason: 3, surgery: 3, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 2, status: 2, reason: 3, surgery: 3, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 3, status: 2, reason: 3, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 4, status: 2, reason: 3, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 2, reason: 3, surgery: 3, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age: 2, status: 2, reason: 3, surgery: 3, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age: 3, status: 2, reason: 3, surgery: 3, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age: 4, status: 2, reason: 3, surgery: 3, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])

# ASA Grade 3 (cardiovascular) - major surgery
Patient.create(age: 1, status: 3, reason: 1, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 2, status: 3, reason: 1, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 3, status: 3, reason: 1, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 4, status: 3, reason: 1, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 3, reason: 1, surgery: 3, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age: 2, status: 3, reason: 1, surgery: 3, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age: 3, status: 3, reason: 1, surgery: 3, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age: 4, status: 3, reason: 1, surgery: 3, recommendation: 2, tests: [xray, haemo, urine, blood])

# ASA Grade 3 (respiratory) - major surgery
Patient.create(age: 1, status: 3, reason: 2, surgery: 3, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 2, status: 3, reason: 2, surgery: 3, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 3, status: 3, reason: 2, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 4, status: 3, reason: 2, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 3, reason: 2, surgery: 3, recommendation: 2, tests: [xray, ecg, gluco, urine, blood, lung])
Patient.create(age: 2, status: 3, reason: 2, surgery: 3, recommendation: 2, tests: [xray, ecg, gluco, urine, blood, lung])
Patient.create(age: 3, status: 3, reason: 2, surgery: 3, recommendation: 2, tests: [xray, gluco, urine, blood, lung])
Patient.create(age: 4, status: 3, reason: 2, surgery: 3, recommendation: 2, tests: [xray, gluco, urine, blood, lung])

# ASA Grade 3 (renal) - major surgery
Patient.create(age: 1, status: 3, reason: 3, surgery: 3, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 2, status: 3, reason: 3, surgery: 3, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 3, status: 3, reason: 3, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 4, status: 3, reason: 3, surgery: 3, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 3, reason: 3, surgery: 3, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age: 2, status: 3, reason: 3, surgery: 3, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age: 3, status: 3, reason: 3, surgery: 3, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age: 4, status: 3, reason: 3, surgery: 3, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])


### Complex Surgery ###

# ASA Grade 1 - complex surgery
Patient.create(age: 1, status: 1, reason: 0, surgery: 4, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 2, status: 1, reason: 0, surgery: 4, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 3, status: 1, reason: 0, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 4, status: 1, reason: 0, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 1, reason: 0, surgery: 4, recommendation: 2, tests: [haemo, gluco, urine])
Patient.create(age: 2, status: 1, reason: 0, surgery: 4, recommendation: 2, tests: [ecg, haemo, gluco, urine])
Patient.create(age: 3, status: 1, reason: 0, surgery: 4, recommendation: 2, tests: [xray, haemo, gluco, urine])
Patient.create(age: 4, status: 1, reason: 0, surgery: 4, recommendation: 2, tests: [xray, haemo, gluco, urine])

# ASA Grade 2 (cardiovascular) - complex surgery
Patient.create(age: 1, status: 2, reason: 1, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 2, status: 2, reason: 1, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 3, status: 2, reason: 1, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 4, status: 2, reason: 1, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 2, reason: 1, surgery: 4, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age: 2, status: 2, reason: 1, surgery: 4, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age: 3, status: 2, reason: 1, surgery: 4, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age: 4, status: 2, reason: 1, surgery: 4, recommendation: 2, tests: [xray, haemo, urine, blood])

# ASA Grade 2 (respiratory) - complex surgery
Patient.create(age: 1, status: 2, reason: 2, surgery: 4, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 2, status: 2, reason: 2, surgery: 4, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 3, status: 2, reason: 2, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 4, status: 2, reason: 2, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 2, reason: 2, surgery: 4, recommendation: 2, tests: [xray, ecg, haemo, urine, blood, lung])
Patient.create(age: 2, status: 2, reason: 2, surgery: 4, recommendation: 2, tests: [xray, ecg, haemo, urine, blood, lung])
Patient.create(age: 3, status: 2, reason: 2, surgery: 4, recommendation: 2, tests: [xray, haemo, urine, blood, lung])
Patient.create(age: 4, status: 2, reason: 2, surgery: 4, recommendation: 2, tests: [xray, haemo, urine, blood, lung])

# ASA Grade 2 (renal) - complex surgery
Patient.create(age: 1, status: 2, reason: 3, surgery: 4, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 2, status: 2, reason: 3, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 3, status: 2, reason: 3, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 4, status: 2, reason: 3, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 2, reason: 3, surgery: 4, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age: 2, status: 2, reason: 3, surgery: 4, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age: 3, status: 2, reason: 3, surgery: 4, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age: 4, status: 2, reason: 3, surgery: 4, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])

# ASA Grade 3 (cardiovascular) - complex surgery
Patient.create(age: 1, status: 3, reason: 1, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 2, status: 3, reason: 1, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 3, status: 3, reason: 1, surgery: 4, recommendation: 1, tests: [xray, ecg, fbc, renal])
Patient.create(age: 4, status: 3, reason: 1, surgery: 4, recommendation: 1, tests: [xray, ecg, fbc, renal])

Patient.create(age: 1, status: 3, reason: 1, surgery: 4, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age: 2, status: 3, reason: 1, surgery: 4, recommendation: 2, tests: [xray, haemo, urine, blood])
Patient.create(age: 3, status: 3, reason: 1, surgery: 4, recommendation: 2, tests: [haemo, urine, blood])
Patient.create(age: 4, status: 3, reason: 1, surgery: 4, recommendation: 2, tests: [haemo, urine, blood])

# ASA Grade 3 (respiratory) - complex surgery
Patient.create(age: 1, status: 3, reason: 2, surgery: 4, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 2, status: 3, reason: 2, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 3, status: 3, reason: 2, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 4, status: 3, reason: 2, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 3, reason: 2, surgery: 4, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood, lung])
Patient.create(age: 2, status: 3, reason: 2, surgery: 4, recommendation: 2, tests: [xray, haemo, gluco, urine, blood, lung])
Patient.create(age: 3, status: 3, reason: 2, surgery: 4, recommendation: 2, tests: [xray, haemo, gluco, urine, blood, lung])
Patient.create(age: 4, status: 3, reason: 2, surgery: 4, recommendation: 2, tests: [xray, haemo, gluco, urine, blood, lung])

# ASA Grade 3 (renal) - complex surgery
Patient.create(age: 1, status: 3, reason: 3, surgery: 4, recommendation: 1, tests: [fbc, renal])
Patient.create(age: 2, status: 3, reason: 3, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 3, status: 3, reason: 3, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])
Patient.create(age: 4, status: 3, reason: 3, surgery: 4, recommendation: 1, tests: [ecg, fbc, renal])

Patient.create(age: 1, status: 3, reason: 3, surgery: 4, recommendation: 2, tests: [xray, ecg, haemo, gluco, urine, blood])
Patient.create(age: 2, status: 3, reason: 3, surgery: 4, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age: 3, status: 3, reason: 3, surgery: 4, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
Patient.create(age: 4, status: 3, reason: 3, surgery: 4, recommendation: 2, tests: [xray, haemo, gluco, urine, blood])
