import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var stepperControl: UIStepper!
    
    @IBOutlet var collectionValue: [UILabel]!
    @IBOutlet var collectionSuit: [UILabel]!
    
    var currentSegmentIndex: Int = 0    {
        didSet  {
            switch segmentedControl.selectedSegmentIndex {
            case 0:
                for suitImage in collectionSuit {
                    suitImage.text = "♦️"}
            case 1:
                for suitImage in collectionSuit {
                    suitImage.text = "♥️"}
            case 2:
                for suitImage in collectionSuit {
                    suitImage.text = "♠️"}
            case 3:
                for suitImage in collectionSuit {
                    suitImage.text = "♣️"}
            default:
                print("Error")
            }
        }
    }
    
    var value: Int = 7  {
        didSet  {
            for value in collectionValue    {
                value.text = "\(Int(stepperControl.value))"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureStepper()
    }
    
    func configureStepper() {
        stepperControl.minimumValue = 2
        stepperControl.maximumValue = 10
        stepperControl.stepValue = 1
        
        stepperControl.value = 7
    }
    
    @IBAction func SegmentedAction(_ sender: UISegmentedControl) {
        currentSegmentIndex = sender.selectedSegmentIndex
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        value = Int(sender.value)
    }
    
}

