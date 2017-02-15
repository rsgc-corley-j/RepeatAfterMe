//: # Your goal
//: ![goal](scenario-one.png "Your goal")
/*:
 ## Notes:
 * the image is exactly 360 pixels wide by 360 pixels high
 * rainbow circles, circles in upper left, and squares in lower right must be exactly as shown
 * the "bites" taken out of the rainbow circle are randomly generated as follows:
 ​position varies as high as 50 pixels and as low as 50 pixels below horizontal centre line of image
 * when position is below centre line, opacity is 75%
 * when position is above centre line, opacity is 25%
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![assistanteditor](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 360, height: 360)

// Loop three times
//for i in 1...3 {
//    
//    // Generate random number between -75 and 75
//    let offset = Int(arc4random_uniform(150)) - 75
//    
//    // Draw circles in random horizontal positions in the middle of the canvas
//    canvas.drawEllipse(centreX: canvas.width / 2 + offset, centreY: 100 * i , width: 50, height: 50)
//
//}

// Modify code above as needed and continue writing code below as needed... 


canvas.drawShapesWithFill = false
    canvas.drawShapesWithBorders = true

//colour wheel circle

//for colour in 1...360{
//    
//canvas.borderColor = Color(hue: Float(colour), saturation: 100, brightness: 80, alpha: 100)
//    
//canvas.drawEllipse(centreX: 180, centreY: 180, width: 360 - colour , height: 360 - colour, borderWidth: 1)
//}



//circle with circles inside


for x in 1...10 {
    
canvas.drawEllipse(centreX: 50, centreY: 310, width: x * 10, height: x * 10, borderWidth: 1)
}

//square with squares inside

for x in 1...10 {
    
    canvas.drawRectangle(bottomLeftX: 360, bottomLeftY: 0, width: x * -10, height: x * 10)
    
    
}


//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
