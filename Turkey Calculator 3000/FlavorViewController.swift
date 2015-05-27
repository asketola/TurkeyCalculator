//
//  FlavorViewController.swift
//  Turkey Calculator 3000
//
//  Created by Annemarie Ketola on 5/20/15.
//  Copyright (c) 2015 UpEarly. All rights reserved.
//

import UIKit

class FlavorViewController: UIViewController {
  
  var flavorLabels = ["Butter Rubs", "Flavor Injections", "Brining", "Dry Herb Rubs", "Pan Layout", "Tying"]
  var flavorImages = ["wild_turkey_full_2208.png", "wild_turkey_full_2208.png", "wild_turkey_full_2208.png", "wild_turkey_full_2208.png", "wild_turkey_full_2208.png", "wild_turkey_full_2208.png"]

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
