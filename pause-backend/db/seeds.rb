Meditation.delete_all 

Meditation.create!([{
   title: "Stress Relief",
   duration: 3,
   content: "Breath/1/2/3/4" },
   {
   title: "Handling Anxiety",
   duration: 5 },
   {
   title: "Pain Management",
   duration: 3 },
   {
   title: "Affirmations",
   duration: 3 },
   {
   title: "Breathe",
   duration: 1
}])

# meditation_title = [
#   ['Stress Relief', 3]
#   ['Handling Anxiety', 5]
#   ['Pain Management', 3]
#   ['Affirmations', 3] 
#   ['Breathe', 1]
# ]


# meditation_title.each do |title|
#    Meditation.create(title: title, duration: duration)
# end
