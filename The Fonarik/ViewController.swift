//
//  ViewController.swift
//  The Fonarik
//
//  Created by Евгений Гуляев on 10.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var isLight = 0

    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    /// Switch to color
    /// - returns: UIColor
    func lightOn(number: Int) -> UIColor {
        switch number {
        case 0:
            let color = UIColor.black
            return color
        case 1:
            let color = UIColor.red
            return color
        case 2:
            let color = UIColor.yellow
            return color
        case 3:
            let color = UIColor.green
            return color
        default:
            let color = UIColor.white
            return color
        }
    }
    fileprivate func updateUI() {
        view.backgroundColor = lightOn(number: isLight)
        // Set screen brightness: ON for colors, OFF for black
        if isLight == 0 {
            UIScreen.main.brightness = CGFloat(0.0)
        } else {
            UIScreen.main.brightness = CGFloat(1.0)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if isLight > 3 {
            isLight = 0
        } else {
            isLight += 1
        }
        updateUI()
    }
    

    

}

