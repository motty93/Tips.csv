require 'csv'

CSV.open('file.csv', 'w') do |f|
  f << ['id', 'name', 'age']
  User.where(status: :active).find_each do |user|
    data = []
    data.push(user.id)
    data.push(user.name)
    data.push(user.age)
    f << data
  end
end
