# EECS-1710-Labs
EECS 1710 Exercises - Anthony Venditti

**Exercise 1 - Drawing Machine:**

For this exercise, I have developed a Random Art Creator that allows the user to select from a variety of background colour options and to paint on the screen using their mouse cursor. The intent of my system is a tool that augments the concept of drawing, which is performed by the user. Upon starting, the user is confronted with a black screen that consists of text which lists the instructions of how to use the tool. The following are the controls(how to change background colour):

*Press 'r' for red background.*

*Press 'g' for green background.*

*Press 'b' for blue background.*

*Press 'w' for white background.*

*Press 'l' for black background.*

*Hold 'a' to randomize background.*

*Press 'c' to clear background.*


To begin drawing, the user must click anywhere and then select one of these keys in order to make the instructions disappear. Once that is done, the user can now feel free to draw without the distraction of the controls by clicking and dragging the mouse. A random paint-like substance is formed, allowing for many creations and possibilities! 



**Exercise 2 - Generative Landscape:**

For this exercise, I have created a beach themed landscape that is interactive for the user. Upon running the program, the user is faced with a background image of a typical beach setting(to be exact, the bottom half of the image is the sand, then above of that is a small layer of the ocean water, which is lastly followed by the clear blue skies at the top). The backrgound image is constantly moving slowly from side to side, in other words, panning. Here is where the project gets interactive:

*If the user has their cursor in the BOTTOM LEFT section of the screen, this displays an image of a person laying down in that quadrant.*

*If the user has their cursor in the BOTTOM RIGHT section of the screen, this displays an image of a sandcastle in that quadrant.*

*If the user has their cursor in the TOP LEFT section of the screen, this displays an image of a fake sun in that quadrant.*

*If the user has their cursor in the TOP RIGHT section of the screen, this displays an image of a flock of seagulls flying in that quadrant.*

*If the user CLICKS AND HOLDS anywhere on the screen, it freezes the background image in place so that it no longer pans, until the click is released.*



**Project 1 - Virtual Creature:**

For this project, I have created a species of a virtual organism that consists of 5 blue cups and 5 pink cups, which all act as the living creatures of this environment (both of their designs were digitally created by me). The background I chose is an image that represents vast space. Along with this, there is also 'food' that will generate randomly around the space in the shape of a small yellow star. As the blue and pink cups bounce off the edges inside the space, they can eat the stars which causes them to gradually decrease in size and speed. When all the stars in the space have been ate, a new round of stars will refresh, and this process will continue until all the cups eventually reach a speed of 0 and die. 

*Works Cited:*

Space background image: https://www.elitedaily.com/p/15-space-zoom-backgrounds-that-are-out-of-this-world-22846181

Star shape reference: https://processing.org/examples/star.html



**Exercise 3 - Clock:**

For this exercise, I have designed a basic real-time functioning clock that resembles that of an actual 12hr analog clock. As time carries on, there are 5 types of changes that occur to the program. Firstly, every second causes the background colour to randomly change. Secondly, every 30 seconds causes the text colour of the clock numbers to randomly change. Thirdly, every minute causes the border colour of the clock to randomly change. Fourthly, every hour causes the face colour of the clock to randomly change. Lastly, depending on the time of day, a different icon appears in each corner of the screen to represent the current part of the day. During morning(6am-12pm): a coffee icon appears in the top left corner. During afternoon(12pm-6pm): a sun icon appears in the top right corner. During evening(6pm-12am): a sunset icon appears in the bottom right corner. During night(12am-6am): a moon icon appears in the bottom left corner. 



**Midterm Project 2 - One-Button Game:**

For this project, I have created a one-button single player game called 'Dodger'. Dodger is a car driving game that allows the player to take control of a red car and requires them to avoid oncoming traffic on the road. The game screen is a birds-eye view perspective of the road, which consists of 2 same direction lanes and trees along the left side. The road continously scrolls downwards to simulate speed and movement from the cars, as the background infinitely loops. Dodger begins at a very slow pace, a speed of 10mph to be exact, which lasts for 30 seconds and displays the game title and instructions on the screen. This brief time allows for the user to understand the rules of the game and how to play (click the spacebar to swap lanes). After this introduction, the real game begins and consists of three difficulty stages:

*Stage 1 - This stage begins immediately after the intro and lasts for 30 seconds. In this stage, the car speed is slow (40mph) and contains 15 vehicle obstacles.*

*Stage 2 - This stage begins immediately after stage 1 and lasts for 30 seconds. In this stage, the car speed is medium (70mph) and contains 25 vehicle obstacles.*

