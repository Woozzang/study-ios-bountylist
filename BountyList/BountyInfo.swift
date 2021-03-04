//
//  BountyInfo.swift
//  BountyList
//
//  Created by Woochan Park on 2021/03/04.
//

import UIKit

// Model
struct BountyInfo {
  
  let name: String
  let bounty: Int
  var image: UIImage? {
    return UIImage(named: "\(name)")
  }
  
  init(name: String, bounty: Int) {
    self.name = name
    self.bounty = bounty
  }
}
