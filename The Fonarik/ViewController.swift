//
//  ViewController.swift
//  The Fonarik
//
//  Created by Евгений Гуляев on 10.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var isLight = false

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    fileprivate func updateUI() {
        view.backgroundColor = isLight ? .white: .black
    }
    
    @IBAction func buttonPressed() {
        isLight.toggle()
        updateUI()
    }
    

}

