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
  var stuffingTexts = ["1skdjhfslkfhsfh", "2lsdjflsjflsfjsl", "3lskjlsdkfjdslk", "4lskdjfdlksfjsdl", "5lskdfjldskfjdsklj"]
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
