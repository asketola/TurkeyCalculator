//
//  PrepViewController.swift
//  Turkey Calculator 3000
//
//  Created by Annemarie Ketola on 5/20/15.
//  Copyright (c) 2015 UpEarly. All rights reserved.
//

import UIKit

class PrepViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
  
  var prepLabels = ["Refridgerator", "Cold H20", "Counter", "Giblets", "Feathers", "Washing"]
  var prepImages = ["fridge.png", "h2o.jpeg", "counter.jpg", "giblet.jpg", "feathers.jpg", "kosher.jpg"]
    var prepTexts = ["The safest and slowest way to defrost your bird is in the refrigerator. Keep the turkey in its original packaging and place on a sheet pan just in case there is a leak in the wrapper. The rule is 24 hours for every 5lbs. You can also re-freeze the bird if the family comes down with the flu or you decided to sensibly fly to Hawaii instead.", "Fill a sink or bucket that is large enough to fully submerge your turkey with 40°F or colder water. Keep the turkey in its wrapper and inspect it for tears or holes so no water gets in and no bacteria gets out. Change out the water every 30 minutes to maintain the water temperature (or just leave the bucket outside if its cold out). The defrost rule is 30 minutes per pound.", "This is an option, but you have to ask yourself – Do you and your guests feel lucky today? Those with iron stomachs will be fine but the invasive bacteria in your kitchen might take out grandma. You don’t want to do that.", "Don’t forget to remove the bag of giblets from your fresh bird or after defrosting your frozen bird. If you forget and start roasting the bird with them inside, take them out as soon as you do remember. If the bag was paper, carry on with you day. However, if the bag was plastic and it melted- toss the bird and call for Chinese food.", "Commercial birds do not have this issue, but fancy bird types like heritage turkeys may still have a few broken remnants of feathers in their skin. They won’t kill you, but it doesn’t hurt to check over the bird and remove them with fine pliers or clean tweezers.", "The vast majority of turkeys do not need to be washed, all bacteria will be safely roasted away. A fancy heritage bird or a home processed bird may need to be rinsed inside and out with warm water if there is still feather remnants, dirt, etc. Be prepared to sterilize your whole kitchen afterwards to prevent cross-contamination."]
    var forDetailedInfoLabel = String()
    var forDetailedInfoImage = UIImage()
    var forDetailedInfoText = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    //#warning Incomplete method implementation -- Return the number of items in the section
    return prepLabels.count
  }
  
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell: PrepCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell2", forIndexPath: indexPath) as! PrepCell
    
    // Configure the cell
    cell.prepLabel.text = prepLabels[indexPath.row]
    cell.prepImage.image = UIImage(named: prepImages[indexPath.row])
    return cell
  }
  
  func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
    println("Cell: \(indexPath.row) selected")
    forDetailedInfoLabel = prepLabels[indexPath.row]
    forDetailedInfoImage = UIImage(named: prepImages[indexPath.row])!
    forDetailedInfoText = prepTexts[indexPath.row]
    performSegueWithIdentifier("SHOW_PREP", sender: self)
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_PREP" {
            var destinationVC = segue.destinationViewController as! DetailedInfoViewController
            destinationVC.forDetailedInfoLabel = forDetailedInfoLabel
            destinationVC.forDetailedInfoImage = forDetailedInfoImage
            destinationVC.forDetailedInfoText = forDetailedInfoText
        }
    }

}
