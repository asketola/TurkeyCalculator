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
  var turkeyTexts = ["The free-range label identifies a bird that is not raised in a cage and is free to graze on any grasses or grains it can find in its pen, which is generally considered a more humane and healthy poultry farming process. The Department of Agriculture's (U.S.D.A.) food safety agency inspects all poultry processors that carry the term 'free-range' to ensure that their birds really are allowed access to the outdoors. You can find free-range turkeys at larger supermarkets, specialty markets, and at your local farmer's market, where it's best to pre-order to ensure that you'll get one during the busy holiday season.", "The organic label is regulated by the U.S.D.A., which requires that all turkeys sold as organic be raised free-range, without the use of antibiotics, and fed an organic and vegetarian diet of grains and grasses that have not been treated with pesticides. Organic birds are available frozen in better supermarkets and fresh or frozen from many online purveyors.", "Unlike the U.S.D.A. 'organic' designation, there's no government guarantee to back up the 'natural' label. Natural turkeys are generally cheaper than organic, and are often of comparable quality, but not all natural turkeys are created equal. Read the label to find out if the bird you're considering is antibiotic-free, free-range, and/or raised on a vegetarian diet. Many products that announce themselves as 'natural' also say they're 'hormone-free,' but this has less oomph when you consider that ALL poultry products sold with the U.S.D.A. seal (including turkey, chicken, and eggs) are hormone-free, whether advertised or not. (The U.S.D.A. has not approved the use of hormones in poultry production.) The increasing popularity and marketability of natural turkeys means they're available everywhere from the supermarket to high-end retailers to the local butcher shop.", "Turkeys with the 'kosher' label are farmed according to Jewish dietary customs, with strict rabbinical supervision. The bird has been fed a vegetarian diet free from antibiotics, and has undergone a salting process after slaughter that gives the meat a moist and juicy texture when roasted—it's akin to brining but without the fuss. (Because of this, you don't want to brine a kosher bird—it's unnecessary and will make the meat far too salty.) The drawback of kosher turkeys is that the koshering process makes them harder to pluck, often resulting in quills remaining in the skin. But if you want juicy, flavorful meat, don't want to brine, and don't mind plucking a few quills (see the section below on feathers for more on how to do this), they can be a good option. Kosher turkeys are available fresh at most butcher shops (pre-ordering is recommended) and are sold frozen at some supermarkets.", "This category includes many of the standard turkeys you'll find in supermarkets. In an effort to retain the turkey's flavor throughout extended freezing, many companies inject the meat with a solution of salt, butter or oil, and sometimes herbs, spices, and preservatives. Self-basting turkeys require less basting during roasting, but they're definitely not for purists: Injecting meat so far ahead of cooking can give it a mushy texture and insipid flavor. If you want to steer clear, note that self-basted turkeys are often not labeled as such, so be sure to check the ingredients list: If you see anything other than 'turkey,' chances are it was self-basted. As with kosher birds, self-basted turkeys should not be brined, as they already have salt added.", "Heritage birds are farmed using techniques that mimic pre-1920's-style poultry production. From the 1920's through the 1960's, turkeys were selectively bred to create a plumper, broader breast. By the 1960's the only type of turkey available was the suggestively named Broad-Breasted White, also less appetizingly known as the standard supermarket turkey. This is a bird so busty it's unable to stand up without tipping over—a sad state of affairs if your family consists of dark-meat lovers. Broad Breasted Whites are also very susceptible to disease, a condition not helped by the modern practice of keeping poultry caged in close quarters. This, in turn, led to the rise in the use of antibiotics to prevent illnesses from spreading and infecting a whole flock. \n Heritage turkeys have a longer, slower rate of growth. They typically take 26 to 28 weeks to reach a weight suitable for market, while Broad Breasted Whites are ready to sell after about 18 weeks. This additional maturing time gives heritage birds a richer flavor. Heritage breeds include: Narragansett, Jersey Bluff, Standard Bronze, Bourbon Red, Slate, Black Squash, and White Holland. They're available by special order only, and are usually the most expensive turkey in the flock."]
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
