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

Comment.create!([{
   content: "awesome!",
   meditation_id: 6
}])

# meditation_title.each do |title|
#    Meditation.create(title: title, duration: duration)
# end
