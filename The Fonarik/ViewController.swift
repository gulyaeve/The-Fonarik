//
//  ViewController.swift
//  The Fonarik
//
//  Created by Евгений Гуляев on 10.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    var isLight = false

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    fileprivate func updateUI() {
        view.backgroundColor = isLight ? .white: .black
        UIScreen.main.brightness = isLight ? CGFloat(1.0): CGFloat(0.0)
    }
    
    @IBAction func buttonPressed() {
        isLight.toggle()
        updateUI()
    }
    

}

