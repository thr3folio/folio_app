# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)


Company.destroy_all

company1 = Company.create!(name: "Google", location: "Mountain View, California", industry: "Internet,Computer software,Telecoms equipment")
company2 = Company.create!(name: "Amazon", location: "Seattle", industry: "Internet, online retailing")
company3 = Company.create!(name: "Groupon", location: "Chicago, Illinois, U.S.", industry: "eCommerce")
company4 = Company.create!(name: "PerfectHire", location: "Unknown", industry: "Career Management")
company5 = Company.create!(name: "eSalon", location: "Unknown", industry: "Beauty")
company6 = Company.create!(name: "Greenhouse", location: "Earth", industry: "Bio-resource, Enviroment")
company7 = Company.create!(name: "TED Conferences", location: "NYC, NY", industry: "Ideation, IP")
company8 = Company.create!(name: "Microsoft Corporation", location: "Redmond, Washington", industry: "Television")
company9 = Company.create!(name: "Shazam", location: "London, U.K", industry: "Music Identification service")
company10 = Company.create!(name: "MTV Networks", location: "NYC, NY", industry: "Television")

puts "There are #{Company.count} rows in the companies table"


Agency.destroy_all

agency1 = Agency.create!(:name => "Artisan Creative", :location => "Los Angeles, CA, USA", :industry => "Advertising" )
agency2 = Agency.create!(:name => "Dexigner", :location => "Chicago, IL, USA", :industry => "Animation" )
agency3 = Agency.create!(:name => "Adrem Group", :location => "London, United Kingdom", :industry => "Architecture" )
agency4 = Agency.create!(:name => "Redline", :location => "Chicago, IL, USA", :industry => "Computer Animation" )
agency5 = Agency.create!(:name => "Jobfit", :location => "New York, NY, USA", :industry => "Desing" )
agency6 = Agency.create!(:name => "The Loop", :location => "Victoria, Australia", :industry => "Digital Art" )
agency7 = Agency.create!(:name => "3rd Eye", :location => "Auckland, New Zealand", :industry => "Graphic Desing" )
agency8 = Agency.create!(:name => "CreativePlacement", :location => "New York, NY, USA", :industry => "Desing" )
agency9 = Agency.create!(:name => "Artisan Talent", :location => "Chicago, IL, USA", :industry => "Advertising" )
agency10 = Agency.create!(:name => "Seek", :location => "Melbourne, Australia", :industry => "Animation")

puts "There are #{Agency.count} rows in the agencies table"

User.destroy_all

user1 = User.new
user1.first_name = "William"
user1.last_name = "Adams"
user1.email = "recruiter1@mail.com"
user1.password = "test"
user1.type = "HiringManager"
user1.save!

user2 = User.new
user2.first_name = "William"
user2.last_name = "Wallace"
user2.email = "recruiter2@mail.com"
user2.password = "test"
user2.type = "HiringManager"
user2.save!

user3 = User.new
user3.first_name = "Nerlens"
user3.last_name = "Noel"
user3.email = "recruiter3@mail.com"
user3.password = "test"
user3.type = "HiringManager"
user3.save!

user4 = User.new
user4.first_name = "The"
user4.last_name = "Special One"
user4.email = "recruiter4@mail.com"
user4.password = "test"
user4.type = "HiringManager"
user4.save!

user5 = User.new
user5.first_name = "Joe"
user5.last_name = "Clark"
user5.email = "recruiter5@mail.com"
user5.password = "test"
user5.type = "HiringManager"
user5.save!

user6 = User.new
user6.first_name = "Bill"
user6.last_name = "Smith"
user6.email = "recruiter6@mail.com"
user6.password = "test"
user6.type = "HiringManager"
user6.save!

user7 = User.new
user7.first_name = "Laura"
user7.last_name = "Bell"
user7.email = "recruiter7@mail.com"
user7.type = "HiringManager"
user7.password = "test"
user7.save!

user8 = User.new
user8.first_name = "Sue"
user8.last_name = "Turner"
user8.email = "recruiter8@mail.com"
user8.password = "test"
user8.type = "HiringManager"
user8.save!

user9 = User.new
user9.first_name = "Sam"
user9.last_name = "Diamond"
user9.email = "recruiter9@mail.com"
user9.password = "test"
user9.type = "HiringManager"
user9.save!

user10 = User.new
user10.first_name = "Lisa"
user10.last_name = "James"
user10.email = "recruiter10@mail.com"
user10.password = "test"
user10.type = "HiringManager"
user10.save!

user11 = User.new
user11.first_name = "Jonathan"
user11.last_name = "Kaplan"
user11.email = "jonkap@mail.com"
user11.password = "test"
user11.type = "Candidate"
user11.save!

user12 = User.new
user12.first_name = "Branko"
user12.last_name = "Cvetkovic"
user12.email = "jaggoda@mail.com"
user12.password = "test"
user12.type = "Candidate"
user12.save!

user13 = User.new
user13.first_name = "Conor"
user13.last_name = "Bryce"
user13.email = "conorbryce@mail.com"
user13.password = "test"
user13.type = "Candidate"
user13.save!

user14 = User.new
user14.first_name = "David"
user14.last_name = "McLeod"
user14.email = "davidmcleod@mail.com"
user14.password = "test"
user14.type = "Candidate"
user14.save!

user15 = User.new
user15.first_name = "Brenna"
user15.last_name = "Kaplan"
user15.email = "bk@mail.com"
user15.password = "test"
user15.type = "Candidate"
user15.save!

