//
//  LeftMenuViewController.swift
//  e-tutor
//
//  Created by Deepthi Kaligi on 08/10/2016.
//  Copyright © 2016 Banana Apps. All rights reserved.
//

import UIKit

class LeftMenuViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView : UICollectionView!

    var images  = ["profile","grade","","password","faqs","","quiz","school","","reminder","tnc","","aboutus","logout",""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(30, 10, 30, 10);
        layout.itemSize = CGSize(width:(self.view.frame.size.width-20)/3, height:(self.view.frame.size.height-60)/5)
        layout.minimumLineSpacing = 1;
        layout.minimumInteritemSpacing = 2;
        layout.scrollDirection = .vertical;
        self.collectionView.collectionViewLayout = layout;

        self.collectionView.delegate = self;
        self.collectionView.dataSource = self;
        self.collectionView.isOpaque = false;
        self.collectionView.backgroundColor = UIColor.clear
        self.collectionView.backgroundView = nil;
        self.collectionView.bounces = false;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        //   UIImageView *imgVw = [[UIImageView alloc]initWithFrame:cell.frame];
        //   imgVw.image = [UIImage imageNamed:images[0]];
        //   [imgVw sizeThatFits:cell.frame.size];
        //[[UIImageView alloc]initWithImage:[UIImage imageNamed:images[indexPath.row]]];
        //   UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(30, 30, 40, 30)];
        //   lbl.text = @"heloo";
        //   lbl.textColor = [UIColor blackColor];
        //   [cell addSubview:imgVw];
        //   cell.hidden = NO;
        // Configure the cell
        print("collecetion view cell :\(cell)")
        let imgVw = cell.viewWithTag(2) as! UIImageView
        imgVw.image = UIImage(named: images[indexPath.row])
        imgVw.sizeThatFits(cell.frame.size)
        cell.layoutIfNeeded()
        let label = cell.viewWithTag(3) as! UILabel
        label.text = images[indexPath.row]
        label.textAlignment = NSTextAlignment.center
    //    [imgVw sizeThatFits:cell.frame.size];
    //    [cell layoutIfNeeded];
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
//    -(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
//    return  CGSizeMake((self.view.frame.size.width-20)/3, (self.view.frame.size.height-60)/5);
//    }
//    
//    -(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
//    return UIEdgeInsetsMake(20, 5, 0, 5);
//    }
//    
//    -(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
//    return  1;
//    }
//    -(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
//    return 2;
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  CGSize(width:(self.view.frame.size.width-20)/3, height:(self.view.frame.size.height-60)/5);
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(30, 5, 0, 5);
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    
}
