//
//  ViewController.swift
//  TrafficLights
//
//  Created by Giovanni on 12.04.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var switchTrafficLightsButton: UIButton!
    
    private var trafficLightColor = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchTrafficLightsButton.layer.cornerRadius = 10
        
        redLightView.layer.cornerRadius = redLightView.bounds.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.bounds.width / 2
        greenLightView.layer.cornerRadius = greenLightView.bounds.width / 2
       
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }

    @IBAction func switchTrafficLightsDidTapped() {
        switch trafficLightColor {
        case "":
            switchTrafficLightsButton.setTitle("Next", for: .normal)
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            trafficLightColor = "Red"
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
} //            думается, что можно было как-то изящней..

