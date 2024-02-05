# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Generate a placeholder binary string 
placeholder_binary_data = "\x89PNG\r\n\x1A\n\x00\x00\x00\rIHDR\x00\x00\x01\x00\x00\x00\x01\x00\x08\x02\x00\x00\x00\xe7\x9c\xb4\xfa\x00\x00\x00\ridatx@\xed\x9d{s\r\x00\x00\x00\x00IEND\xaeB`\x82"
# Convert binary data to a hexadecimal string
hexadecimal_string = placeholder_binary_data.unpack('H*').first

#Seed data for countries
usa = Country.create(name: "United States", country_code: "US", language: "English")
france = Country.create(name: "France", country_code: "FR", language: "French")

# Seed data for cities
new_york = City.create(name: "New York", latitude: 40.7128, longitude: -74.0060, country: usa)
paris = City.create(name: "Paris", latitude: 48.8566, longitude: 2.3522, country: france)

# Seed data for activities
Activity.create(name: "Central Park Dog Parade", description: "Dog Parade in Central Park", city: new_york, website_url: "https://example.com", activity_date: Date.today, address: "123 Main St", latitude: 40.785091, longitude: -73.968285, contact_number: "123-456-7890", opening_time: Time.now)

# Seed data for professional courses
ProfessionalCourse.create(course_name: "Dog First Aid Course", description: "All The Basics of Dog First Aid ", course_duration: "2 weeks", start_date: Date.today, end_date: Date.today + 2.weeks, online: false, address: "456 Broadway", city: new_york, prerequisites: "Dog Lovers", website_url: "https://example.com", certification_provided: true, contact_number: "456-789-0123")

# Seed data for pet owners
PetOwner.create(profile_picture: hexadecimal_string, first_name: "John", last_name: "Doe", username: "johndoe", password: "password", password_confirmation: "password", gender: "Male", email: "john@example.com", phone_number: "123-456-7890", emergency_phone_number: "987-654-3210", address: "789 Elm St", city: new_york, postal_code: "10001", state_province: "NY", dog_name: "Max", dog_breed: "Labrador", additional_info: "Lorem ipsum")

# Seed data for pet professionals
PetProfessional.create(profile_picture: hexadecimal_string, first_name: "Jane", last_name: "Smith", username: "janesmith", password: "password", password_confirmation: "password", gender: "Female", email: "jane@example.com", phone_number: "987-654-3210", emergency_phone_number: "123-456-7890", address: "321 Oak St", city: paris, postal_code: "75001", state_province: "IDF", business_name: "PetCare Inc.", profession: "Veterinarian", social_media: "https://twitter.com/janesmith", professional_certificate: hexadecimal_string, company_registration_number: "123456789", business_license: hexadecimal_string, short_bio: "Lorem ipsum dolor sit amet", short_work_description: "Providing quality pet care services", years_of_experience: 5, services_offered: "Pet grooming, Vaccinations", business_hours: "9:00 AM - 5:00 PM", about_me_video_file: hexadecimal_string, latitude: 48.8566, longitude: 2.3522)

# Seed data for services
Service.create(name: "Dog Grooming")
Service.create(name: "Pet Vaccinations")

# Seed data for professional services (associating services with pet professionals)
professional_service_1 = ProfessionalService.create(service: Service.first, pet_professional: PetProfessional.first)
professional_service_2 = ProfessionalService.create(service: Service.last, pet_professional: PetProfessional.last)

# Seed data for professional reviews
ProfessionalReview.create(rating: 4.5, review_text: "Great service, highly recommend!", review_date: Date.today, pet_owner: PetOwner.first, pet_professional: PetProfessional.last)

# Seed data for website reviews
WebsiteReview.create(rating: 5.0, review_text: "Excellent experience!", review_date: Date.today, pet_owner: PetOwner.last, pet_professional: PetProfessional.first)
