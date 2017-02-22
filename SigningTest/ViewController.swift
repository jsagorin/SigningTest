//
//  ViewController.swift
//  SigningTest
//
//  Created by Jonny Sagorin on 21/2/17.
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bundleIdLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let bundleIdentifier = Bundle.main.bundleIdentifier
        bundleIdLabel.text = bundleIdentifier
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