*Stage 3 - This stage begins immediately after stage 2 and lasts for 30 seconds. In this stage, the car speed is fast (100mph) and contains 35 vehicle obstacles.*


So, the game progressively becomes more difficult as each stage is passed. If the player, the red car located near the bottom, collides with another car then the game will end and alert the user with a "YOU LOSE" message. If the player reaches the end of stage 3, which is a total of 2 minutes since beginning the game, then the game will end and alert the user with a "YOU WIN" message, indicating that you have won! In either scenario, win or lose, the user must restart the program if they wish to play again. (NOTE: the works cited for this project can be found at the bottom of the main code file***). 



**Exercise 4 - Modular Alphabet:**

For this exercise, I have created a program that simply allows the user to output 1 of the 26 letters in the English alphabet. The background is a basic colourful galaxy-theme image that pans from left to right and vice versa as time carries on. All the user must do is click any key on the keyboard, from a to z, and the corresponding letter will display on the screen until the next letter is clicked (or a non-alphabetical key is pressed). Also, when the program first runs, each letter is given a random stroke colour.



**Exercise 5 - Voice Machine:**

For this exercise, I have created a Fortune Teller Machine that is supposed to replicate the famous Zoltar. The screen displays an image of a Zoltar machine and also consists of background noises that you would hear in a fortune teller's room. All the user must do is click the SPACEBAR to receive a random audio message of 5 different fortunes, which is instructed to the user on screen. The user must wait until Zoltar has finished speaking before clicking the SPACEBAR again.



**Project 3 - Custom Pixel:**

For this project, I have designed an interactive pixel changing program using 4 different images of paintings created by the famous artist Vincent van Gogh. Each quadrant of the screen displays a different corner from each of the 4 images, for example, the top left quadrant displays the top left portion of the painting 'cafe' and the bottom right quadrant displays the bottom right portion of the painting 'irises' and so on. When the program begins, the pixels of each image, which are in the shape of small dots, slowly begin heading towards the center of the screen. However, over time the pixels gradually get faster and faster. Carrying on, there are 2 interactive feautures for the user to manipulate the movement of these pixels. The first is that depending on which quadrant the user's cursor is in, the pixels in that quadrant will follow the user's cursor rather than move towards the center of the screen. The second is that also depending on which quadrant the user's cursor is in, if the mouse is pressed then the pixels in that quadrant will freeze until the mouse click is released. 



**Exercise 6 - Extrapolated Body:**

For this exercise, I have created an interactive webcam program that uses filters to display the outlines of people and objects within the camera's field of view. To start, the background is a gradual ever-changing colour transition from black to white. Then, the interactive part of the program allows the user to change the colour of the fill and stroke of the outlines displayed by the webcam, as well as the threshold. The following are the controls:

*Press '1' to fill with RED.*

*Press '2' to fill with GREEN.*

*Press '3' to fill with BLUE.*

*Press '4' to make the stroke ORANGE.*

*Press '5' to make the stroke PINK.*

*Press '6' to make the stroke YELLOW.*

*Press '7' to set the threshold to 150.*

*Press '8' to set the threshold to 100.*

*Press '9' to set the threshold to 50.*

*Press '0' to set the threshold to 10.*



**Exercise 7 - Iterative Pattern:**

For this exercise, I have created an endless 3D pattern animation. The main focus in the animation is a large grid of symmetric and evenly spaced out spheres that gradually change from black to the colour of the background, and vice versa. Speaking of, the background displays a smooth colour flow that transitions between the colours of the rainbow. To continue, there are 3 different stages in the animation that occur every 10 seconds that pass. The first one is a constant rotation in the z-axis of the camera's perspective. The second one is a constant rotation in the x-axis of the camera's perspective. And the last one is a constant rotation in the y-axis of the camera's perspective. These all combine to create an endless abstract pattern of colours and shape, which is very pleasant to view. 



**Exercise 8 - Data Self-Portrait:**

For this exercise, I have created a program that simply generates a table based on values from an excel spreadsheet. To start, I put together a table on excel with 2 columns and 8 rows, then linked it into my code using the function loadTable(). The first column represents the 7 days of the week and has a header called "Day of the Week", and the second column represents the average hours I spend on schoolwork for each day and has a header called "Average Hours". So, the title of this table is "My Average Hours Of School Work Each Day Of The Week!!!" which evidently displays my own personal data of what I believe is an accurate approximation. Also, to make it visually appealing, the background is black, the two column headers are orange, the Days of the Week are turquoise, the Hours are yellow, and the table dividors are white. Finally, the serial monitor prints out the data of each day in the form of sentences as such: "I average around _ hours of school work on _'s."