user16 = User.new
user16.first_name = "Juliana"
user16.last_name = "Cuervo"
user16.email = "jc@mail.com"
user16.password = "test"
user16.type = "Candidate"
user16.save!

user17 = User.new
user17.first_name = "Michael"
user17.last_name = "Romeo"
user17.email = "mr@mail.com"
user17.password = "test"
user17.type = "Candidate"
user17.save!

user18 = User.new
user18.first_name = "Levi"
user18.last_name = "Price "
user18.email = "lp@mail.com"
user18.password = "test"
user18.type = "Candidate"
user18.save!

user19 = User.new
user19.first_name = "Clint"
user19.last_name = "Reid"
user19.email = "cr@mail.com"
user19.password = "test"
user19.type = "Candidate"
user19.save!

user20 = User.new
user20.first_name = "Gabriel"
user20.last_name = "Campbell"
user20.email = "gc@mail.com"
user20.password = "test"
user20.type = "Candidate"
user20.save!


user21 = User.new
user21.first_name = "Pat"
user21.last_name = "Riley"
user21.email = "recruiter11@mail.com"
user21.password = "test"
user21.type = "Recruiter"
user21.save!

user22 = User.new
user22.first_name = "George"
user22.last_name = "Hill"
user22.email = "recruiter12@mail.com"
user22.password = "test"
user22.type = "Recruiter"
user22.save!

user23 = User.new
user23.first_name = "Larry"
user23.last_name = "Bird"
user23.email = "recruiter13@mail.com"
user23.password = "test"
user23.type = "Recruiter"
user23.save!

user24 = User.new
user24.first_name = "Michael"
user24.last_name = "Jordan"
user24.email = "recruiter14@mail.com"
user24.password = "test"
user24.type = "Recruiter"
user24.save!

user25 = User.new
user25.first_name = "LeBron"
user25.last_name = "James"
user25.email = "recruiter15@mail.com"
user25.password = "test"
user25.type = "Recruiter"
user25.save!

user26 = User.new
user26.first_name = "Kevin"
user26.last_name = "Durant"
user26.email = "recruiter16@mail.com"
user26.password = "test"
user26.type = "Recruiter"
user26.save!

user27 = User.new
user27.first_name = "Derrick"
user27.last_name = "Rose"
user27.email = "recruiter17@mail.com"
user27.password = "test"
user27.type = "Recruiter"
user27.save!

user28 = User.new
user28.first_name = "Dwight"
user28.last_name = "Howard"
user28.email = "recruiter18@mail.com"
user28.password = "test"
user28.type = "Recruiter"
user28.save!

user29 = User.new
user29.first_name = "Joakim"
user29.last_name = "Noah"
user29.email = "recruiter19@mail.com"
user29.password = "test"
user29.type = "Recruiter"
user29.save!

user30 = User.new
user30.first_name = "Kobe"
user30.last_name = "Bryant"
user30.email = "recruiter20@mail.com"
user30.password = "test"
user30.type = "Recruiter"
user30.save!

puts "There are #{User.count} rows in the users table."

CandidateAttribute.destroy_all

c1 = CandidateAttribute.new
c1.title = "Render Farm Manager"
c1.industry = "Animation"
c1.years_experience = "7"
c1.bio = "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
c1.company = company1
c1.skills = "Industrial Design"
c1.salary = "$75,000"
c1.location = "Los Angeles, CA, USA"
c1.candidate_id = user11.id
c1.save!

c2 = CandidateAttribute.new
c2.title = "Student"
c2.industry = "Architecture"
c2.years_experience = "5"
c2.bio = "I am currently a senior at the Savannah College of Art and Design seeking my B.F.A. in graphic design."
c2.company = company2
c2.skills = "Design Strategy"
c2.salary = "$80,000"
c2.candidate_id = user12.id
c2.location = "Durango, CO, USA"
c2.save!

c3 = CandidateAttribute.new
c3.title = "Senior Designer"
c3.industry = "Digital Art"
c3.years_experience = "8"
c3.bio = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
c3.company = company3
c3.skills = "Photoshop"
c3.salary = "$95,000"
c3.candidate_id = user13.id
c3.location = "Nashville, TN, USA"
c3.save!

c4 = CandidateAttribute.new
c4.title = "Graphic Designer/Illustrator"
c4.industry = "Digital Art"
c4.years_experience = "4"
c4.bio = "I believe successful design is not just about making pretty pictures or displaying software effects."
c4.company = company4
c4.skills = "Web Design"
c4.salary = "$65,000"
c4.candidate_id = user14.id
c4.location = "New York, NY, USA"
c4.save!

c5 = CandidateAttribute.new
c5.title = "Graphic Designer, Copywriter"
c5.industry = "Copywriting, Graphic Design"
c5.years_experience = "1"
c5.bio = "I am currently a senior at the Savannah College of Art and Design seeking my B.F.A. in graphic design. I enjoy collaborating with others, taking on new challenges, and trying to find my own design style. When I'm not talking about my passion for graphic design, I'm probably babbling about my love for pad thai, dogs, or any number of outdoor activities."
c5.company = company5
c5.skills = "Interaction Design"
c5.salary = "$100,000"
c5.candidate_id = user15.id
c5.location = "New York, NY, USA"
c5.save!

