//
//  bagItemTableViewCell.swift
//  BagScreen
//
//  Created by Oday Dieg on 12/04/2022.
//

import UIKit


 let identifier  = "bagItemTableViewCell"

class bagItemTableViewCell: UITableViewCell {

    var press_gift : (()->())?
    var hidepress_gift : (()->())?
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var brandName: UILabel!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var SizeLabel: UILabel!
    @IBOutlet weak var giftImage: UIImageView!
    
    @IBOutlet weak var UIviewOFGift: UIView!
    @IBOutlet weak var giftnameLabel: UILabel!
    
    @IBOutlet weak var bgView: UIView!
    
    @IBAction func Stepper(_ sender: UIStepper) {
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bgView.layer.cornerRadius        = 22
        bgView.layer.masksToBounds       = true
        bgView.clipsToBounds             = true
        UIviewOFGift.isHidden = true
        

    }

    @IBAction func editButtonPressed(_ sender: Any) {
    }
    
    @IBAction func deleteGiftBtnPressed(_ sender: Any) {
     hidepress_gift?()
        
    }
    @IBAction func SendGiftButtonPressed(_ sender: Any) {
           press_gift?()

    }

    @IBAction func moveToWishlistBtnPressed(_ sender: Any) {
    }
    
    @IBAction func DeleteButtonPressed(_ sender: Any) {
    }
}
