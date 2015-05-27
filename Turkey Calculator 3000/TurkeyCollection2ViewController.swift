//
//  TurkeyCollection2ViewController.swift
//  Turkey Calculator 3000
//
//  Created by Annemarie Ketola on 5/20/15.
//  Copyright (c) 2015 UpEarly. All rights reserved.
//

import UIKit

class TurkeyCollection2ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
  var turkeyLabels = ["Free-range", "Organic", "Natural", "Kosher", "Self-basted", "Heritage"]
  var turkeyImages = ["wild_turkey_full_2208.png", "wild_turkey_full_2208.png", "wild_turkey_full_2208.png", "wild_turkey_full_2208.png", "wild_turkey_full_2208.png", "wild_turkey_full_2208.png"]
//    var turkeyImages = ["http://gastronomyatbu.files.wordpress.com/2012/08/range-turkeys1.jpg", "http://1.bp.blogspot.com/-tHU9dPlZsAE/VCwhQka_CmI/AAAAAAAAAdY/C5GsaZ-qiuY/s1600/Slate%2BTom%2BTurkey.JPG", "http://news.sagacom.com/wp-content/blogs.dir/3/files/2013/11/popcorn-620x400.jpg", "http://mockingbirdfarmma.files.wordpress.com/2011/07/p1010769.jpg", "http://wfas-maxcdn.woodstockfarmani.netdna-cdn.com/wp-content/uploads/Beatrice1-500x375.jpg", "http://newfarm.rodaleinstitute.org/features/1103/images/narragansett525.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
  func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    //#warning Incomplete method implementation -- Return the number of items in the section
    return turkeyLabels.count
  }
  
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell: TurkeyCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! TurkeyCell
    
    // Configure the cell
    cell.turkeyLabel.text = turkeyLabels[indexPath.row]
    cell.turkeyImage.image = UIImage(named: turkeyImages[indexPath.row])
    
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
