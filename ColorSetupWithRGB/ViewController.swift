//
//  ViewController.swift
//  ColorSetupWithRGB
//
//  Created by Вячеслав Сорокин on 16.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rgbView: UIView!
    
    @IBOutlet weak var redSliderValueLabel: UILabel!
    @IBOutlet weak var greenSliderValueLabel: UILabel!
    @IBOutlet weak var blueSliderValueLabel: UILabel!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    private var redSliderValue: Float {
        redSlider.value
    }
    private var greenSliderValue:Float {
        greenSlider.value
    }
    private var blueSliderValue: Float{
        blueSlider.value
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rgbView.layer.cornerRadius = 10
        
    }
    
    
    
    @IBAction func redSliderAction() {
        setColorForRGBView()
        redSliderValueLabel.text = String(format:"%.2f", redSliderValue)
    }
    
    @IBAction func greenSliderAction() {
        setColorForRGBView()
        greenSliderValueLabel.text = String(format:"%.2f", greenSliderValue)
    }
    
    @IBAction func blueSliderAction() {
        setColorForRGBView()
        blueSliderValueLabel.text =  String(format:"%.2f", blueSliderValue)
    }
    
    private func setColorForRGBView() {
        rgbView.backgroundColor = UIColor(
            red: CGFloat(redSliderValue),
            green: CGFloat(greenSliderValue),
            blue: CGFloat(blueSliderValue),
            alpha: 1
        )
        
            
        }
    
    
    
    
    

}