c6 = CandidateAttribute.new
c6.title = "Illustrator, Animation Student"
c6.industry = "Animation, Drawing, Illustration"
c6.years_experience = "2"
c6.bio = "Im an illustrator and Animation Student from Medellín - Colombia, obsessed with crafts, bookbinding, popcorn and banana cheesecake."
c6.company = company6
c6.skills = "Adobe Creative Suite"
c6.salary = "$85,000"
c6.candidate_id = user16.id
c6.location = "San Francisco, CA, USA"
c6.save!

c7 = CandidateAttribute.new
c7.title = "Graphic Designer/Illustrator"
c7.industry = "Graphic Design, Packaging, Typography"
c7.years_experience = "9"
c7.bio = "I believe successful design is not just about making pretty pictures or displaying software effects. It's about problem-solving and focusing on the target audience. It requires listening, communicating with clients, research and concept development in order to generate the relevant solution. I also believe sense of humor and the willingness to offer a hand go a long way."
c7.company = company7
c7.skills = "Graphic Design"
c7.salary = "$80,000"
c7.candidate_id = user17.id
c7.location = "Salt Lake City, UT, USA"
c7.save!

c8 = CandidateAttribute.new
c8.title = "Student/Entrepreneur"
c8.industry = "Industrial Design, Product Design"
c8.years_experience = "2"
c8.bio = "Hi! I'm a second year Industrial Design student looking for an internship spring/summer 2013. I love working with my hands. I also love doing all of my own photography and graphic design."
c8.company = company8
c8.skills = "InDesign"
c8.salary = "$65,000"
c8.candidate_id = user18.id
c8.location = "New York, NY, USA"
c8.save!

c9 = CandidateAttribute.new
c9.title = "Graphic Designer/Illustrator"
c9.industry = "Character Design, Illustration"
c9.years_experience = "6"
c9.bio = "My name is Clint. I live in Durango, Co. I'm a designer, an illustrator, a coffee drinker, a bicycle rider, an over-analyzer, a beard grower, a music lover, an enthusiastic uncle, a worrier, a lister-of-things. I draw under the alias 'Tillman Project'. Do stuff, make stuff!"
c9.company = company9
c9.skills = "Advertising"
c9.salary = "$75,000"
c9.candidate_id = user19.id
c9.location = "Miami, FL, USA"
c9.save!

c10 = CandidateAttribute.new
c10.title = "Senior Experience Designer, Lead"
c10.industry = "Interaction Design, Storyboarding, UI/UX"
c10.years_experience = "4"
c10.bio = "I've been filling up sketch books and pressing coffee like a mad man who spends a lot of drawing in sketch books and drinking coffee. I'm currently focusing on illustration, designing, and screen printing in Durango, CO. If you haven't visited the mountains of Colorado, you should...they are awesome, in a mountain…."
c10.company = company10
c10.skills = "Creative Direction"
c10.salary = "$95,000"
c10.candidate_id = user20.id
c10.location = "Nashville, TN, USA"
c10.save!

puts "There are #{CandidateAttribute.count} rows in the candidates attributes table"

Client.destroy_all

client1 = Client.create!(:name => "Booking.com", :location => "Amsterdam, Netherlands", :industry => "Advertising" )
client2 = Client.create!(:name => "Cynergy", :location => "Chicago, IL, USA", :industry => "Animation" )
client3 = Client.create!(:name => "Real Eyes", :location => "London, United Kingdom", :industry => "Architecture" )
client4 = Client.create!(:name => "Idean", :location => "Palo Alto, CA, USA", :industry => "Computer Animation" )
client5 = Client.create!(:name => "Klout", :location => "San Francisco, CA, USA", :industry => "Desing" )
client6 = Client.create!(:name => "OGK Creative", :location => "Delray Beach, FL, USA", :industry => "Digital Art" )
client7 = Client.create!(:name => "Medium", :location => "San Francisco, CA, USA", :industry => "Graphic Desing" )
client8 = Client.create!(:name => "Blue Fountain Media", :location => "New York, NY, USA", :industry => "Desing" )
client9 = Client.create!(:name => "Meetup", :location => "New York, NY, USA", :industry => "Advertising" )
client10 = Client.create!(:name => "X Studios", :location => "Maitland, FL, USA", :industry => "Animation")

puts "There are #{Client.count} rows in the clients table"


Job.destroy_all

j1 = Job.new
j1.title = "Lorem ipsum dolor sit amet"
j1.description ="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel diam sit amet felis commodo auctor ac id leo. Duis sagittis, turpis nec hendrerit pellentesque, sem tortor cursus diam, sit amet blandit lorem urna vel nisi. Nam sed sem a urna ornare accumsan."
j1.location = "Neverland"
j1.email = "job@mail.com"
j1.url = "http://localhost:3000"
j1.salary = "$75,000"
j1.due_date = Time.now + (7 * 24 * 60 * 60)
j1.client = client1
j1.save

j1b = Job.new
j1b.title = "Janitor"
j1b.description ="Master of custodial arts."
j1b.location = "Neverland"
j1b.email = "job@mail.com"
j1b.url = "http://localhost:3000"
j1b.salary = "$45,000"
j1b.due_date = Time.now + (7 * 24 * 60 * 60)
j1b.client = client1
j1b.save!

j1c = Job.new
j1c.title = "Graphic Designer"
j1c.description ="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel diam sit amet felis commodo auctor ac id leo. Duis sagittis, turpis nec hendrerit pellentesque, sem tortor cursus diam, sit amet blandit lorem urna vel nisi. Nam sed sem a urna ornare accumsan."
j1c.location = "Neverland"
j1c.email = "job@mail.com"
j1c.url = "http://localhost:3000"
j1c.salary = "$175,000"
j1c.due_date = Time.now + (7 * 24 * 60 * 60)
j1c.client = client1
j1c.save!


