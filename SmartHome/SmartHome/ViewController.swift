//
//  ViewController.swift
//  SmartHome
//
//  Created by Peter on 11/30/17.
//  Copyright © 2017 Peter. All rights reserved.
//
import SnapKit
import UIKit

class ViewController: UIViewController {
    let id = "Cell"
    let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = UIColor.red
        return cv
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        setupSubviews()
    }
    
    func setupSubviews(){
        collectionView.register(LoginCell.self, forCellWithReuseIdentifier: LoginCell.reuseidentifire)
        view.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.frame = view.bounds
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: id)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ViewController :UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // if item equal 4 then use this cell else use another cell
        if indexPath.item == 3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LoginCell.reuseidentifire, for: indexPath)
            return cell
        } else {
            //another cell
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: id, for: indexPath)
            cell.backgroundColor = UIColor.blue
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //const "some type" have CGFloat type
        //        let someType = self.collectionView.bounds.width
        return self.collectionView.frame.size
    }
}


