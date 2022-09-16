class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/lecturers" do
    Lecturer.all.to_json
  end

  get '/studentss' do
    Student.all.to_json
  end

  get '/lecturers/:lecturer_id/students' do
    boss = Lecturer.find(params[:lecturer_id])
    lecturer.students.to_json
  end

  post '/students' do
    student = Student.create(
      name: params[:name],
      category: params[:category],
      is_present: params[:is_present],
      lecturer_id: params[:lecturer_id]
    ).to_json
  end

  post '/lecturers' do
    lecturer = lecturer.create(
      name: params[:name]
    ).to_json(include: :students)
  end

  patch '/students/:id' do
    student = Student.find(params[:id])
    Student.update(
      name: params[:name],
      category: params[:category],
      is_present: params[:is_present]
    ).to_json
  end

  delete '/employee/:id' do
    student= Student.find(params[:id])
    student.destroy
    student.to_json
  end

end
