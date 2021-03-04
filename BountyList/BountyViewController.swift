//
//  BountyViewController.swift
//  BountyList
//
//  Created by Woochan Park on 2021/03/04.
//

import UIKit

class BountyViewController: UIViewController {
  
  // 기술부채가 존재
  // 각각의 배열이 더블링 되어 있지 않기 때문에 추가, 삭제, 정렬 작업 시 따로 관리해줘야함
  let nameList = ["brook", "chopper", "franky", "luffy", "nami", "robin", "sanji", "zoro"]
  let bountyList = [33000000, 50, 44000000, 300000000, 16000000, 80000000, 77000000, 120000000]
  
  override func viewDidLoad() {
    super.viewDidLoad()
      // Do any additional setup after loading the view.
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "showDetail" {
      let vc = segue.destination as? DetailViewController
      
      if let index = sender as? Int {
        vc?.name = nameList[index]
        vc?.bounty = bountyList[index]
      }
    }
  }
}


// MARK: UITableViewDataSource
extension BountyViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return nameList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
      return UITableViewCell()
    }
    
    cell.nameLable.text = nameList[indexPath.row]
    cell.bountyLable.text = String(bountyList[indexPath.row])
    cell.imgView.image = UIImage(named: nameList[indexPath.row])
    
    return cell
  }
}

// Mark: UITableViewDelegate
extension BountyViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("---> \(indexPath.row)")
    performSegue(withIdentifier: "showDetail", sender:  indexPath.row)
  }
}

class ListCell: UITableViewCell {
  @IBOutlet weak var imgView: UIImageView!
  @IBOutlet weak var nameLable: UILabel!
  @IBOutlet weak var bountyLable: UILabel!
}
