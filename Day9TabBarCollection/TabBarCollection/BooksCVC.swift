//
//  BooksCVC.swift
//  TabBarCollection
//
//  Created by Pulkit Kumar on 2018-03-02.
//

import UIKit

class BooksCVC: UICollectionViewController {
    
    let booksTitles = ["The Alchemist","The Story of An Hour","Breaking Down","A Jury of her Peers","The Last Leaf","The Day I Stopped Drinking Milk","O Monte Cinco","Red Queen","The Sky Is Falling","The Necklace","The Wise & Otherwise"]
    
    let booksImages = ["Alchemist.jpeg","AnHour.jpeg","BreakingDawn.jpeg","Jury.jpeg","LastLeaf.jpeg","Milk.jpeg","Mountain.jpeg","RedQueen.jpeg","Sky.jpeg","TheNecklace.jpeg","WiseOtherwise.jpeg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "myCell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return booksTitles.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! BookCell
        
        cell.lblBookTitle.text = booksTitles[indexPath.row]
        cell.imageBook.image = UIImage(named: booksImages[indexPath.row])
    
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("book : \(booksTitles[indexPath.row])")
    }
}
