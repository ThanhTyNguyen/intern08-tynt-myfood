//
//  WalkThroughViewController.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 4/28/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

struct WalkThroughScreen {
  var heading: String?
  var image: String?
  var content: String?
  init(heading: String?, image: String?, content: String?) {
    self.heading = heading ?? ""
    self.image = image ?? ""
    self.content = content ?? ""
  }
}

class WalkThroughViewController: UIViewController {
  @IBOutlet weak internal var walkThroughCollectionView: UICollectionView!
  @IBOutlet weak private var beginBtn: UIButton!
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
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.setNavigationBarHidden(true, animated: animated)
  }
  
  func setupView() {
    beginBtn.layer.cornerRadius = 4
    view.backgroundColor = UIColor.init(red: 250/255, green: 87/255, blue: 78/255, alpha: 1)
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
    walkThroughCollectionView.delegate = self
    walkThroughCollectionView.dataSource = self
    walkThroughCollectionView.register(UINib(nibName: "WalkThroughCell", bundle: nil), forCellWithReuseIdentifier: "WalkThroughCell")
  }
  
  @IBAction func beginBtnPressed(_ sender: UIButton) {
    navigationController?.pushViewController(LoginViewController(), animated: true)
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
    for indexPath in walkThroughCollectionView.indexPathsForVisibleItems {
      pageControl.currentPage = indexPath.item
    }
  }
}

extension WalkThroughViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: self.view.frame.width, height: self.walkThroughCollectionView.frame.height)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
  }
}
