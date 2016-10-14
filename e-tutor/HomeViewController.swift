//
//  HomeViewController.swift
//  e-tutor
//
//  Created by Deepthi Kaligi on 08/10/2016.
//  Copyright © 2016 Banana Apps. All rights reserved.
//

import UIKit



class HomeViewController: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource{


    @IBOutlet weak var imageViewprofilebg : UIImageView!
    @IBOutlet weak var imageViewprofile : UIImageView!
    @IBOutlet weak var imageViewMaths : UIImageView!
    @IBOutlet weak var imageViewPhysics : UIImageView!
    @IBOutlet weak var imageViewChemistry : UIImageView!
    @IBOutlet weak var profileConstrint : NSLayoutConstraint!
    @IBOutlet weak var collectionView : UICollectionView!


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
        let screenWidth = self.view.frame.size.width
        let screenHeight = self.view.frame.size.height
        
        let imageWidth = (screenWidth-40)/3
        let imageHeight:CGFloat = 115
        
        if screenWidth == 320 {
//            profileConstrint.constant = 10
//            imageViewMaths.frame.size = CGSize(width: imageWidth, height: imageHeight)
//            imageViewPhysics.frame.size = CGSize(width: imageWidth, height: imageHeight)
//            imageViewChemistry.frame.size = CGSize(width: imageWidth, height: imageHeight)
//            imageViewMaths.image = UIImage(named: "maths.png")
//            imageViewPhysics.image = UIImage(named : "physics.png")
//            imageViewChemistry.image = UIImage(named:"chemistry.png")
//            
            
        }
        
        
        
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        navigationController?.pushViewController(sb.instantiateViewController(withIdentifier: "subjectDetailVC"), animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
