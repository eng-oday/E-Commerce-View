//
//  ViewController.swift
//  BagScreen
//
//  Created by Oday Dieg on 12/04/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TittleLabel: UILabel!
    
    @IBOutlet weak var CheckOutBtn: UIButton!
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
    @IBOutlet weak var subTotalLabel: UILabel!
    @IBOutlet weak var chipingChargeLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var subTotalPriceLabel: UILabel!
    @IBOutlet weak var chipingchargePriceLabel: UILabel!
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    
    @IBOutlet weak var bagItemTableView: UITableView!
    

    var cellProducts:[CellModel] = [
        CellModel(brandName: "Jordan Sport Dri-FIT", productName: "Men's Diamond Shorts", Size: "Size XL", productImage: UIImage(named: "jordan")),
        CellModel(brandName: "American Eagle", productName: "American Eagle AE Kick Bootcut Jean", Size: "Size M", productImage: UIImage(named: "pants"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewElement()
        configureTableView()
    }
    
    
    private func setupViewElement(){
        
        CheckOutBtn.layer.cornerRadius      = 20
        CheckOutBtn.layer.masksToBounds     = true
        CheckOutBtn.clipsToBounds           = true
    }
    
    private func configureTableView(){
        
        bagItemTableView.delegate        = self
        bagItemTableView.dataSource      = self
        bagItemTableView.register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
        bagItemTableView.reloadData()
        
        
    }
    
    

    @IBAction func BackButton(_ sender: UIButton) {
    }
    
    @IBAction func CheckoutBtnPressed(_ sender: UIButton) {
    }
}


extension ViewController: UITableViewDelegate,UITableViewDataSource
{
    
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = bagItemTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? bagItemTableViewCell else{
            return UITableViewCell()
        }
        cell.press_gift = {
            cell.UIviewOFGift.isHidden = false
            self.bagItemTableView.reloadData()
            return
        }
        
        cell.hidepress_gift = {
            cell.UIviewOFGift.isHidden = true
            self.bagItemTableView.reloadData()
            return
        }
     
        cell.selectionStyle = .none
        let product = cellProducts[indexPath.row]
        cell.productName.text       = product.productName
        cell.SizeLabel.text         = product.Size
        cell.brandName.text         = product.brandName
        cell.productImage.image     = product.productImage
        
        return cell
        
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        print(indexPath.row)
    }
  
}

