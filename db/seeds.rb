# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Candidate.destroy_all

c1 = Candidate.new
c1.first_name = "Jonathan"
c1.last_name = "Kaplan"
c1.title = "Render Farm Manager"
c1.industry = "Animation"
c1.years_experience = "7"
c1.email = "jonkap1@mail.com"
c1.bio = "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
c1.company_id = "1"
c1.save

c2 = Candidate.new
c2.first_name = "Branko"
c2.last_name = "Cvetkovic"
c2.title = "Student"
c2.industry = "Architecture"
c2.years_experience = "5"
c2.email = "jaggoda@mail.com"
c2.bio = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
c2.company_id = "2"
c2.save


c3 = Candidate.new
c3.first_name = "Conor"
c3.last_name = "Bryce"
c3.title = "Senior Designer"
c3.industry = "Digital Art"
c3.years_experience = "8"
c3.email = "conorbryce@mail.com"
c3.bio = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
c3.company_id = "3"
c3.save

c4 = Candidate.new
c4.first_name = "David"
c4.last_name = "McLeod"
c4.title = "Graphic Designer/Illustrator"
c4.industry = "Digital Art"
c4.years_experience = "4"
c4.email = "davidmcleod@mail.com"
c4.bio = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
c4.company_id = "4"
c4.save

puts "There are #{Candidate.count} rows in the candidates table"

Company.destroy_all

company1 = Company.create(name: 'Google')
company2 = Company.create(name: 'Amazon')
company3 = Company.create(name: 'Groupon')
company4 = Company.create(name: 'PerfectHire')
company5 = Company.create(name: '37Signals')

puts "There are #{Company.count} in the company table"

Note.destroy_all

n1 = Note.new
n1.description = "This is a note."
n1.date = "01/04/2013"
n1.job_id = "1"
n1.save

n2 = Note.new
n2.description = "This is a note."
n2.date = "01/04/2013"
n2.job_id = "1"
n2.save

n3 = Note.new
n3.description = "This is a note."
n3.date = "01/04/2013"
n3.job_id = "2"
n3.save


n4 = Note.new
n4.description = "This is another note."
n4.date = "01/04/2013"
n4.job_id = "3"
n4.save

n5 = Note.new
n5.description = "This is another note."
n5.date = "01/04/2013"
n5.job_id = "5"
n5.save

puts "There are #{Note.count} rows in the notes table"

Job.destroy_all

j1 = Job.new
j1.title = "Lorem ipsum dolor sit amet"
j1.description ="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel diam sit amet felis commodo auctor ac id leo. Duis sagittis, turpis nec hendrerit pellentesque, sem tortor cursus diam, sit amet blandit lorem urna vel nisi. Nam sed sem a urna ornare accumsan."
j1.location = "Neverland"
j1.email = "job@mail.com"
j1.url = "http://localhost:3000"
j1.save

j2 = Job.new
j2.title = "Lorem ipsum dolor sit amet"
j2.description ="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel diam sit amet felis commodo auctor ac id leo. Duis sagittis, turpis nec hendrerit pellentesque, sem tortor cursus diam, sit amet blandit lorem urna vel nisi. Nam sed sem a urna ornare accumsan."
j2.location = "Anywhere"
j2.email = "job@mail.com"
j2.url = "http://localhost:3000"
j2.save

j3 = Job.new
j3.title = "Another position"
j3.description ="Some long description"
j3.location = "Near you"
j3.email = "job@mail.com"
j3.url = "http://localhost:3000"
j3.save

j4 = Job.new
j4.title = "Freelance Rails developer"
j4.description ="Rock star developer needed."
j4.location = "Ouroboros"
j4.email = "job@mail.com"
j4.url = "http://localhost:3000"
j4.save

j5 = Job.new
j5.title = "Front-End developer"
j5.description ="All-rounder needed."
j5.location = "Shangri-La Studios"
j5.email = "job@mail.com"
j5.url = "http://localhost:3000"
j5.save

j6 = Job.new
j6.title = "Illustrator"
j6.description ="3D design background."
j6.location = "Utopia Animations"
j6.email = "job@mail.com"
j6.url = "http://localhost:3000"
j6.save


