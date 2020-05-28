# Second Milestone

## What was the original goal of your project?

My orignal goal was to create an app with different buttons that had predetermined messages and on click would paste that messages into the text box on imessage, so all the user would have to do is click send.

## How have the goals of your project changed?

Originally I was planning on having 3 buttons that all had their own predetermined message. But, since then my objectives have changed and at this point in my project I have one button which leads to a text and one that leads to a tutorial page for cooking. (add more about end goal)

## What is a significant thing that you learned while building this project?

(Answer here as if you were explaining this topic to a classmate who has never seen it before. This should probably be about three to five sentences.)

Before building this project I had to learn how to use the Imessage extension on Xcode. The Imessage extension allows an app to be displayed in imessage(much like how gamePigeon is). (NOT DONE FINISH THIS)

## Describe an unexpected challenge that came up during this project, and how you overcame it.

(Answer here. This should probably be about two to four sentences.)

## Knowing what you know now, if you were to rebuild this project completely from scratch, what would you do differently, and why?

(Answer here. This should probably be about two to four sentences.)

*Example (delete me):* I would store the Connect Four game state in a different way that would make it easier to determine which cells are adjacent to each other, and in which direction. I made the decision early on to have Column objects that didn't really know about each other; each Column didn't know whether it was the first, second, or third column or whatever, and didn't know whether any others were the first, second, third, etc. It would have been a lot easier and cleaner if I had a method on each Cell that I could use to get the Cell that is adjacent to it in any given direction, something like `Cell.getNeighbor(inDirection:) -> Cell?`.