j2 = Job.new
j2.title = "Lorem ipsum dolor sit amet"
j2.description ="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel diam sit amet felis commodo auctor ac id leo. Duis sagittis, turpis nec hendrerit pellentesque, sem tortor cursus diam, sit amet blandit lorem urna vel nisi. Nam sed sem a urna ornare accumsan."
j2.location = "Anywhere"
j2.email = "job@mail.com"
j2.url = "http://localhost:3000"
j2.salary = "$80,000"
j2.due_date = Time.now + (7 * 24 * 60 * 60)
j2.client = client2
j2.save!

j3 = Job.new
j3.title = "Another position"
j3.description ="Some long description"
j3.location = "Near you"
j3.email = "job@mail.com"
j3.url = "http://localhost:3000"
j3.salary = "$60,000"
j3.due_date = Time.now + (7 * 24 * 60 * 60)
j3.client = client3
j3.save!

j4 = Job.new
j4.title = "Freelance Rails developer"
j4.description ="Rock star developer needed."
j4.location = "Ouroboros"
j4.email = "job@mail.com"
j4.url = "http://localhost:3000"
j4.salary = "$ 85,000"
j4.due_date = Time.now + (7 * 24 * 60 * 60)
j4.client = client4
j4.save!

j5 = Job.new
j5.title = "Front-End developer"
j5.description ="All-rounder needed."
j5.location = "Shangri-La Studios"
j5.email = "job@mail.com"
j5.url = "http://localhost:3000"
j5.salary = "$80,000"
j5.due_date = Time.now + (7 * 24 * 60 * 60)
j5.client = client5
j5.save!

j6 = Job.new
j6.title = "Graphic Designer"
j6.description ="EM Publish GmbH is an iOS game developer and publisher. We are currently looking for experienced 2D graphic designer/illustrator for our FaceMe application. FaceMe is a fun app containing animated eCards  – you star as the main hero via picture pasting. We are looking for graphic designer for app re-branding. Animation clips remain like they are. Ability to display fun style is a must. We capitalize on good mood."
j6.location = "Anywhere"
j6.email = "job@mail.com"
j6.url = "http://localhost:3000"
j6.salary = "$85,000"
j6.due_date = Time.now + (7 * 24 * 60 * 60)
j6.client = client6
j6.save!

j7 = Job.new
j7.title = "Sound Designer/Engineer"
j7.description ="We're looking for a passionate Sound Designer with a music background.  This person possesses a broad skill-set; we've already built a state-of-the-art audio suite and it's now time to have a full-time Engineer creating therein."
j7.location = "Bruton Stroube Studios"
j7.email = "job@mail.com"
j7.url = "http://localhost:3000"
j7.salary = "$80,000"
j7.due_date = Time.now + (7 * 24 * 60 * 60)
j7.client = client7
j7.save!

j8 = Job.new
j8.title = "Product Designer"
j8.description ="Are you interested in creating digital products that are used by millions of people? If you see bringing products to market as an important part of your passion then we have an opportunity for you. Nascent is looking for a Product Designer that is passionate about building great products to join our team. You will be leading product roadmaps for innovative start-ups and major North American enterprise."
j8.location = "Nascent Digital"
j8.email = "job@mail.com"
j8.url = "http://localhost:3000"
j8.salary = "$90,000"
j8.due_date = Time.now + (7 * 24 * 60 * 60)
j8.client = client8
j8.save!

j9 = Job.new
j9.title = "Web Designer"
j9.description ="BIR Training Center is a career training and international language school with 4 campuses in Chicago area. We are seeking a lead web designer who will be responsible for design, implementation and management of all websites and web pages. Key Responsibilities: Maintain all existing websites and web pages, Design and construct new web pages/sites, create! Web graphics, user interfaces, icons, style sheets, templates and layouts.Design marketing and promotional materials across web, mobile and social media. Visualize concepts and translate requirements in to Visual prototypes using Photoshop and Illustrator."
j9.location = "BIR Training Center"
j9.email = "job@mail.com"
j9.url = "http://localhost:3000"
j9.salary = "$85,000"
j9.due_date = Time.now + (7 * 24 * 60 * 60)
j9.client = client9
j9.save!

j10 = Job.new
j10.title = "Lead User Experience Designer"
j10.description ="We are looking to hire YOU, because you are a talented experience designer who wants to be part of something BIG here at Citrix. You will play a key role in driving new and innovative customer experiences for a global software company. Citrix enables customers to work smarter and live better, so we know it's essential that we focus on 'experience' at every touch point. This new and exciting team is entirely committed to delivering a vision of the future, the next generation of innovative and engaging experiences which span technologies, devices and environments."
j10.location = "Citrix"
j10.email = "job@mail.com"
j10.url = "http://localhost:3000"
j10.salary = "$85,000"
j10.due_date = Time.now + (7 * 24 * 60 * 60)
j10.client = client10
j10.save!


puts "There are #{Job.count} rows in the jobs table"

CandidateJob.destroy_all

cj1 = CandidateJob.new
cj1.candidate_id = user11.id
cj1.job = j1
cj1.save!

cj2 = CandidateJob.new
cj2.candidate_id = user12.id
cj2.job = j2
cj2.save!

cj3 = CandidateJob.new
cj3.candidate_id = user13.id
cj3.job = j3
cj3.save!

