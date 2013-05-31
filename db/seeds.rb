# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Company.destroy_all

company1 = Company.create(name: "Google")
company2 = Company.create(name: "Amazon")
company3 = Company.create(name: "Groupon")
company4 = Company.create(name: "PerfectHire")
company5 = Company.create(name: "eSalon")
company6 = Company.create(name: "Greenhouse")
company7 = Company.create(name: "TED Conferences")
company8 = Company.create(name: "Microsoft Corporation")
company9 = Company.create(name: "Shazam")
company10 = Company.create(name: "MTV Networks")

puts "There are #{Company.count} rows in the companies table"

Candidate.destroy_all

c1 = Candidate.new
c1.first_name = "Jonathan"
c1.last_name = "Kaplan"
c1.title = "Render Farm Manager"
c1.industry = "Animation"
c1.years_experience = "7"
c1.email = "jonkap1@mail.com"
c1.bio = "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
c1.company = company1
c1.save

c2 = Candidate.new
c2.first_name = "Branko"
c2.last_name = "Cvetkovic"
c2.title = "Student"
c2.industry = "Architecture"
c2.years_experience = "5"
c2.email = "jaggoda@mail.com"
c2.bio = "I am currently a senior at the Savannah College of Art and Design seeking my B.F.A. in graphic design."
c2.company = company2
c2.save

c3 = Candidate.new
c3.first_name = "Conor"
c3.last_name = "Bryce"
c3.title = "Senior Designer"
c3.industry = "Digital Art"
c3.years_experience = "8"
c3.email = "conorbryce@mail.com"
c3.bio = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
c3.company = company3
c3.save

c4 = Candidate.new
c4.first_name = "David"
c4.last_name = "McLeod"
c4.title = "Graphic Designer/Illustrator"
c4.industry = "Digital Art"
c4.years_experience = "4"
c4.email = "davidmcleod@mail.com"
c4.bio = "I believe successful design is not just about making pretty pictures or displaying software effects."
c4.company = company4
c4.save

c5 = Candidate.new
c5.first_name = "Brenna"
c5.last_name = "Kaplan"
c5.title = "Graphic Designer, Copywriter"
c5.industry = "Copywriting, Graphic Design"
c5.years_experience = "1"
c5.email = "bk@mail.com"
c5.bio = "I am currently a senior at the Savannah College of Art and Design seeking my B.F.A. in graphic design. I enjoy collaborating with others, taking on new challenges, and trying to find my own design style. When I'm not talking about my passion for graphic design, I'm probably babbling about my love for pad thai, dogs, or any number of outdoor activities."
c5.company = company5
c5.save

c6 = Candidate.new
c6.first_name = "Juliana"
c6.last_name = "Cuervo"
c6.title = "Illustrator, Animation Student"
c6.industry = "Animation, Drawing, Illustration"
c6.years_experience = "2"
c6.email = "jc@mail.com"
c6.bio = "Im an illustrator and Animation Student from Medellín - Colombia, obsessed with crafts, bookbinding, popcorn and banana cheesecake."
c6.company = company6
c6.save

c7 = Candidate.new
c7.first_name = "Michael"
c7.last_name = "Romeo"
c7.title = "Graphic Designer/Illustrator"
c7.industry = "Graphic Design, Packaging, Typography"
c7.years_experience = "9"
c7.email = "mr@mail.com"
c7.bio = "I believe successful design is not just about making pretty pictures or displaying software effects. It's about problem-solving and focusing on the target audience. It requires listening, communicating with clients, research and concept development in order to generate the relevant solution. I also believe sense of humor and the willingness to offer a hand go a long way."
c7.company = company7
c7.save

c8 = Candidate.new
c8.first_name = "Levi"
c8.last_name = "Price "
c8.title = "Student/Entrepreneur"
c8.industry = "Industrial Design, Product Design"
c8.years_experience = "2"
c8.email = "lp@mail.com"
c8.bio = "Hi! I'm a second year Industrial Design student looking for an internship spring/summer 2013. I love working with my hands. I also love doing all of my own photography and graphic design."
c8.company = company8
c8.save

