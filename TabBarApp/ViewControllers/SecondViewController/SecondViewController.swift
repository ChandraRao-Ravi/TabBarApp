//
//  SecondViewController.swift
//  TabBarApp
//
//  Created by Chandra Rao on 01/12/17.
//  Copyright © 2017 Chandra Rao. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet weak var collectionViewList: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("View Will Appear Called, Second VCLR")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("View Did Appear Called, Second VCLR")
    }

    // MARK: - UICollectionView Delegate/DataSource Methods

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let collectionCell : SimpleCollectionViewCell = collectionViewList.dequeueReusableCell(withReuseIdentifier: "SimpleCollectionViewCell", for: indexPath) as! SimpleCollectionViewCell
        
        if indexPath.row % 2 == 0 {
            collectionCell.contentView.backgroundColor = UIColor.red
        } else if indexPath.row % 3 == 0 {
            collectionCell.contentView.backgroundColor = UIColor.cyan
        } else {
            collectionCell.contentView.backgroundColor = UIColor.green
        }
        
        collectionCell.lblTitle.text = String(indexPath.row)
        
        return collectionCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        collectionView.deselectItem(at: indexPath, animated: true)
        showAlert(withTitleAndMessage: "Alert!", message: String(format: "%@ row is selected.",String(indexPath.row)) )
    }
    
    func showAlert(withTitleAndMessage title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

