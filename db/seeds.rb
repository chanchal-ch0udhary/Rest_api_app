book_ids = Book.ids

95.times do
  Flow.create!(book_id: book_ids.sample, newStock:   Faker::Number.between(2, 15), previousStock: Faker::Number.between(2, 15))
end