cj4 = CandidateJob.new
cj4.candidate_id = user14.id
cj4.job = j4
cj4.save!

cj5 = CandidateJob.new
cj5.candidate_id = user15.id
cj5.job = j4
cj5.save!

cj6 = CandidateJob.new
cj6.candidate_id = user16.id
cj6.job = j4
cj6.save!

cj7 = CandidateJob.new
cj7.candidate_id = user17.id
cj7.job = j7
cj7.save!

cj8 = CandidateJob.new
cj8.candidate_id = user18.id
cj8.job = j8
cj8.save!

cj9 = CandidateJob.new
cj9.candidate_id = user19.id
cj9.job = j9
cj9.save!

cj10 = CandidateJob.new
cj10.candidate_id = user20.id
cj10.job = j10
cj10.save!

puts "There are #{CandidateJob.count} rows in the candidate jobs table"

RecruiterAttribute.destroy_all

r1 = RecruiterAttribute.new
r1.title = "Senior Recruiter"
r1.agency = agency1
r1.recruiter_id = user21.id
r1.save!

r2 = RecruiterAttribute.new
r2.title = "Jnr Recruiter"
r2.agency = agency2
r2.recruiter_id = user22.id
r2.save!

r3 = RecruiterAttribute.new
r3.title = "Freelance Recruiter"
r3.agency = agency3
r3.recruiter_id = user23.id
r3.save!

r4 = RecruiterAttribute.new
r4.title = "Freelance Recruiter"
r4.agency = agency4
r4.recruiter_id = user24.id
r4.save!

r5 = RecruiterAttribute.new
r5.title = "Freelance Recruiter"
r5.agency = agency5
r5.recruiter_id = user25.id
r5.save!

r6 = RecruiterAttribute.new
r6.title = "Freelance Recruiter"
r6.agency = agency6
r6.recruiter_id = user26.id
r6.save!

r7 = RecruiterAttribute.new
r7.title = "Freelance Recruiter"
r7.agency = agency7
r7.recruiter_id = user27.id
r7.save!

r8 = RecruiterAttribute.new
r8.title = "Freelance Recruiter"
r8.agency = agency8
r8.recruiter_id = user28.id
r8.save!

r9 = RecruiterAttribute.new
r9.title = "Freelance Recruiter"
r9.agency = agency9
r9.recruiter_id = user29.id
r9.save!

r10 = RecruiterAttribute.new
r10.title = "Freelance Recruiter"
r10.agency = agency10
r10.recruiter_id = user30.id
r10.save!

puts "There are #{RecruiterAttribute.count} rows in the recruiter attributes table"

CandidateRecruiter.destroy_all

cr1 = CandidateRecruiter.new
cr1.candidate_id = user11.id
cr1.recruiter_id = user21.id
cr1.save!

cr2 = CandidateRecruiter.new
cr2.candidate_id = user12.id
cr2.recruiter_id = user22.id
cr2.save!

cr3 = CandidateRecruiter.new
cr3.candidate_id = user13.id
cr3.recruiter_id = user23.id
cr3.save!

cr4 = CandidateRecruiter.new
cr4.candidate_id = user14.id
cr4.recruiter_id = user24.id
cr4.save!

cr5 = CandidateRecruiter.new
cr5.candidate_id = user15.id
cr5.recruiter_id = user25.id
cr5.save!

cr6 = CandidateRecruiter.new
cr6.candidate_id = user16.id
cr6.recruiter_id = user26.id
cr6.save!

cr7 = CandidateRecruiter.new
cr7.candidate_id = user17.id
cr7.recruiter_id = user27.id
cr7.save!

cr8 = CandidateRecruiter.new
cr8.candidate_id = user18.id
cr8.recruiter_id = user28.id
cr8.save!

cr9 = CandidateRecruiter.new
cr9.candidate_id = user19.id
cr9.recruiter_id = user29.id
cr9.save!

cr10 = CandidateRecruiter.new
cr10.candidate_id = user20.id
cr10.recruiter_id = user30.id
cr10.save!

puts "There are #{CandidateRecruiter.count} rows in the candidate recruiters table"

Note.destroy_all

n1 = Note.new
n1.description = "This is a note for job1."
n1.job = j1
n1.save!

n2 = Note.new
n2.description = "This is another note for job2."
n2.job = j2
n2.save!

n3 = Note.new
n3.description = "This is a note for job3."
n3.job = j3
n3.save!


n4 = Note.new
n4.description = "This is another note for job4"
n4.job = j4
n4.save!

n5 = Note.new
n5.description = "This is another note for job5."
n5.job = j5
n5.save!

n6 = Note.new
n6.description = "This is another note for job6."
n6.job = j6
n6.save!

n7 = Note.new
n7.description = "This is another note for job7."
n7.job = j7
n7.save!

n8 = Note.new
n8.description = "This is another note for job8."
n8.job = j8
n8.save!

n9 = Note.new
n9.description = "This is another note for job9."
n9.job = j9
n9.save!

n10 = Note.new
n10.description = "This is another note for job10."
n10.job = j10
n10.save!

n11 = Note.new
n11.description = "This is another note for job1."
n11.job = j1
n11.save!

n12 = Note.new
n12.description = "This is another note for job2."
n12.job = j2
n12.save!

n13 = Note.new
n13.description = "This is another note for job3."
n13.job = j3
n13.save!

n14 = Note.new
n14.description = "This is another note for job4."
n14.job = j4
n14.save!