c9 = Candidate.new
c9.first_name = "Clint"
c9.last_name = "Reid"
c9.title = "Graphic Designer/Illustrator"
c9.industry = "Character Design, Illustration"
c9.years_experience = "6"
c9.email = "cr@mail.com"
c9.bio = "My name is Clint. I live in Durango, Co. I'm a designer, an illustrator, a coffee drinker, a bicycle rider, an over-analyzer, a beard grower, a music lover, an enthusiastic uncle, a worrier, a lister-of-things. I draw under the alias 'Tillman Project'. Do stuff, make stuff!"
c9.company = company9
c9.save

c10 = Candidate.new
c10.first_name = "Gabriel"
c10.last_name = "Campbell"
c10.title = "Senior Experience Designer, Lead"
c10.industry = "Interaction Design, Storyboarding, UI/UX"
c10.years_experience = "4"
c10.email = "gc@mail.com"
c10.bio = "I've been filling up sketch books and pressing coffee like a mad man who spends a lot of drawing in sketch books and drinking coffee. I'm currently focusing on illustration, designing, and screen printing in Durango, CO. If you haven't visited the mountains of Colorado, you should...they are awesome, in a mountain…."
c10.company = company10
c10.save

puts "There are #{Candidate.count} rows in the candidates table"

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
j6.title = "Graphic Designer"
j6.description ="EM Publish GmbH is an iOS game developer and publisher. We are currently looking for experienced 2D graphic designer/illustrator for our FaceMe application. FaceMe is a fun app containing animated eCards  – you star as the main hero via picture pasting. We are looking for graphic designer for app re-branding. Animation clips remain like they are. Ability to display fun style is a must. We capitalize on good mood."
j6.location = "Anywhere"
j6.email = "job@mail.com"
j6.url = "http://localhost:3000"
j6.save

j7 = Job.new
j7.title = "Sound Designer/Engineer"
j7.description ="We're looking for a passionate Sound Designer with a music background.  This person possesses a broad skill-set; we've already built a state-of-the-art audio suite and it's now time to have a full-time Engineer creating therein."
j7.location = "Bruton Stroube Studios"
j7.email = "job@mail.com"
j7.url = "http://localhost:3000"
j7.save

j8 = Job.new
j8.title = "Product Designer"
j8.description ="Are you interested in creating digital products that are used by millions of people? If you see bringing products to market as an important part of your passion then we have an opportunity for you. Nascent is looking for a Product Designer that is passionate about building great products to join our team. You will be leading product roadmaps for innovative start-ups and major North American enterprise."
j8.location = "Nascent Digital"
j8.email = "job@mail.com"
j8.url = "http://localhost:3000"
j8.save

j9 = Job.new
j9.title = "Web Designer"
j9.description ="BIR Training Center is a career training and international language school with 4 campuses in Chicago area. We are seeking a lead web designer who will be responsible for design, implementation and management of all websites and web pages. Key Responsibilities: Maintain all existing websites and web pages, Design and construct new web pages/sites, create Web graphics, user interfaces, icons, style sheets, templates and layouts.Design marketing and promotional materials across web, mobile and social media. Visualize concepts and translate requirements in to Visual prototypes using Photoshop and Illustrator."
j9.location = "BIR Training Center"
j9.email = "job@mail.com"
j9.url = "http://localhost:3000"
j9.save

j10 = Job.new
j10.title = "Lead User Experience Designer"
j10.description ="We are looking to hire YOU, because you are a talented experience designer who wants to be part of something BIG here at Citrix. You will play a key role in driving new and innovative customer experiences for a global software company. Citrix enables customers to work smarter and live better, so we know it's essential that we focus on 'experience' at every touch point. This new and exciting team is entirely committed to delivering a vision of the future, the next generation of innovative and engaging experiences which span technologies, devices and environments."
j10.location = "Citrix"
j10.email = "job@mail.com"
j10.url = "http://localhost:3000"
j10.save


puts "There are #{Job.count} rows in the jobs table"

CandidateJob.destroy_all

cj1 = CandidateJob.new
cj1.candidate = c1
cj1.job = j1
cj1.save

cj2 = CandidateJob.new
cj2.candidate = c2
cj2.job = j2
cj2.save

