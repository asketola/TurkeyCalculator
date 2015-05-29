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
  var flavorTexts = ["This is simplicity at its best. Rub onto the skin and in between the folds plain unsalted butter or a butter mix. Butter mixes could include herbs, lemon, wine, brown sugar, honey, etc.  You can also lift the skin and place the butter between the skin and the meat and press the skin back down before coating the outside with more butter. Butter.", "This method moistens the meat by injecting a fat directly into it. Similar to self-basting turkeys, except that you inject your own flavors (chemical free). You can buy poultry injectors at kitchen and home stores for $10-$15. Most people fill them with extra virgin olive oil, butter, or mixes of flavor infused oils, wines, or stock with fresh herbs. With one hand holding the bird, inject the filling into the meat and slowly pull out the needle. Repeat all around the turkey.", "This method ensures an even distribution of flavor and moisture throughout the meat. It's not complicated—you simply soak your bird for a few hours or overnight in brine (a solution of salt and water) then rinse before roasting. But if your turkey is large, it can be a bit unwieldy to keep it in the solution and safely chilled. Here's a brief rundown of the procedure: \n First off, never brine kosher meat, as it has already undergone salting. It's also not a good idea to brine a self-basted turkey, which also has salt added. \n It's best to stick to a specific brine recipe. Different varieties of salt have different volumes. If your recipe calls for 4 cups of kosher salt, don't substitute table salt; your brine will be twice as salty as needed and will yield an inedible bird. However, you can adjust the strength of the brine if you also change the duration of the brining. Many recipes call for two gallons of water to two pounds of salt for a quick (four- to six-hour) soak. If you prefer to brine overnight, decrease the amount of salt by half. You can also add sugar, spices, or aromatics for additional flavor. \n The safest way to brine is by submerging the turkey, breast side up, in the brining bath, covering it, and leaving it in the refrigerator—placing the turkey and brine in a large nonporous plastic bag makes this especially easy. If you don't have room in the fridge, you can also try brining in a cooler (as long as the turkey can fit, completely covered by the solution, with the lid on). Brining in the sink is another option, covering the basin with plastic wrap. If your turkey is floating and not fully submerged, place a large plate on top to weigh it down. \n If you can't brine in the refrigerator, you'll have to be vigilant about maintaining the temperature of the solution. Check it with a kitchen thermometer at regular intervals to be sure it doesn't go above 40°F. To keep the solution cold without diluting it, place ice cubes sealed in plastic bags into the brining bath, replacing them once they melt. Or, if you live in a cold climate, place your cooler outside. Check the temperature regularly to make sure it's not too warm or too cold. Temperatures under 26°F may start to freeze the turkey. \n After brining, rinse the turkey under cold water and pat dry. Discard the brine solution and plastic bags or wrapping after use. Scrub the sink, cooler, or basin with soap and water.", "This method doesn't add moisture, but it does add flavor and texture, and helps spice up the gravy made from the pan drippings. Make a paste using salt, plus herbs and spices such as pepper, rosemary, thyme, paprika, and crushed bay leaves. Just before roasting, rub a generous amount all over the turkey, including under the wings and thighs and on the bottom. Some of the seasoning will be absorbed during roasting, saturating the bird with flavor, but bits will stick to the skin to give a crackling texture. \n Mixing it up If you're tempted to try several of these techniques and can't decide which one will give you the best-tasting, silkiest-textured bird, feel free to mix and match. For example, you might want to massage herb butter under the skin of a brined bird, or maybe a dry herb and spice rub would taste great and lend a crackling skin to the bird you've just injected with garlic-infused olive oil. The recipes on page one illustrate different ways the various flavor- and moisture-enhancing techniques can be combined.", "Once you've flavored your bird, the next step is to arrange it in the pan. First, place a U- or V-shaped roasting rack in the pan. This promotes an even circulation of heat around the meat and prevents the turkey from getting soggy after sitting in the pan juices. See our Thanksgiving equipment guide for more information on roasting pans and racks.\n The next question: Which side goes up? When your turkey comes to the table, you'll want it breast-side up, with the traditional crispy golden-brown skin. But roasting it this way the entire time dries out the white breast meat. To prevent this, there are two alternatives: \n 1. Place the turkey on the rack with the breast side down. This protects the white meat from overcooking and allows it to absorb the juices as they run downward into the bottom of the pan. Then, for the last hour of roasting, carefully remove the pan from the oven and flip the bird over. Return it to the oven with the breast side up, allowing the breast skin to crisp up and get golden brown. \n 2. If you're worried about flipping a hot and heavy fowl (which can be near-impossible if your bird's more than 16 or 18 pounds), you can roast it breast-side-up the whole time if you take some precautions. Cover the breast with a double-thick layer of buttered aluminum foil or cheesecloth to help insulate it against the heat. Then uncover it an hour before it's done, allowing the skin to darken and crisp. If the skin still looks too pale but the meat is finished, feel free to broil the bird for a minute or two before pulling it out of the oven. (This works best if your broiler unit is attached to the top of your main oven and not in a separate drawer; in the latter case, the bird will only fit if you cut it up into smaller pieces.)", "If you plan on stuffing your bird, now's the time to do it. (See our section on stuffing for more information.) Whether your turkey's stuffed or unstuffed, the last step before roasting is tying. This promotes even cooking. Some turkeys are sold pre-tied, but it's easy to do it at home. Once the turkey is on the rack, use kitchen twine to loosely tie the legs together. Tuck the wings under the shoulders so no part of the turkey juts out and absorbs a greater amount of radiant heat."]
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