n15 = Note.new
n15.description = "This is another note for job5."
n15.job = j5
n15.save!

n16 = Note.new
n16.description = "This is another note for job6."
n16.job = j6
n16.save!

n17 = Note.new
n17.description = "This is another note for job7."
n17.job = j7
n17.save!

n18 = Note.new
n18.description = "This is another note for job8."
n18.job = j8
n18.save!

n19 = Note.new
n19.description = "This is another note for job9."
n19.job = j9
n19.save!

n20 = Note.new
n20.description = "This is another note for job10."
n20.job = j10
n20.save!

n21 = Note.new
n21.description = "This is another note for job1."
n21.job = j1
n21.save!

n22 = Note.new
n22.description = "This is another note for job2."
n22.job = j2
n22.save!

n23 = Note.new
n23.description = "This is another note for job4."
n23.job = j4
n23.save!

n24 = Note.new
n24.description = "This is another note for job1."
n24.job = j1
n24.save!

n25 = Note.new
n25.description = "This is another note for job2."
n25.job = j2
n25.save!

n26 = Note.new
n26.description = "This is another note for job4."
n26.job = j4
n26.save!

puts "There are #{Note.count} rows in the notes table."

HiringManagerAttribute.destroy_all

hm1 = HiringManagerAttribute.new
hm1.title = "Hiring Manager"
hm1.company = company1
hm1.hiring_manager_id = user1.id
hm1.save!

hm2 = HiringManagerAttribute.new
hm2.title = "Jnr HR Manager"
hm2.company = company2
hm2.hiring_manager_id = user2.id
hm2.save!

hm3 = HiringManagerAttribute.new
hm3.title = "Executive HR Manager"
hm3.company = company3
hm3.hiring_manager_id = user3.id
hm3.save!

hm4 = HiringManagerAttribute.new
hm4.title = "Assistant HR clerk"
hm4.company = company4
hm4.hiring_manager_id = user4.id
hm4.save!

hm5 = HiringManagerAttribute.new
hm5.title = "Assistant HR clerk"
hm5.company = company5
hm5.hiring_manager_id = user5.id
hm5.save!

hm6 = HiringManagerAttribute.new
hm6.title = "Assistant HR clerk"
hm6.company = company6
hm6.hiring_manager_id = user6.id
hm6.save!

hm7 = HiringManagerAttribute.new
hm7.title = "Assistant HR clerk"
hm7.company = company7
hm7.hiring_manager_id = user7.id
hm7.save!

hm8 = HiringManagerAttribute.new
hm8.title = "Assistant HR clerk"
hm8.company = company8
hm8.hiring_manager_id = user8.id
hm8.save!

hm9 = HiringManagerAttribute.new
hm9.title = "Assistant HR clerk"
hm9.company = company9
hm9.hiring_manager_id = user9.id
hm9.save!

hm10 = HiringManagerAttribute.new
hm10.title = "Assistant HR clerk"
hm10.company = company10
hm10.hiring_manager_id = user10.id
hm10.save!

puts "There are #{HiringManagerAttribute.count} rows in the hiring managers attributes table"

HiringManagerNote.destroy_all

hm_note1 = HiringManagerNote.new
hm_note1.candidate_id = user11.id
hm_note1.note = n1
hm_note1.hiring_manager_id = user1.id
hm_note1.save!

hm_note2 = HiringManagerNote.new
hm_note2.candidate_id = user12.id
hm_note2.note = n2
hm_note2.hiring_manager_id = user2.id
hm_note2.save!

hm_note3 = HiringManagerNote.new
hm_note3.candidate_id = user13.id
hm_note3.note = n3
hm_note3.hiring_manager_id = user3.id
hm_note3.save!

hm_note4 = HiringManagerNote.new
hm_note4.candidate_id = user14.id
hm_note4.note = n4
hm_note4.hiring_manager_id = user4.id
hm_note4.save!

hm_note5 = HiringManagerNote.new
hm_note5.candidate_id = user15.id
hm_note5.note = n5
hm_note5.hiring_manager_id = user5.id
hm_note5.save!

hm_note6 = HiringManagerNote.new
hm_note6.candidate_id = user16.id
hm_note6.note = n6
hm_note6.hiring_manager_id = user6.id
hm_note6.save!

hm_note7 = HiringManagerNote.new
hm_note7.candidate_id = user17.id
hm_note7.note = n7
hm_note7.hiring_manager_id = user7.id
hm_note7.save!

hm_note8 = HiringManagerNote.new
hm_note8.candidate_id = user18.id
hm_note8.note = n8
hm_note8.hiring_manager_id = user8.id
hm_note8.save!

hm_note9 = HiringManagerNote.new
hm_note9.candidate_id = user19.id
hm_note9.note = n9
hm_note9.hiring_manager_id = user9.id
hm_note9.save!

hm_note10 = HiringManagerNote.new
hm_note10.candidate_id = user20.id
hm_note10.note = n10
hm_note10.hiring_manager_id = user10.id
hm_note10.save!

hm_note11 = HiringManagerNote.new
hm_note11.candidate_id = user11.id
hm_note11.note = n21
hm_note11.hiring_manager_id = user1.id
hm_note11.save!

hm_note12 = HiringManagerNote.new
hm_note12.candidate_id = user14.id
hm_note12.note = n22
hm_note12.hiring_manager_id = user4.id
hm_note12.save!