cj3 = CandidateJob.new
cj3.candidate = c3
cj3.job = j3
cj3.save

cj4 = CandidateJob.new
cj4.candidate = c4
cj4.job = j4
cj4.save

cj5 = CandidateJob.new
cj5.candidate = c5
cj5.job = j5
cj5.save

cj6 = CandidateJob.new
cj6.candidate = c6
cj6.job = j6
cj6.save

cj7 = CandidateJob.new
cj7.candidate = c7
cj7.job = j7
cj7.save

cj8 = CandidateJob.new
cj8.candidate = c8
cj8.job = j8
cj8.save

cj9 = CandidateJob.new
cj9.candidate = c9
cj9.job = j9
cj9.save

cj10 = CandidateJob.new
cj10.candidate = c10
cj10.job = j10
cj10.save

puts "There are #{CandidateJob.count} rows in the candidate jobs table"

Recruiter.destroy_all

r1 = Recruiter.new
r1.first_name = "Pat"
r1.last_name = "Riley"
r1.title = "Senior Recruiter"
r1.company = company1
r1.email = "recruiter@mail.com"
r1.save

r2 = Recruiter.new
r2.first_name = "George"
r2.last_name = "Hill"
r2.title = "Jnr Recruiter"
r2.company = company2
r2.email = "recruiter@mail.com"
r2.save

r3 = Recruiter.new
r3.first_name = "Larry"
r3.last_name = "Bird"
r3.title = "Freelance Recruiter"
r3.company = company3
r3.email = "recruiter@mail.com"
r3.save

r4 = Recruiter.new
r4.first_name = "Michael"
r4.last_name = "Jordan"
r4.title = "Freelance Recruiter"
r4.company = company4
r4.email = "recruiter@mail.com"
r4.save

r5 = Recruiter.new
r5.first_name = "LeBron"
r5.last_name = "James"
r5.title = "Freelance Recruiter"
r5.company = company5
r5.email = "recruiter@mail.com"
r5.save

r6 = Recruiter.new
r6.first_name = "Kevin"
r6.last_name = "Durant"
r6.title = "Freelance Recruiter"
r6.company = company6
r6.email = "recruiter@mail.com"
r6.save

r7 = Recruiter.new
r7.first_name = "Derric"
r7.last_name = "Rose"
r7.title = "Freelance Recruiter"
r7.company = company7
r7.email = "recruiter@mail.com"
r7.save

r8 = Recruiter.new
r8.first_name = "Dwight"
r8.last_name = "Howard"
r8.title = "Freelance Recruiter"
r8.company = company8
r8.email = "recruiter@mail.com"
r8.save

r9 = Recruiter.new
r9.first_name = "Joakim"
r9.last_name = "Noah"
r9.title = "Freelance Recruiter"
r9.company = company9
r9.email = "recruiter@mail.com"
r9.save

r10 = Recruiter.new
r10.first_name = "Kobe"
r10.last_name = "Bryant"
r10.title = "Freelance Recruiter"
r10.company = company10
r10.email = "recruiter@mail.com"
r10.save

puts "There are #{Recruiter.count} rows in the recruiters table"

CandidateRecruiter.destroy_all

cr1 = CandidateRecruiter.new
cr1.candidate = c1
cr1.recruiter = r1
cr1.save

cr2 = CandidateRecruiter.new
cr2.candidate = c2
cr2.recruiter = r2
cr2.save

cr3 = CandidateRecruiter.new
cr3.candidate = c3
cr3.recruiter = r3
cr3.save

cr4 = CandidateRecruiter.new
cr4.candidate = c4
cr4.recruiter = r4
cr4.save

cr5 = CandidateRecruiter.new
cr5.candidate = c5
cr5.recruiter = r5
cr5.save

cr6 = CandidateRecruiter.new
cr6.candidate = c6
cr6.recruiter = r6
cr6.save

cr7 = CandidateRecruiter.new
cr7.candidate = c7
cr7.recruiter = r7
cr7.save

cr8 = CandidateRecruiter.new
cr8.candidate = c8
cr8.recruiter = r8
cr8.save

