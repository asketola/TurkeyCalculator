//
//  DetailedInfoViewController.swift
//  Turkey Calculator 3000
//
//  Created by Annemarie Ketola on 5/28/15.
//  Copyright (c) 2015 UpEarly. All rights reserved.
//

import UIKit

class DetailedInfoViewController: UIViewController {

    @IBOutlet weak var detailedInfoImage: UIImageView!
    @IBOutlet weak var detailedInfoText: UITextView!
    @IBOutlet weak var detailedInfoLabel: UILabel!
    
    var forDetailedInfoLabel = String()
    var forDetailedInfoImage = UIImage()
    var forDetailedInfoText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Here is the 1st loading")

        // Do any additional setup after loading the view.
        detailedInfoLabel.text = forDetailedInfoLabel
        detailedInfoImage.image = forDetailedInfoImage
        detailedInfoText.text = forDetailedInfoText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
