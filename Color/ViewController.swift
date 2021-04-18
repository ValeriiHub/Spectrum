//
//  ViewController.swift
//  Color
//
//  Created by Valerii D on 17.04.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    
    @IBOutlet weak var firstSlider: UISlider!
    @IBOutlet weak var secondSlider: UISlider!
    @IBOutlet weak var thirdSlider: UISlider!
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.layer.cornerRadius = 10
    }
    func spectrum() {
        mainView.backgroundColor = UIColor(red: CGFloat(firstSlider.value), green: CGFloat(secondSlider.value), blue: CGFloat((thirdSlider.value)), alpha: CGFloat(1.0))
    }

    @IBAction func controlFirstSlider() {
        firstTextField.text = String(format: "%.2f",firstSlider.value)
        firstLabel.text = String(format: "%.2f",firstSlider.value)
        
        spectrum()
    }
    @IBAction func controlSecondSlider() {
        secondTextField.text = String(format: "%.2f",secondSlider.value)
        secondLabel.text = String(format: "%.2f",secondSlider.value)
        
        spectrum()
    }
    
    @IBAction func controlThirdSlider() {
        thirdTextField.text = String(format: "%.2f",thirdSlider.value)
        thirdLabel.text = String(format: "%.2f",thirdSlider.value)
        
        spectrum()
    }
 
}

