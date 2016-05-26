//
//  ViewController.swift
//  TestCenterLayout
//
//  Created by Jose Manuel Perez on 5/25/16.
//  Copyright © 2016 Jose Manuel Perez. All rights reserved.
//

import UIKit
import KTCenterFlowLayout
class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    var model : [String] = ["Tag 1","tag2","tag3",
                            "Tag largo","tag más largo","tag corto",
                            "tag medianamente largo","tag largo muy largo extremo","tag4",
                            "Tag 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "MyCollectionViewCell", bundle: nil)
        self.collectionView.registerNib(nib, forCellWithReuseIdentifier: "cell")
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        let layout = KTCenterFlowLayout()
        layout.minimumInteritemSpacing = 10.0
        layout.minimumLineSpacing = 10.0
        self.collectionView.collectionViewLayout = layout
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.model.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        print("entra a cellForItemAtIndexPath");
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as? MyCollectionViewCell
        cell!.label.text = self.model[indexPath.item]
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
//        cell.backgroundColor = UIColor.yellowColor() // make cell more visible in our example project
        
        return cell!
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return (self.model[indexPath.row] as NSString).sizeWithAttributes([NSFontAttributeName : UIFont.boldSystemFontOfSize(19)])
    }
    
    
    
    

}

