/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = 0 //  0 Dawn, 1 Morning, 2 Noon, 3 Sunset, 4 Night




-> seashore

== seashore ==
You are sitting on the beach. The ocean waves lap at the shore.

+ [Wait]
     ~ time = time + 1
     You rest for a while, until it is { advance_time() }
    ->seashore
+ [Walk down the beach]
    -> Rocky_Beach
+ [Hike back to your cabin]
    ~ time = time + 1
    By the time you make it back to your cabin, it is {advance_time()}.
    -> Forest
-> DONE

== Rocky_Beach ==
Further down the beach, the sand dusts upon the rocky shore. Wading out here would be hazardous to your feet! Nearby, you see a boat up on the shore.

+ [Take the boat out on the ocean]
    ~ time = time + 1
     By the time you reach a comfortable distance from shore, it is {advance_time()}
     -> Boat

+ [Move back up the beach] -> seashore

== Shells ==
You pick up the shells
-> Rocky_Beach

==Boat==
You are out on the boat, a ways away from the shore.

*{time == 4} [Do some late night fishing]
    You fish for a while, and spot a group of glowing jellyfish swimming below!
    -> Boat

+ [Go back to shore]
    ~ time = time + 1
    By the time you reach shore, it is {advance_time()}
    -> Rocky_Beach

==Forest==
 You are in a pine forest. Between the trees, you see your red-painted cabin. The rocking chair sways gently on the porch.
    
+ [Rest in the rocking chair]
    ~ time = time + 1
     You rest for a while, until it is { advance_time() }
     -> Forest

+ [Hike to the beach]
    ~ time = time + 1
    By the time you make it back to the beach, it is {advance_time()}.
    -> seashore
    
+ [Go into the cabin]
    -> Cabin
    
==Cabin==
You are in your small cabin. Your bed stands nearby.

+{time == 3 || time == 4} [Sleep in bed]
    ~ time = time + 2
    You snooze for a while, until the sun comes up.
    -> Cabin

+ [Leave]
    -> Forest

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 4:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Dawn"
        
        - time == 1:
            ~ return "Morning"
        
        - time == 2:
            ~ return "Noon"
            
        - time == 3:
            ~ return "Sunset"
            
        - time == 4:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
