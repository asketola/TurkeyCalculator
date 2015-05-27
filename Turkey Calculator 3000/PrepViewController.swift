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
  var prepImages = ["wild_turkey_full_2208.png", "wild_turkey_full_2208.png", "wild_turkey_full_2208.png", "wild_turkey_full_2208.png", "wild_turkey_full_2208.png", "wild_turkey_full_2208.png"]

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
  
  func collectionView(collectionView: UICollectionView, didDeselectItemAtIndexPath indexPath: NSIndexPath) {
    println("Cell: \(indexPath.row) selected")
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
