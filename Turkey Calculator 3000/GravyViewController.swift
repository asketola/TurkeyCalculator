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
  var gravyTexts = ["After removing the done turkey from the pan, pour the meat juices from the turkey into a measuring cup. Let the juices in the cup stand and cool as the fat separates and rises to the top. Remove the fat by skimming with a spoon or ladle and reserve it in a separate container. Place the roasting pan back on the stovetop and add back the juices (but not the fat), heat for a few minutes, whisking to loosen up the brown bits on the sides and bottom to deglaze the pan and incorporate it into the juices. Add your stock of choice (chicken or turkey) to increase the volume to the desired amount of gravy you want to make and set aside. \n \n To create a thickening agent (a roux) for your gravy, take either the skimmed fat you saved from the juices or add butter to a saucepan. Add equal amounts of flour and cook over moderate heat stirring constantly until the mixture bubbles and turns a soft brown ~5 min. Gradually mix in the pan juices and bring to a boil. Lower heat and continue stirring until the mixture thickens.", "Your turkey need to rest out of the oven for a minimum of 20 minutes before its ready to cut. This is important to let the juices settle and be reabsorbed by the bird. You can leave it in the pan tented with aluminum foil for up to 40 minutes if your turkey is done before your sides are ready. Just remember to remove it when you are deglazing the pan for the gravy. The easiest carving is in the kitchen on a cutting board and then arranging the meat tastefully on a serving platter but you can also put on a show at the dinner table. \n \n Either way, make sure you are using sharp knives, a sturdy cutting board and surface, and meat fork to hold things steady. Kitchen shears are also helpful for cutting through joints such as the wings."]
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
