Meditation.delete_all 

# create meditation data

Meditaton.delete_all

meditation_title = [
  ['Stress Relief', 3]
  ['Handling Anxiety', 5]
  ['Pain Management', 3]
  ['Affirmations', 3] 
  ['Breathe', 1]
]


meditation_title.each do |title|
   Meditation.create(title: title)
end
