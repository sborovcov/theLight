//
//  ViewController.swift
//  theLight
//
//  Created by Stas Borovtsov on 08.12.2020.
//

import UIKit

class ViewController: UIViewController {

    var isLightOn: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .cyan : .black
    }
    
    @IBAction func buttonPressed() {
//        isLightOn = !isLightOn
        isLightOn.toggle() // делает тоже самое, что и строка выше
        //        print(isLightOn)
        updateUI()
    }
}