cr9 = CandidateRecruiter.new
cr9.candidate = c9
cr9.recruiter = r9
cr9.save

cr10 = CandidateRecruiter.new
cr10.candidate = c10
cr10.recruiter = r10
cr10.save

puts "There are #{CandidateRecruiter.count} rows in the candidate recruiters table"

Note.destroy_all

n1 = Note.new
n1.description = "This is a note for job1."
n1.date = "01/04/2013"
n1.job = j1
n1.save

n2 = Note.new
n2.description = "This is another note for job2."
n2.date = "02/25/2013"
n2.job = j2
n2.save

n3 = Note.new
n3.description = "This is a note for job3."
n3.date = "07/15/2013"
n3.job = j3
n3.save


n4 = Note.new
n4.description = "This is another note for job4"
n4.date = "01/04/2013"
n4.job = j4
n4.save

n5 = Note.new
n5.description = "This is another note for job5."
n5.date = "01/04/2013"
n5.job = j5
n5.save

n6 = Note.new
n6.description = "This is another note for job6."
n6.date = "01/04/2013"
n6.job = j6
n6.save

n7 = Note.new
n7.description = "This is another note for job7."
n7.date = "01/04/2013"
n7.job = j7
n7.save

n8 = Note.new
n8.description = "This is another note for job8."
n8.date = "01/04/2013"
n8.job = j8
n8.save

n9 = Note.new
n9.description = "This is another note for job9."
n9.date = "01/04/2013"
n9.job = j9
n9.save

n10 = Note.new
n10.description = "This is another note for job10."
n10.date = "01/04/2013"
n10.job = j10
n10.save

puts "There are #{Note.count} rows in the notes table."

HiringManager.destroy_all

hm1 = HiringManager.new
hm1.first_name = "William"
hm1.last_name = "Adams"
hm1.title = "Hiring Manager"
hm1.company = company1
hm1.email = "recruiter@mail.com"
hm1.save

hm2 = HiringManager.new
hm2.first_name = "William"
hm2.last_name = "Wallace"
hm2.title = "Jnr HR Manager"
hm2.company = company2
hm2.email = "recruiter@mail.com"
hm2.save

hm3 = HiringManager.new
hm3.first_name = "Nerlens"
hm3.last_name = "Noel"
hm3.title = "Executive HR Manager"
hm3.company = company3
hm3.email = "recruiter@mail.com"
hm3.save

hm4 = HiringManager.new
hm4.first_name = "The"
hm4.last_name = "Special One"
hm4.title = "Assistant HR clerk"
hm4.company = company4
hm4.email = "recruiter@mail.com"
hm4.save

hm5 = HiringManager.new
hm5.first_name = "Joe"
hm5.last_name = "Clark"
hm5.title = "Assistant HR clerk"
hm5.company = company5
hm5.email = "recruiter@mail.com"
hm5.save

hm6 = HiringManager.new
hm6.first_name = "Bill"
hm6.last_name = "Smith"
hm6.title = "Assistant HR clerk"
hm6.company = company6
hm6.email = "recruiter@mail.com"
hm6.save

hm7 = HiringManager.new
hm7.first_name = "Laura"
hm7.last_name = "Bell"
hm7.title = "Assistant HR clerk"
hm7.company = company7
hm7.email = "recruiter@mail.com"
hm7.save

hm8 = HiringManager.new
hm8.first_name = "Sue"
hm8.last_name = "Turner"
hm8.title = "Assistant HR clerk"
hm8.company = company8
hm8.email = "recruiter@mail.com"
hm8.save

hm9 = HiringManager.new
hm9.first_name = "Sam"
hm9.last_name = "Diamond"
hm9.title = "Assistant HR clerk"
hm9.company = company9
hm9.email = "recruiter@mail.com"
hm9.save

hm10 = HiringManager.new
hm10.first_name = "Lisa"
hm10.last_name = "James"
hm10.title = "Assistant HR clerk"
hm10.company = company10
hm10.email = "recruiter@mail.com"
hm10.save

puts "There are #{HiringManager.count} rows in the hiring managers table"

HiringManagerNote.destroy_all

