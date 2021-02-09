Meditation.delete_all 

Meditation.create!([{
   title: "Stress Relief",
   duration: 3,
   content: "Breath/1/2/3/4" },

   {
   title: "Handling Anxiety",
   duration: 5,
   content: "Begin in a comfortable seated position/Feel rooted, safe, and comfortable through your seat/
   Once you’re settled, soften your gaze/Relax the muscles in your face/Take a deep breath in through your nose/
   And out through your mouth/1/2/3/4/As you inhale, imagine that you are breathing in calmness/
   As you exhale, imagine that you are breathing out your anxiety/Inhale peace and clarity/
   Exhale stress and worry/Inhale/Feel your anxiety slip away with each exhale/Inhale/Exhale/Your mind may drift to feelings of worry/
   This is okay, be mindful/Without judgment, gently bring your attention back to the breath/
   Notice how calm you feel as you sit and breathe"},
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
