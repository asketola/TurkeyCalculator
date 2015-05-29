//
//  FlavorViewController.swift
//  Turkey Calculator 3000
//
//  Created by Annemarie Ketola on 5/20/15.
//  Copyright (c) 2015 UpEarly. All rights reserved.
//

import UIKit

class FlavorViewController: UIViewController {
  
  var flavorLabels = ["Butter Rubs", "Injections", "Brining", "Dry Herbs", "Pan Layout", "Tying"]
  var flavorImages = ["butter.jpg", "inject.jpg", "brine.jpg", "herb.jpg", "pan.JPG", "tying.jpg"]
    var flavorTexts = ["1skdjhfslkfhsfh", "2lsdjflsjflsfjsl", "3lskjlsdkfjdslk", "4lskdjfdlksfjsdl", "5lskdfjldskfjdsklj", "6ljsdlsjdflsdjflksdfj"]
    var forDetailedInfoLabel = String()
    var forDetailedInfoImage = UIImage()
    var forDetailedInfoText = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    //#warning Incomplete method implementation -- Return the number of items in the section
    return flavorLabels.count
  }
  
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell: FlavorCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell5", forIndexPath: indexPath) as! FlavorCell
    
    // Configure the cell
    cell.flavorLabel.text = flavorLabels[indexPath.row]
    cell.flavorImage.image = UIImage(named: flavorImages[indexPath.row])
    return cell
  }
  
  func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
    println("Cell: \(indexPath.row) selected")
    forDetailedInfoLabel = flavorLabels[indexPath.row]
    forDetailedInfoImage = UIImage(named: flavorImages[indexPath.row])!
    forDetailedInfoText = flavorTexts[indexPath.row]
    performSegueWithIdentifier("SHOW_FLAVOR", sender: self)
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_FLAVOR" {
            var destinationVC = segue.destinationViewController as! DetailedInfoViewController
            destinationVC.forDetailedInfoLabel = forDetailedInfoLabel
            destinationVC.forDetailedInfoImage = forDetailedInfoImage
            destinationVC.forDetailedInfoText = forDetailedInfoText
        }
    }

}
