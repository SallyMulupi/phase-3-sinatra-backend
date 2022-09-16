puts "🌱 Seeding spices..."

# Seed your database 

Lecturer.destroy_all
Employee.destroy_all


Mary = Lecturer.create(name: "Mary")
keith = Lecturer.create(name: "Keith")
james= Lecturer.create(name: "James")
Hope= Lecturer.create(name: "Hope")


Student.create(name: "Jane", category: "I.T", is_present: false, Lecturer_id:james.id)
Student.create(name: "Jude", category: "AccounTing", is_present: false, Lecturer_id:hope.id)
Student.create(name: "Janet", category: "Data Sciend", is_present: false, Lecturer_id:mary.id)
Student.create(name: "Jenny", category: "Finance", is_present: false, Lecturer_id:keith.id)

puts "✅ Done seeding!"
