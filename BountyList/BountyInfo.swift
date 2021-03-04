//
//  BountyInfo.swift
//  BountyList
//
//  Created by Woochan Park on 2021/03/04.
//

import UIKit

// Model
struct BountyInfo {
  
  static let bountyInfoList: [BountyInfo] = [
    BountyInfo(name: "brook", bounty: 33000000),
    BountyInfo(name: "chopper", bounty: 50),
    BountyInfo(name: "franky", bounty: 44000000),
    BountyInfo(name: "luffy", bounty: 300000000),
    BountyInfo(name: "nami", bounty: 16000000),
    BountyInfo(name: "robin", bounty: 80000000),
    BountyInfo(name: "sanji", bounty: 77000000),
    BountyInfo(name: "zoro", bounty: 120000000)
  ]
  
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