hm_note1 = HiringManagerNote.new
hm_note1.candidate = c1
hm_note1.note = n1
hm_note1.hiring_manager = hm1
hm_note1.save

hm_note2 = HiringManagerNote.new
hm_note2.candidate = c2
hm_note2.note = n2
hm_note2.hiring_manager = hm2
hm_note2.save

hm_note3 = HiringManagerNote.new
hm_note3.candidate = c3
hm_note3.note = n3
hm_note3.hiring_manager = hm3
hm_note3.save

hm_note4 = HiringManagerNote.new
hm_note4.candidate = c4
hm_note4.note = n4
hm_note4.hiring_manager = hm4
hm_note4.save

hm_note5 = HiringManagerNote.new
hm_note5.candidate = c5
hm_note5.note = n5
hm_note5.hiring_manager = hm5
hm_note5.save

hm_note6 = HiringManagerNote.new
hm_note6.candidate = c6
hm_note6.note = n6
hm_note6.hiring_manager = hm6
hm_note6.save

hm_note7 = HiringManagerNote.new
hm_note7.candidate = c7
hm_note7.note = n7
hm_note7.hiring_manager = hm7
hm_note7.save

hm_note8 = HiringManagerNote.new
hm_note8.candidate = c8
hm_note8.note = n8
hm_note8.hiring_manager = hm8
hm_note8.save

hm_note9 = HiringManagerNote.new
hm_note9.candidate = c9
hm_note9.note = n9
hm_note9.hiring_manager = hm9
hm_note9.save

hm_note10 = HiringManagerNote.new
hm_note10.candidate = c10
hm_note10.note = n10
hm_note10.hiring_manager = hm10
hm_note10.save

puts "There are #{HiringManagerNote.count} rows in the hiring manger notes table"

RecruiterNote.destroy_all

rm_note1 = RecruiterNote.new
rm_note1.candidate = c1
rm_note1.note = n1
rm_note1.recruiter = r1
rm_note1.save

rm_note2 = RecruiterNote.new
rm_note2.candidate = c2
rm_note2.note = n2
rm_note2.recruiter = r2
rm_note2.save

rm_note3 = RecruiterNote.new
rm_note3.candidate = c3
rm_note3.note = n3
rm_note3.recruiter = r3
rm_note3.save

rm_note4 = RecruiterNote.new
rm_note4.candidate = c4
rm_note4.note = n4
rm_note4.recruiter = r4
rm_note4.save

rm_note5 = RecruiterNote.new
rm_note5.candidate = c5
rm_note5.note = n5
rm_note5.recruiter = r5
rm_note5.save

rm_note6 = RecruiterNote.new
rm_note6.candidate = c6
rm_note6.note = n6
rm_note6.recruiter = r6
rm_note6.save

rm_note7 = RecruiterNote.new
rm_note7.candidate = c7
rm_note7.note = n7
rm_note7.recruiter = r7
rm_note7.save

rm_note8 = RecruiterNote.new
rm_note8.candidate = c8
rm_note8.note = n8
rm_note8.recruiter = r8
rm_note8.save

rm_note9 = RecruiterNote.new
rm_note9.candidate = c9
rm_note9.note = n9
rm_note9.recruiter = r9
rm_note9.save

rm_note10 = RecruiterNote.new
rm_note10.candidate = c10
rm_note10.note = n10
rm_note10.recruiter = r10
rm_note10.save

puts "There are #{RecruiterNote.count} rows in the recruiter notes table"

Client.destroy_all

client1 = Client.create(:name => "Booking.com", :location => "Amsterdam, Netherlands", :industry => "Advertising" )
client2 = Client.create(:name => "Cynergy", :location => "Chicago, IL, USA", :industry => "Animation" )
client3 = Client.create(:name => "Real Eyes", :location => "London, United Kingdom", :industry => "Architecture" )
client4 = Client.create(:name => "Idean", :location => "Palo Alto, CA, USA", :industry => "Computer Animation" )
client5 = Client.create(:name => "Klout", :location => "San Francisco, CA, USA", :industry => "Desing" )
client6 = Client.create(:name => "OGK Creative", :location => "Delray Beach, FL, USA", :industry => "Digital Art" )
client7 = Client.create(:name => "Medium", :location => "San Francisco, CA, USA", :industry => "Graphic Desing" )
client8 = Client.create(:name => "Blue Fountain Media", :location => "New York, NY, USA", :industry => "Desing" )
client9 = Client.create(:name => "Meetup", :location => "New York, NY, USA", :industry => "Advertising" )
client10 = Client.create(:name => "X Studios", :location => "Maitland, FL, USA", :industry => "Animation")

