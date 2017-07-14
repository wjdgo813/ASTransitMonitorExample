//
//  ViewController.swift
//  ASTransitMonitor
//
//  Created by JHH on 2017. 7. 14..
//  Copyright © 2017년 JHH. All rights reserved.
//

import UIKit


class ViewController: UIViewController,ASLocationMonitorManagerDelegate {
    @IBOutlet weak var stateLabel: UILabel!
    var monitorManager : ASTransitMonitorManager! = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        self.monitorManager = ASTransitMonitorManager()
        self.monitorManager.delegate = self
        self.monitorManager.initMonitor()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func locationManager(_ locationManager: ASTransitMonitorManager!, didChangeTransitState stateString: String!) {
        self.stateLabel.text = stateString
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

