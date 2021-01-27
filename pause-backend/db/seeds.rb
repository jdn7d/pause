Meditation.delete_all 

# create meditation data

Meditaton.delete_all

meditation_title = [
  'Stress Relief',
  'Handling Anxiety',
  'Pain Management',
  'Affirmations',
  'Breathe',
]

meditation_collection = []

meditation_title.each do |title|
  meditation_collection << Meditation.create(title: title)
end
