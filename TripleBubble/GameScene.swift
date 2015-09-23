import SpriteKit
class GameScene: SKScene {
    let zombie = SKSpriteNode(imageNamed: "zombie1")
    
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.whiteColor()
        zombie.position = CGPoint(x: 400, y: 400)
        addChild(zombie)
        let background = SKSpriteNode(imageNamed: "background1")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition = -1
        addChild(background)
    }
    override func update(currentTime: NSTimeInterval) {
            zombie.position = CGPoint(x: zombie.position.x + 4,
            y: zombie.position.y)
    }
    
}