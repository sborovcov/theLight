//
//  ViewController.swift
//  theLight
//
//  Created by Stas Borovtsov on 08.12.2020.
//

import UIKit

class ViewController: UIViewController {

    var lightStatus: Int = 1
    
    override var prefersStatusBarHidden: Bool {
     return true
    }
    
    // MARK: - methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    fileprivate func updateUI() {
        switch lightStatus {
        case 1:
            view.backgroundColor = .lightGray
            lightStatus += 1
        case 2:
            view.backgroundColor = .cyan
            lightStatus += 1
        default:
            view.backgroundColor = .magenta
            lightStatus = 1
        }
        //view.backgroundColor = isLightOn ? .white : .black
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //isLightOn.toggle()
        updateUI()
    }
}

