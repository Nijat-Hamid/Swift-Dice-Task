import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slotOne: UIImageView!
    @IBOutlet weak var slotTwo: UIImageView!

    @IBAction func generate(_ sender: UIButton) {
        slotOne.image = UIImage(named: randomDiceImage())
        slotTwo.image = UIImage(named: randomDiceImage())
    }
    
    @IBAction func reset(_ sender: UIButton) {
        slotOne.image = nil
        slotTwo.image = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageViews = [slotOne, slotTwo]
        for imageView in imageViews {
            setupImageView(for: imageView!, radius: 12)
        }
    }
    
    private func randomDiceImage() -> String {
        return "Dice\(Int.random(in: 1...6))"
    }

    private func setupImageView(for imageView: UIImageView, radius: CGFloat) {
        imageView.layer.cornerRadius = radius
        imageView.clipsToBounds = true

    }
}
