//
//  GravyViewController.swift
//  Turkey Calculator 3000
//
//  Created by Annemarie Ketola on 5/20/15.
//  Copyright (c) 2015 UpEarly. All rights reserved.
//

import UIKit

class GravyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
  var gravyLabels = ["Gravy", "Carving"]
  var gravyImages = ["gravey.jpg", "carving.png"]
    var gravyTexts = ["1skdjhfslkfhsfh", "2lsdjflsjflsfjsl"]
    var forDetailedInfoLabel = String()
    var forDetailedInfoImage = UIImage()
    var forDetailedInfoText = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    //#warning Incomplete method implementation -- Return the number of items in the section
    return gravyLabels.count
  }
  
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell: GravyCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell3", forIndexPath: indexPath) as! GravyCell
    
    // Configure the cell
    cell.gravyLabel.text = gravyLabels[indexPath.row]
    cell.gravyImage.image = UIImage(named: gravyImages[indexPath.row])
    return cell
  }
  
  func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
    println("Cell: \(indexPath.row) selected")
    forDetailedInfoLabel = gravyLabels[indexPath.row]
    forDetailedInfoImage = UIImage(named: gravyImages[indexPath.row])!
    forDetailedInfoText = gravyTexts[indexPath.row]
    performSegueWithIdentifier("SHOW_GRAVY", sender: self)
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_GRAVY" {
            var destinationVC = segue.destinationViewController as! DetailedInfoViewController
            destinationVC.forDetailedInfoLabel = forDetailedInfoLabel
            destinationVC.forDetailedInfoImage = forDetailedInfoImage
            destinationVC.forDetailedInfoText = forDetailedInfoText
        }
    }

}
