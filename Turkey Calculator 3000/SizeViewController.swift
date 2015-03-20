//
//  SizeViewController.swift
//  Turkey Calculator 3000
//
//  Created by Annemarie Ketola on 3/19/15.
//  Copyright (c) 2015 UpEarly. All rights reserved.
//

import UIKit

class SizeViewController: UIViewController {
  @IBOutlet weak var numbeOfGuestsLabel: UILabel!
  @IBOutlet weak var lbsOfTurkeyLabel: UILabel!

  @IBOutlet weak var guestSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  func calcLbsPerPerson(lbsPerPerson: Double,_ people2: Double) -> Double {
    return lbsPerPerson * people2
  }
  
  
  @IBAction func guestSliderMoved(sender: UISlider) {
    var people = Int(sender.value)
    numbeOfGuestsLabel.text = "\(people) guests"
    let lbsPerPerson = 1.5
    var people2 = NSString(string:numbeOfGuestsLabel.text!).doubleValue
    var lbsTurkey = calcLbsPerPerson(lbsPerPerson, people2)
    lbsOfTurkeyLabel.text = "\(lbsTurkey) lbs of Turkey"
  }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
