json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :description, :duration, :attr_id
  json.url exercise_url(exercise, format: :json)
end
