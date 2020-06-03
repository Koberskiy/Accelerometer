//
//  ViewController.swift
//  xyz-machine
//
//  Created by Yaroslav Koberskyy on 6/3/20.
//  Copyright © 2020 Yaroslav Koberskyy. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        motionManager = CMMotionManager() //instantiete
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabel)
    }
    
    func updateLabel(data:CMAccelerometerData?, error: Error?) {
        guard let accelrometerData = data else { return }
        print(accelrometerData)
    }
}

