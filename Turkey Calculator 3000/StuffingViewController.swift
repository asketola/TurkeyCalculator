//
//  StuffingViewController.swift
//  Turkey Calculator 3000
//
//  Created by Annemarie Ketola on 5/20/15.
//  Copyright (c) 2015 UpEarly. All rights reserved.
//

import UIKit

class StuffingViewController: UIViewController {
  
  var stuffingLabels = ["Stuff In", "Stuff Out", "Oven Temps", "Heritage Birds", "Basting"]
  var stuffingImages = ["stuffingin.jpg", "stuffingout.jpg", "oven.jpg", "heritage.jpg", "basting.jpg"]
  var stuffingTexts = ["1. Fully cook the meat/seafood in the stuffing prior to putting it in the turkey and do not make ahead of time, make the stuffing just before the bird goes into the oven. \n 2. Don’t over stuff the cavity as ingredients like rice and bread will expand \n 3. Measure the temperature of the stuffing along with the turkey; both the stuffing and meat must reach 165°F to be safe. If the bird reaches the temperature before the stuffing does, take the bird out of the oven and remove the stuffing and place it back in the oven (or microwave it) in a new casserole dish, till it reaches the correct temp. Leaving the bird in when it’s already done and the stuffing isn’t will lead to a dried out bird. No one wants that.", "Unstuffed birds lovers make their stuffing in a casserole dish. Using turkey stock, turkey liver, gizzard, and neck pieces sautéed in butter will get a similar turkey flavor as if it had been stuffed inside the turkey. The cooking time will be shorter than if it was roasting in a bird and make sure you examine the oven space to ensure there is room for the casserole dish in the oven.", "The lowest recommended oven temperature is 325°F, which will lead to a low and slow roasting method. You can increase the temperature to speed up the cooking time or use high heat at the end to get a crispy golden skin. There is an ‘Art’ to the process that every cook develops for their turkey. \n The recommended internal temperature to kill all bacteria is 165°F. When the bird is taken out of the oven, it will continue to rise in temperature to about 180°F, so some people prefer to remove the turkey at 150°F and let it rest tented to reach the desired 165°F. A thermometer is the only reliable method to determine the internal temperature as meat or juice colors varies with type of bird. The temperature should be taken at the thickest part of the turkey’s thigh without touching the bone and under the wing. In the event that the skin starts to darken before the internal temperature has been reached, you can tent your bird with buttered aluminum foil.", "Heritage birds have different characteristics that lead to a different roasting experience. They are smaller, with longer legs, leaner in fat with the exception of around the neck, which is fattier (which can sometimes create a more soggy stuffing). They roast more quickly due to this and are generally roasted to an internal temperature of 140°F to 150°F and then left to rest tented. The meat will sometimes keep its pink color despite reaching a safe internal temperature.", "Traditionally people baste their turkey every 30 minutes with a spoon or turkey baster allowing the hot oven air to escape and elongating the cooking time. This method has fallen out of favor with modern recipes and cooks. There is also evidence that basting doesn’t actually create a crispy skin or help moisten the bird. If you choose to baste remember to account for the lowered temps in your cooking time and have extra stock or butter available if your pan juices run dry. \n Modern cooks use methods such as brining, butter rubs, or flipping the bird half-way through the roasting process to get an even moisture in the meat and a crisp and browned skin."]
  var forDetailedInfoLabel = String()
  var forDetailedInfoImage = UIImage()
  var forDetailedInfoText = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    //#warning Incomplete method implementation -- Return the number of items in the section
    return stuffingLabels.count
  }
  
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell: StuffingCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell4", forIndexPath: indexPath) as! StuffingCell
    
    // Configure the cell
    cell.stuffingLabel.text = stuffingLabels[indexPath.row]
    cell.stuffingImage.image = UIImage(named: stuffingImages[indexPath.row])
    return cell
  }
  
  func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
    println("Cell: \(indexPath.row) selected")
    forDetailedInfoLabel = stuffingLabels[indexPath.row]
    forDetailedInfoImage = UIImage(named: stuffingImages[indexPath.row])!
    forDetailedInfoText = stuffingTexts[indexPath.row]
    performSegueWithIdentifier("SHOW_STUFFING", sender: self)
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "SHOW_STUFFING" {
            var destinationVC = segue.destinationViewController as! DetailedInfoViewController
            destinationVC.forDetailedInfoLabel = forDetailedInfoLabel
            destinationVC.forDetailedInfoImage = forDetailedInfoImage
            destinationVC.forDetailedInfoText = forDetailedInfoText
//        }
    }


}