hm_note13 = HiringManagerNote.new
hm_note13.candidate_id = user14.id
hm_note13.note = n23
hm_note13.hiring_manager_id = user1.id
hm_note13.save!

puts "There are #{HiringManagerNote.count} rows in the hiring manager notes table"

RecruiterNote.destroy_all

rm_note1 = RecruiterNote.new
rm_note1.candidate_id = user11.id
rm_note1.note = n11
rm_note1.recruiter_id = user21.id
rm_note1.save!

rm_note2 = RecruiterNote.new
rm_note2.candidate_id = user12.id
rm_note2.note = n12
rm_note2.recruiter_id = user22.id
rm_note2.save!

rm_note3 = RecruiterNote.new
rm_note3.candidate_id = user13.id
rm_note3.note = n13
rm_note3.recruiter_id = user23.id
rm_note3.save!

rm_note4 = RecruiterNote.new
rm_note4.candidate_id = user14.id
rm_note4.note = n14
rm_note4.recruiter_id = user24.id
rm_note4.save!

rm_note5 = RecruiterNote.new
rm_note5.candidate_id = user15.id
rm_note5.note = n15
rm_note5.recruiter_id = user25.id
rm_note5.save!

rm_note6 = RecruiterNote.new
rm_note6.candidate_id = user16.id
rm_note6.note = n16
rm_note6.recruiter_id = user26.id
rm_note6.save!

rm_note7 = RecruiterNote.new
rm_note7.candidate_id = user17.id
rm_note7.note = n17
rm_note7.recruiter_id = user27.id
rm_note7.save!

rm_note8 = RecruiterNote.new
rm_note8.candidate_id = user18.id
rm_note8.note = n18
rm_note8.recruiter_id = user28.id
rm_note8.save!

rm_note9 = RecruiterNote.new
rm_note9.candidate_id = user19.id
rm_note9.note = n19
rm_note9.recruiter_id = user29.id
rm_note9.save!

rm_note10 = RecruiterNote.new
rm_note10.candidate_id = user20.id
rm_note10.note = n20
rm_note10.recruiter_id = user30.id
rm_note10.save!

rm_note11 = RecruiterNote.new
rm_note11.candidate_id = user11.id
rm_note11.note = n24
rm_note11.recruiter_id = user21.id
rm_note11.save!

rm_note12 = RecruiterNote.new
rm_note12.candidate_id = user14.id
rm_note12.note = n25
rm_note12.recruiter_id = user24.id
rm_note12.save!

rm_note13 = RecruiterNote.new
rm_note13.candidate_id = user14.id
rm_note13.note = n26
rm_note13.recruiter_id = user23.id
rm_note13.save!

puts "There are #{RecruiterNote.count} rows in the recruiter notes table"




AgencyClient.destroy_all

a_client1 = AgencyClient.new
a_client1.client = client1
a_client1.agency = agency1
a_client1.save!

a_client2 = AgencyClient.new
a_client2.client = client2
a_client2.agency = agency2
a_client2.save!

a_client3 = AgencyClient.new
a_client3.client = client3
a_client3.agency = agency3
a_client3.save!

a_client4 = AgencyClient.new
a_client4.client = client4
a_client4.agency = agency4
a_client4.save!

a_client5 = AgencyClient.new
a_client5.client = client5
a_client5.agency = agency5
a_client5.save!

a_client6 = AgencyClient.new
a_client6.client = client6
a_client6.agency = agency6
a_client6.save!

a_client7 = AgencyClient.new
a_client7.client = client7
a_client7.agency = agency7
a_client7.save!

a_client8 = AgencyClient.new
a_client8.client = client8
a_client8.agency = agency8
a_client8.save!

a_client9 = AgencyClient.new
a_client9.client = client9
a_client9.agency = agency9
a_client9.save!

a_client10 = AgencyClient.new
a_client10.client = client10
a_client10.agency = agency10
a_client10.save!

puts "There are #{AgencyClient.count} rows in the agency clients table"

ExternalJob.destroy_all

ex_j1 = ExternalJob.new
ex_j1.hiring_manager_id = user1.id
ex_j1.job = j1
ex_j1.description = "Client's description for the job internally."
ex_j1.external_code = "1A"
ex_j1.email = "p@p.com"
ex_j1.telephone = "773-345-6789"
ex_j1.save!

ex_j1b = ExternalJob.new
ex_j1b.hiring_manager_id = user1.id
ex_j1b.job = j1b
ex_j1b.description = "Client's description for the job internally."
ex_j1b.external_code = "1A"
ex_j1b.email = "p@p.com"
ex_j1b.telephone = "773-345-6789"
ex_j1b.save!

ex_j1c = ExternalJob.new
ex_j1c.hiring_manager_id = user1.id
ex_j1c.job = j1c
ex_j1c.description = "Client's description for the job internally."
ex_j1c.external_code = "1A"
ex_j1c.email = "p@p.com"
ex_j1c.telephone = "773-345-6789"
ex_j1c.save!

ex_j2 = ExternalJob.new
ex_j2.hiring_manager_id = user2.id
ex_j2.job = j2
ex_j2.description = "Client's description for the job internally."
ex_j2.external_code = "2B"
ex_j2.email = "b@b.com"
ex_j2.telephone = "773-345-0987"
ex_j2.save!

ex_j3 = ExternalJob.new
ex_j3.hiring_manager_id = user3.id
ex_j3.job = j3
ex_j3.description = "Client's description for the job internally."
ex_j3.external_code = "3C"
ex_j3.email = "c@c.com"
ex_j3.telephone = "773-345-3645"
ex_j3.save!

