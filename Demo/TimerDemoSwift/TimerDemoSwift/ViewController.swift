//
//  ViewController.swift
//  TimerDemoSwift
//
//  Created by Frank on 19/09/16.
//  Copyright © 2016 Frank Lefebvre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counterValue = 0
    @IBOutlet var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: #selector(ViewController.timerDidFire), userInfo: nil, repeats: true)
        updateCounterWithValue(0)
    }

    func timerDidFire(timer: NSTimer) {
        updateCounterWithValue(counterValue + 1)
    }
    
    func updateCounterWithValue(newValue: Int) {
        FrenchKitUpdateCounter(newValue)
        counterValue = newValue
        counterLabel.text = "\(newValue)"
    }
}

