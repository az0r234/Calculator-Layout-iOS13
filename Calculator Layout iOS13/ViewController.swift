
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var firstNumber = 0.0
    var secondNumber = 0.0
    var label = ""
    var label2 = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func numberPressed(_ sender: UIButton) {
        
        label += String(sender.tag)
        answerLabel.text = label
    }
    
    
    
    
    
    @IBAction func functionValuesPressed(_ sender: UIButton) {
        
        answerLabel.text = "0"
        
        let functionVal = String(sender.currentTitle!)
        
        switch functionVal{
        case "AC":
            label = ""
            break
        case "+":
            firstNumber += Double(label)!
            label = ""
            break
        case "=":
            answerLabel.text = String(Int(firstNumber))
            break
            
        default:
            break
        }
        
    }
    
    
    
    
}

