Meditation.delete_all 

Meditation.create!([{
   title: "Stress Relief",
   duration: 3,
   content: "Breath/1/2/3/4" },
   {
   title: "Handling Anxiety",
   duration: 5,
   content: "a/b" },
   {
   title: "Pain Management",
   duration: 3,
   content: "b/c" },
   {
   title: "Affirmations",
   duration: 3 },
   {
   title: "Breathe",
   duration: 1
}])


# meditation_title.each do |title|
#    Meditation.create(title: title, duration: duration)
# end
