//
//  HomeViewController.swift
//  TalukderR_FinalProject_CSC471
//
//  Created by Raquib Talukder on 3/15/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var shirtCollection: UICollectionView!
    @IBOutlet weak var tieCollection: UICollectionView!
    @IBOutlet weak var shoeCollection: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == shirtCollection {
            return GlobalShirtObjectList.shirtObjectList.count
        }
        if collectionView == tieCollection {
            return tieCollectionList.count
        }
        else if collectionView == shoeCollection {
            return shoeCollectionList.count
        }
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = shoeCollection.dequeueReusableCell(withReuseIdentifier: "shoeCell", for: indexPath) as! ShoeCollectionViewCell
            
        cell.myShoeImage.image = UIImage(named: shoeCollectionList[indexPath.row].filePath)
        
        if collectionView == shirtCollection {
            let cell = shirtCollection.dequeueReusableCell(withReuseIdentifier: "shirtCell", for: indexPath) as! ShirtCollectionViewCell

            cell.myShirtImage.image = GlobalShirtObjectList.shirtObjectList[indexPath.row].shirtPicture
            return cell
        }
        else if collectionView == tieCollection {
            let cell = tieCollection.dequeueReusableCell(withReuseIdentifier: "tieCell", for: indexPath) as! TieCollectionViewCell
            
            cell.myTieImage.image = UIImage(named: tieCollectionList[indexPath.row].filePath)
            return cell
        }
//        else if collectionView == shoeCollection {
//            let cell = shoeCollection.dequeueReusableCell(withReuseIdentifier: "shoeCell", for: indexPath) as! ShoeCollectionViewCell
//
//            cell.myShirtImage.image = UIImage(named: shoeCollectionList[indexPath.row].filePath)
//            return cell
//        }
        
        return cell
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let alertTitle = "Update Gesture Detected"
            let alertMessage = "OK to continue."
            
            let alertController =
                UIAlertController(title: alertTitle,
                                  message: alertMessage,
                                  preferredStyle: .alert)

            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            
            alertController.addAction(cancelAction)
            shirtCollection.reloadData()
            present(alertController,
                    animated: true,
                    completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemSize = UIScreen.main.bounds.width/3 - 2

        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: itemSize, height: itemSize)

        layout.minimumInteritemSpacing = 2
        layout.minimumLineSpacing = 2

        shirtCollection.collectionViewLayout = layout
        shoeCollection.collectionViewLayout = layout
        tieCollection.collectionViewLayout = layout

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
