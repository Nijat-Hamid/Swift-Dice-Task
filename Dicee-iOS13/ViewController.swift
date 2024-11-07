import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var diceImages: [UIImageView]!
    
    @IBAction func generate(_ sender: UIButton) {
        diceImages.forEach { $0.image = randomDiceImage()}
    }
    
    @IBAction func reset(_ sender: UIButton) {
        diceImages.forEach { $0.image = nil }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImages.forEach{ $0.setupImageView(radius: 12)}
    }
    
    private func randomDiceImage() -> UIImage? {
        return UIImage(named: "Dice\(Int.random(in: 1...6))")
    }

}
