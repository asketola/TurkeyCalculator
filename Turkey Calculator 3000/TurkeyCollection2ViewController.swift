//
//  TurkeyCollection2ViewController.swift
//  Turkey Calculator 3000
//
//  Created by Annemarie Ketola on 5/20/15.
//  Copyright (c) 2015 UpEarly. All rights reserved.
//

import UIKit

class TurkeyCollection2ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
  var turkeyLabels = ["Free-range", "Organic", "Natural", "Kosher", "Self-basted", "Heritage"]
  var turkeyImages = ["freerange.jpg", "organic.JPG", "natural.jpg", "kosherturk.jpg", "selfbasting.jpg", "heritagebird.jpg"]
//    var turkeyImages = ["http://gastronomyatbu.files.wordpress.com/2012/08/range-turkeys1.jpg", "http://1.bp.blogspot.com/-tHU9dPlZsAE/VCwhQka_CmI/AAAAAAAAAdY/C5GsaZ-qiuY/s1600/Slate%2BTom%2BTurkey.JPG", "http://news.sagacom.com/wp-content/blogs.dir/3/files/2013/11/popcorn-620x400.jpg", "http://mockingbirdfarmma.files.wordpress.com/2011/07/p1010769.jpg", "http://wfas-maxcdn.woodstockfarmani.netdna-cdn.com/wp-content/uploads/Beatrice1-500x375.jpg", "http://newfarm.rodaleinstitute.org/features/1103/images/narragansett525.jpg"]
    var turkeyTexts = ["1skdjhfslkfhsfh", "2lsdjflsjflsfjsl", "3lskjlsdkfjdslk", "4lskdjfdlksfjsdl", "5lskdfjldskfjdsklj", "6ksjdfkjdsfhdskjfhd"]
    var forDetailedInfoLabel = String()
    var forDetailedInfoImage = UIImage()
    var forDetailedInfoText = String()

    override func viewDidLoad() {
        super.viewDidLoad()
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
//        layout.itemSize = CGSize(width: 90, height: 90)
//        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
//        collectionView!.dataSource = self
//        collectionView!.delegate = self
//        collectionView!.registerClass(CollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
//        collectionView!.backgroundColor = UIColor.whiteColor()
//        self.view.addSubview(collectionView!)

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
  
  func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
    println("Cell: \(indexPath.row) selected")
    forDetailedInfoLabel = turkeyLabels[indexPath.row]
    forDetailedInfoImage = UIImage(named: turkeyImages[indexPath.row])!
    forDetailedInfoText = turkeyTexts[indexPath.row]
    performSegueWithIdentifier("SHOW_TURKEY_TYPE", sender: self)

  }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 30
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 30
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_TURKEY_TYPE" {
            var destinationVC = segue.destinationViewController as! DetailedInfoViewController
            destinationVC.forDetailedInfoLabel = forDetailedInfoLabel
            destinationVC.forDetailedInfoImage = forDetailedInfoImage
            destinationVC.forDetailedInfoText = forDetailedInfoText
        }
    }

}
