# User.create!(email: 'email@email.email', password: 'password123', password_confirmation: 'password123')

30.times do
  Course.create!({
                   title: Faker::Educator.course_name,
                   description: Faker::TvShows::GameOfThrones.quotes, 
                   user_id: User.first.id
                 })
end
