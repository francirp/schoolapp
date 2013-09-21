json.array!(@assignments) do |assignment|
  json.extract! assignment, :time, :subject, :points, :completed, :due_date, :frequency, :teacher_id, :kid_id
  json.url assignment_url(assignment, format: :json)
end
