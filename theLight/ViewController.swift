//
//  ViewController.swift
//  theLight
//
//  Created by Stas Borovtsov on 08.12.2020.
//

import UIKit

class ViewController: UIViewController {

    var isLightOn: Bool = true
    
    override var prefersStatusBarHidden: Bool {
     return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    @IBAction func buttonPressed() {
//        isLightOn = !isLightOn
        isLightOn.toggle() // делает тоже самое, что и строка выше
        //        print(isLightOn)
        updateUI()
    }
}