ex_j4 = ExternalJob.new
ex_j4.hiring_manager_id = user4.id
ex_j4.job = j4
ex_j4.description = "Client's description for the job internally."
ex_j4.external_code = "4D"
ex_j4.email = "d@d.com"
ex_j4.telephone = "773-345-2347"
ex_j4.save!

ex_j5 = ExternalJob.new
ex_j5.hiring_manager_id = user5.id
ex_j5.job = j5
ex_j5.description = "Client's description for the job internally."
ex_j5.external_code = "5E"
ex_j5.email = "e@e.com"
ex_j5.telephone = "773-675-6789"
ex_j5.save!

ex_j6 = ExternalJob.new
ex_j6.hiring_manager_id = user6.id
ex_j6.job = j6
ex_j6.description = "Client's description for the job internally."
ex_j6.external_code = "6F"
ex_j6.email = "f@f.com"
ex_j6.telephone = "773-345-1209"
ex_j6.save!

ex_j7 = ExternalJob.new
ex_j7.hiring_manager_id = user7.id
ex_j7.job = j7
ex_j7.description = "Client's description for the job internally."
ex_j7.external_code = "7G"
ex_j7.email = "g@g.com"
ex_j7.telephone = "312-323-3127"
ex_j7.save!

ex_j8 = ExternalJob.new
ex_j8.hiring_manager_id = user8.id
ex_j8.job = j8
ex_j8.description = "Client's description for the job internally."
ex_j8.external_code = "8H"
ex_j8.email = "h@h.com"
ex_j8.telephone = "773-345-0000"
ex_j8.save!

ex_j9 = ExternalJob.new
ex_j9.hiring_manager_id = user9.id
ex_j9.job = j9
ex_j9.description = "Client's description for the job internally."
ex_j9.external_code = "9I"
ex_j9.email = "i@i.com"
ex_j9.telephone = "773-345-2222"
ex_j9.save!

ex_j10 = ExternalJob.new
ex_j10.hiring_manager_id = user10.id
ex_j10.job = j10
ex_j10.description = "Client's description for the job internally."
ex_j10.external_code = "10J"
ex_j10.email = "j@j.com"
ex_j10.telephone = "773-345-1111"
ex_j10.save!

puts "There are #{ExternalJob.count} rows in the external jobs table"

HiringManagerJob.destroy_all

hm_job1 = HiringManagerJob.new
hm_job1.hiring_manager_id = user1.id
hm_job1.job = j1
hm_job1.save!

hm_job2 = HiringManagerJob.new
hm_job2.hiring_manager_id = user2.id
hm_job2.job = j2
hm_job2.save!

hm_job3 = HiringManagerJob.new
hm_job3.hiring_manager_id = user3.id
hm_job3.job = j3
hm_job3.save!

hm_job4 = HiringManagerJob.new
hm_job4.hiring_manager_id = user4.id
hm_job4.job = j4
hm_job4.save!

hm_job5 = HiringManagerJob.new
hm_job5.hiring_manager_id = user5.id
hm_job5.job = j5
hm_job5.save!

hm_job6 = HiringManagerJob.new
hm_job6.hiring_manager_id = user6.id
hm_job6.job = j6
hm_job6.save!

hm_job7 = HiringManagerJob.new
hm_job7.hiring_manager_id = user7.id
hm_job7.job = j7
hm_job7.save!

hm_job8 = HiringManagerJob.new
hm_job8.hiring_manager_id = user8.id
hm_job8.job = j8
hm_job8.save!

hm_job9 = HiringManagerJob.new
hm_job9.hiring_manager_id = user9.id
hm_job9.job = j9
hm_job9.save!

hm_job10 = HiringManagerJob.new
hm_job10.hiring_manager_id = user10.id
hm_job10.job = j10
hm_job10.save!

puts "There are #{HiringManagerJob.count} rows in the hiring manager jobs table"

JobRecruiter.destroy_all

jr1 = JobRecruiter.new
jr1.recruiter_id = user21.id
jr1.job = j1
jr1.save!

jr1b = JobRecruiter.new
jr1b.recruiter_id = user21.id
jr1b.job = j1b
jr1b.save!

jr1c = JobRecruiter.new
jr1c.recruiter_id = user21.id
jr1c.job = j1c
jr1c.save!


jr2 = JobRecruiter.new
jr2.recruiter_id = user22.id
jr2.job = j2
jr2.save!

jr3 = JobRecruiter.new
jr3.recruiter_id = user23.id
jr3.job = j3
jr3.save!

jr4 = JobRecruiter.new
jr4.recruiter_id = user24.id
jr4.job = j4
jr4.save!

jr5 = JobRecruiter.new
jr5.recruiter_id = user25.id
jr5.job = j5
jr5.save!

jr6 = JobRecruiter.new
jr6.recruiter_id = user26.id
jr6.job = j6
jr6.save!

jr7 = JobRecruiter.new
jr7.recruiter_id = user27.id
jr7.job = j7
jr7.save!

jr8 = JobRecruiter.new
jr8.recruiter_id = user28.id
jr8.job = j8
jr8.save!

jr9 = JobRecruiter.new
jr9.recruiter_id = user29.id
jr9.job = j1
jr9.save!

jr10 = JobRecruiter.new
jr10.recruiter_id = user30.id
jr10.job = j10
jr10.save!

puts "There are #{JobRecruiter.count} rows in the job recruiters table"

