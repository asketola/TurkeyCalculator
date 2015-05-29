//
//  PrepViewController.swift
//  Turkey Calculator 3000
//
//  Created by Annemarie Ketola on 5/20/15.
//  Copyright (c) 2015 UpEarly. All rights reserved.
//

import UIKit

class PrepViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
  
  var prepLabels = ["Refridgerator", "Cold H20", "Counter", "Kosher", "Giblets", "Feathers"]
  var prepImages = ["fridge.png", "h2o.jpeg", "counter.jpg", "kosher.jpg", "giblet.jpg", "feathers.jpg"]
    var prepTexts = ["1skdjhfslkfhsfh", "2lsdjflsjflsfjsl", "3lskjlsdkfjdslk", "4lskdjfdlksfjsdl", "5lskdfjldskfjdsklj", "6sljdljsdlkfjsldk"]
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
