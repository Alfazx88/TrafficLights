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
    var trafficLightColor = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        switchTrafficLightsButton.layer.cornerRadius = 10
        switchTrafficLightsButton.setTitle("Start", for: .normal)
        redLightView.layer.cornerRadius = 55
        redLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = 55
        yellowLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = 55
        greenLightView.alpha = 0.3

        
        // Do any additional setup after loading the view.
    }

    @IBAction func switchTrafficLightsDidTapped() {
        switch trafficLightColor {
        case "":
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            trafficLightColor = "Red"
            switchTrafficLightsButton.setTitle("Next", for: .normal)
        case "Red":
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            trafficLightColor = "Yellow"
        case "Yellow":
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            trafficLightColor = ""
        default:
            break
        }
        
        
        
        
    }
    
}

