Meditation.delete_all 

Meditation.create!([{
   title: "Breathing",
   duration: 3,
   content: "Inhale/Exhale/Inhale/Exhale" },

   {
   title: "Handling Anxiety",
   duration: 5,
   content: "Begin in a comfortable seated position/Feel rooted, safe, and comfortable through your seat/
   Once you’re settled, soften your gaze/Relax the muscles in your face/
   Take a deep breath in through your nose/And out through your mouth/
   1/2/3/4/
   As you inhale, imagine that you are breathing in calmness/As you exhale, imagine that you are breathing out your anxiety/
   Inhale peace and clarity/Exhale stress and worry/
   Inhale/Feel your anxiety slip away with each exhale/
   Inhale/Exhale/
   Your mind may drift to feelings of worry/This is okay, be mindful/
   Without judgment, gently bring your attention back to the breath/Notice how calm you feel as you sit and breathe"},
   {
   title: "Pain Management",
   duration: 3,
   content: "Take a breath in/Exhale/Settle into a comfortable position/Notice how you are feeling in this moment/Observe your body and mind/
   Pain management begins with observation./Where is most of your tension stored?/Where is your pain located?/What part of your body is most relaxed?/Take a deep breath in.... now exhale./
   Breathe in.... and out./Continue to breathe slowly, smoothly./Now continue the pain management relaxation with a passive attitude of observing. Do not try to make anything happen. 
   Notice how your whole body feels. Passively observe, not trying to change anything. Simply take note of how your body feels. Take a few moments now to think about the pain you experience.
   You may not be in pain right now. Just observe the state of your pain in this moment. The way your body feels is always changing. The way you feel is different from moment to moment. 
   A moment from now, you will feel slightly different from the way you feel right now. Just observe. Observe as each moment passes. 
   Although pain is unwanted and difficult to tolerate, try for the next few moments to regard your pain with acceptance. 
   Accept the way you are feeling right now physically and emotionally..... whether positive or negative..... allow your body and mind to just" },
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
