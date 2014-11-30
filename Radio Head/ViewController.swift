//
//  ViewController.swift
//  Radio Head
//
//  Created by arm on 11/27/14.
//  Copyright (c) 2014 arm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var RecordingInProgress: UILabel!
    
    @IBOutlet weak var stopButton: UIButton!
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBAction func stopAudio(sender: UIButton) {
        RecordingInProgress.hidden = true
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
        recordButton.enabled = true
    }

    @IBAction func RecordAudio(sender: UIButton) {
        RecordingInProgress.hidden = false
        stopButton.hidden = false
        recordButton.enabled = false
        println("in record")
    }

}

