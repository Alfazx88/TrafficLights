//
//  ViewController.swift
//  TrafficLights
//
//  Created by Giovanni on 12.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var switchTrafficLightsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchTrafficLightsButton.layer.cornerRadius = 10
        switchTrafficLightsButton.setTitle("Start", for: .normal)
        redLightView.layer.cornerRadius = 55
        yellowLightView.layer.cornerRadius = 55
        greenLightView.layer.cornerRadius = 55
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func switchTrafficLightsDidTapped(_ sender: UIButton) {
        
        
        
        
        
    }
    
}

