//
//  WalkThroughViewController.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 4/28/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

struct WalkThroughScreen {
  var heading: String
  var image: String
  var content: String
}

class WalkThroughViewController: UIViewController {
  @IBOutlet weak internal var collectionView: UICollectionView!
  @IBOutlet weak private var beginButton: UIButton!
  @IBOutlet weak fileprivate var pageControl: UIPageControl!
  
  fileprivate var walkThroughScreens: [WalkThroughScreen] = []
  fileprivate var headings: [String] = ["Đơn giản hơn", "Vị trí", "Bạn bè"]
  fileprivate var images: [String] = ["LauchScreen1", "LauchScreen1", "LauchScreen1"]
  fileprivate var contents: [String] = [
    "Lưu trữ và quản lý \n các địa điểm ăn uống yêu thích của bạn",
    "Tìm kiếm và định vị quán ăn \n chưa bao giờ dễ dàng hơn",
    "Kết nối bạn bè để chia sẻ \n và cập nhật các địa điểm phù hợp"
  ]
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    setupCollectionView()
    walkThroughScreens = createData(headings: headings, images: images, contents: contents)
  }
  
  func setupView() {
    navigationController?.isNavigationBarHidden = true
    beginButton.layer.cornerRadius = 4
    view.backgroundColor = Color.main
  }
  
  func createData(headings: [String], images: [String], contents: [String]) -> [WalkThroughScreen] {
    var walkThroughScreens: [WalkThroughScreen] = []
    for i in 0..<headings.count {
      let item = WalkThroughScreen(heading: headings[i], image: images[i], content: contents[i])
      walkThroughScreens.append(item)
    }
    return walkThroughScreens
  }
  
  func setupCollectionView() {
    collectionView.delegate = self
    collectionView.dataSource = self
    collectionView.register(UINib(nibName: "WalkThroughCell", bundle: nil), forCellWithReuseIdentifier: "WalkThroughCell")
  }
  
  @IBAction func beginButtonPressed(_ sender: UIButton) {
    guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
    let loginViewController = LoginViewController()
    appDelegate.window?.rootViewController = loginViewController
  }
  
}

extension WalkThroughViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 3
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WalkThroughCell", for: indexPath) as? WalkThroughCell else { return WalkThroughCell() }
    cell.configUI(walkThroughScreen: walkThroughScreens[indexPath.item])
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    changeCurrentPage()
  }
  
  func changeCurrentPage() {
    for indexPath in collectionView.indexPathsForVisibleItems {
      pageControl.currentPage = indexPath.item
    }
  }
}

extension WalkThroughViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: self.view.frame.width, height: self.collectionView.frame.height)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return .zero
  }
}
