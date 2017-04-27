//
//  WalkThroughPageViewController.swift
//  MyFood
//
//  Created by Nguyen Thanh Ty on 4/27/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class WalkThroughPageViewController: UIPageViewController {
  fileprivate var pageHeadings: [String] = ["Đơn giản hơn", "Vị trí", "Bạn bè"]
  fileprivate var pageImages: [String] = ["LauchScreen1", "LauchScreen1", "LauchScreen1"]
  fileprivate var pageContents: [String] = ["Lưu trữ và quản lý \n các địa điểm ăn uống yêu thích của bạn", "Tìm kiếm và định vị quán ăn \n chưa bao giờ dễ dàng hơn", "Kết nối bạn bè để chia sẻ \n và cập nhật các địa điểm phù hợp"]
  override func viewDidLoad() {
    super.viewDidLoad()
    dataSource = self
    createWalkthroughFirstScreen()
  }
  
  override init(transitionStyle style: UIPageViewControllerTransitionStyle, navigationOrientation: UIPageViewControllerNavigationOrientation, options: [String : Any]? = nil) {
    super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func createWalkthroughFirstScreen() {
    if let startingViewController = contentViewController(at: 0) {
      setViewControllers([startingViewController], direction: .forward, animated: true, completion: nil)
    }
  }
  
  func contentViewController(at index: Int) -> WalkthroughContentViewController? {
    if index < 0 || index >= pageHeadings.count {
      return nil
    }
    // Create a new view controller and pass suitable data.
    guard let pageContentViewController = WalkthroughContentViewController(nibName: "WalkthroughContentViewController", bundle: nil) as? WalkthroughContentViewController else { return nil }
    pageContentViewController.imageFile = pageImages[index]
    pageContentViewController.heading = pageHeadings[index]
    pageContentViewController.content = pageContents[index]
    pageContentViewController.index = index
    return pageContentViewController
  }
}

extension WalkThroughPageViewController: UIPageViewControllerDataSource {
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
    guard let viewController = viewController as? WalkthroughContentViewController else { return nil }
    var index = viewController.index
    index -= 1
    return contentViewController(at: index)
  }
  
  func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    guard let viewController = viewController as? WalkthroughContentViewController else { return nil }
    var index = viewController.index
    index += 1
    return contentViewController(at: index)
  }
}
