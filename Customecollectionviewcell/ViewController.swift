//
//  ViewController.swift
//  Customecollectionviewcell
//
//  Created by Naveen Singh on 07/02/24.
//

import UIKit

class ViewController: UIViewController  {
    let layout = UICollectionViewFlowLayout()
    
    @IBOutlet weak var collectionview: UICollectionView!
    var arrdata = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
     
    } }
extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource   {
    

       
 

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrdata.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.imageview.image = UIImage(named: arrdata[indexPath.row])
       
        return cell
    }
  
 
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           let collectionViewWidth = collectionView.bounds.width
           let spacing: CGFloat = 10
         let numberOfColumns: CGFloat = 2 // Adjust the number of columns as needed
           let totalSpacing = (numberOfColumns - 1) * spacing
           let itemWidth = (collectionViewWidth - totalSpacing) / numberOfColumns
           return CGSize(width: itemWidth, height: itemWidth)
       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 5
    }
    
}