puts "There are #{Job.count} rows in the jobs table."

Recruiter.destroy_all

r1 = Recruiter.new
r1.first_name = "Pat"
r1.last_name = "Riley"
r1.title = "Senior Recruiter"
r1.company_id = "1"
r1.email = "recruiter@mail.com"
r1.save

r2 = Recruiter.new
r2.first_name = "George"
r2.last_name = "Hill"
r2.title = "Jnr Recruiter"
r2.company_id = "1"
r2.email = "recruiter@mail.com"
r2.save

r3 = Recruiter.new
r3.first_name = "Larry"
r3.last_name = "Bird"
r3.title = "Freelance Recruiter"
r3.company_id = "1"
r3.email = "recruiter@mail.com"
r3.save

puts "There are #{Recruiter.count} rows in the jobs table."

HiringManager.destroy_all

hm1 = HiringManager.new
hm1.first_name = "William"
hm1.last_name = "Adams"
hm1.title = "Hiring Manager"
hm1.company_id = "1"
hm1.email = "recruiter@mail.com"
hm1.save

hm2 = HiringManager.new
hm2.first_name = "William"
hm2.last_name = "Wallace"
hm2.title = "Jnr HR Manager"
hm2.company_id = "2"
hm2.email = "recruiter@mail.com"
hm2.save

hm3 = HiringManager.new
hm3.first_name = "Nerlens"
hm3.last_name = "Noel"
hm3.title = "Executive HR Manager"
hm3.company_id = "3"
hm3.email = "recruiter@mail.com"
hm3.save

hm4 = HiringManager.new
hm4.first_name = "The"
hm4.last_name = "Special One"
hm4.title = "Assistant HR clerk"
hm4.company_id = "3"
hm4.email = "recruiter@mail.com"
hm4.save

puts "There are #{HiringManager.count} rows in the hiring managers table"

HiringManagerNote.destroy_all

hm_note1 = HiringManagerNote.new
hm_note1.candidate_id = c1.id
hm_note1.note_id = n1.id
hm_note1.hiring_manager_id = hm1.id
hm_note1.save

hm_note2 = HiringManagerNote.new
hm_note2.candidate_id = c1.id
hm_note2.note_id = n2.id
hm_note2.hiring_manager_id = hm1.id
hm_note2.save

hm_note3 = HiringManagerNote.new
hm_note3.candidate_id = c2.id
hm_note3.note_id = n3.id
hm_note3.hiring_manager_id = hm1.id
hm_note3.save

hm_note4 = HiringManagerNote.new
hm_note4.candidate_id = c3.id
hm_note4.note_id = n4.id
hm_note4.hiring_manager_id = hm2.id
hm_note4.save

hm_note5 = HiringManagerNote.new
hm_note5.candidate_id = c3.id
hm_note5.note_id = n4.id
hm_note5.hiring_manager_id = hm2.id
hm_note5.save

puts "There are #{HiringManagerNote.count} rows in the hiring_manger_note table."

RecruiterNote.destroy_all

rm_note1 = RecruiterNote.new
rm_note1.candidate_id = c3.id
rm_note1.note_id = n4.id
rm_note1.recruiter_id = r1.id
rm_note1.save

rm_note2 = RecruiterNote.new
rm_note2.candidate_id = c3.id
rm_note2.note_id = n1.id
rm_note2.recruiter_id = r1.id
rm_note2.save


rm_note3 = RecruiterNote.new
rm_note3.candidate_id = c2.id
rm_note3.note_id = n1.id
rm_note3.recruiter_id = r2.id
rm_note3.save

rm_note4 = RecruiterNote.new
rm_note4.candidate_id = c1.id
rm_note4.note_id = n3.id
rm_note4.recruiter_id = r3.id
rm_note4.save

rm_note5 = RecruiterNote.new
rm_note5.candidate_id = c2.id
rm_note5.note_id = n3.id
rm_note5.recruiter_id = r3.id
rm_note5.save

puts "There are #{RecruiterNote.count} rows in the recruiter_note table."