puts "There are #{Client.count} rows in the clients table"

ClientJob.destroy_all

client_job1 = ClientJob.new
client_job1.client = client1
client_job1.job = j1
client_job1.save

client_job2 = ClientJob.new
client_job2.client = client2
client_job2.job = j2
client_job2.save

client_job3 = ClientJob.new
client_job3.client = client3
client_job3.job = j3
client_job3.save

client_job4 = ClientJob.new
client_job4.client = client4
client_job4.job = j4
client_job4.save

client_job5 = ClientJob.new
client_job5.client = client5
client_job5.job = j5
client_job5.save

client_job6 = ClientJob.new
client_job6.client = client6
client_job6.job = j6
client_job6.save

client_job7 = ClientJob.new
client_job7.client = client7
client_job7.job = j7
client_job7.save

client_job8 = ClientJob.new
client_job8.client = client8
client_job8.job = j8
client_job8.save

client_job9 = ClientJob.new
client_job9.client = client9
client_job9.job = j9
client_job9.save

client_job10 = ClientJob.new
client_job10.client = client10
client_job10.job = j10
client_job10.save

puts "There are #{ClientJob.count} rows in the client jobs table"

Agency.destroy_all

agency1 = Agency.create(:name => "Artisan Creative", :location => "Los Angeles, CA, USA", :industry => "Advertising" )
agency2 = Agency.create(:name => "Dexigner", :location => "Chicago, IL, USA", :industry => "Animation" )
agency3 = Agency.create(:name => "Adrem Group", :location => "London, United Kingdom", :industry => "Architecture" )
agency4 = Agency.create(:name => "Redline", :location => "Chicago, IL, USA", :industry => "Computer Animation" )
agency5 = Agency.create(:name => "Jobfit", :location => "New York, NY, USA", :industry => "Desing" )
agency6 = Agency.create(:name => "The Loop", :location => "Victoria, Australia", :industry => "Digital Art" )
agency7 = Agency.create(:name => "3rd Eye", :location => "Auckland, New Zealand", :industry => "Graphic Desing" )
agency8 = Agency.create(:name => "CreativePlacement", :location => "New York, NY, USA", :industry => "Desing" )
agency9 = Agency.create(:name => "Artisan Talent", :location => "Chicago, IL, USA", :industry => "Advertising" )
agency10 = Agency.create(:name => "Seek", :location => "Melbourne, Australia", :industry => "Animation")

puts "There are #{Agency.count} rows in the agencies table"

AgencyClient.destroy_all

a_client1 = AgencyClient.new
a_client1.client = client1
a_client1.agency = agency1
a_client1.save

a_client2 = AgencyClient.new
a_client2.client = client2
a_client2.agency = agency2
a_client2.save

a_client3 = AgencyClient.new
a_client3.client = client3
a_client3.agency = agency3
a_client3.save

a_client4 = AgencyClient.new
a_client4.client = client4
a_client4.agency = agency4
a_client4.save

a_client5 = AgencyClient.new
a_client5.client = client5
a_client5.agency = agency5
a_client5.save

a_client6 = AgencyClient.new
a_client6.client = client6
a_client6.agency = agency6
a_client6.save

a_client7 = AgencyClient.new
a_client7.client = client7
a_client7.agency = agency7
a_client7.save

a_client8 = AgencyClient.new
a_client8.client = client8
a_client8.agency = agency8
a_client8.save

a_client9 = AgencyClient.new
a_client9.client = client9
a_client9.agency = agency9
a_client9.save

a_client10 = AgencyClient.new
a_client10.client = client10
a_client10.agency = agency10
a_client10.save

puts "There are #{AgencyClient.count} rows in the agency clients table"
