//
//  ViewController.swift
//  Turkey Calculator 3000
//
//  Created by Annemarie Ketola on 12/9/14.
//  Copyright (c) 2014 UpEarly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var turkeySizeText: UILabel!
    @IBOutlet weak var thawTimeText: UILabel!
    @IBOutlet weak var cookTimeText: UILabel!
    @IBOutlet weak var numberOfGuestsSlideBar: UISlider!
    @IBOutlet weak var numberOfGuestsSliderLabel: UILabel!
    
    @IBOutlet weak var totalCookPrepDayLabel: UILabel!
    @IBOutlet weak var totalCookPrepHourLabel: UILabel!
    @IBOutlet weak var totalCookPrepMinLabel: UILabel!
   
    @IBAction func sliderValueChanged(sender: UISlider) {
        var currentValue = Int(sender.value)
        numberOfGuestsSliderLabel.text = "\(currentValue)"
    }
    
    func calcLbsPerPerson(lbsPerPerson: Double,_ people: Double) -> Double {
        return lbsPerPerson * people
    }
    
    func calcHoursThawThurkey(lbsTurkey: Double,_ hoursInDay: Double) -> Double {
        return (lbsTurkey / 4 ) * hoursInDay
    }
    
    func timeToCookTurkeyHr(lbsTurkey: Double,_ minutesPerLbs: Double) -> Double {
        return ((lbsTurkey * minutesPerLbs) / 60)
    }
    
    func timeToCookTurkeyMin(cookTimeHours: Double,_ cookTimeHoursDbl: Double) -> Double {
        return (cookTimeHours - cookTimeHoursDbl) * 60
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func calculateButtonPressed(sender: AnyObject) {
        let lbsPerPerson = 1.5
//        var people = NSString(string:numberOfPeopleTextField.text).doubleValue
        var people = NSString(string:numberOfGuestsSliderLabel.text!).doubleValue
        var lbsTurkey = calcLbsPerPerson(lbsPerPerson, people)
        
        let hoursInDay = 24.0
        var thawTime = calcHoursThawThurkey(lbsTurkey, hoursInDay)
        var thawTimeInt = Int(thawTime)
        
        let minutesPerLbs = 15.0
        var cookTimeHours = timeToCookTurkeyHr(lbsTurkey, minutesPerLbs)
        var cookTimeHoursInt = Int(cookTimeHours)
        var cookTimeHoursDbl = Double(cookTimeHoursInt)
        var cookTimeMinutes = timeToCookTurkeyMin(cookTimeHours,cookTimeHoursDbl)
        var cookTimeMinutesInt = Int(cookTimeMinutes)
        
        var totalCookPrepTime = thawTimeInt + cookTimeHoursInt
        var totalCookPrepTimeDays = totalCookPrepTime/24
//        if totalCookPrepTimeDays == 0 {
             var totalCookPrepTimeHours = totalCookPrepTime
//        } else {
//           totalCookPrepTimeHours = totalCookPrepTimeDays - 24
//        }
//        
        
        // Update Labels
        turkeySizeText.text = "\(lbsTurkey) lbs"
        thawTimeText.text = "\(thawTimeInt) hours"
        cookTimeText.text = "\(cookTimeHoursInt):\(cookTimeMinutesInt) hours"
        
        totalCookPrepDayLabel.text = "\(totalCookPrepTimeDays)"
        totalCookPrepHourLabel.text = "\(totalCookPrepTimeHours)"
        totalCookPrepMinLabel.text = "minutes"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

