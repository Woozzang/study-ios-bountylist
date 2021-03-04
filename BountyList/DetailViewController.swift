//
//  DetailViewController.swift
//  BountyList
//
//  Created by Woochan Park on 2021/03/04.
//

import UIKit

class DetailViewController: UIViewController {
  
  //MARK: IBOutlets
  @IBOutlet weak var imgView: UIImageView!
  @IBOutlet weak var nameLable: UILabel!
  @IBOutlet weak var bountyLable: UILabel!
  
  var name: String?
  var bounty: Int?
  
  override func viewDidLoad() {
      super.viewDidLoad()
      updateUI()
        // Do any additional setup after loading the view.
    }
  
  func updateUI() {
    if let name = self.name, let bounty = self.bounty {
      imgView.image = UIImage(named: "\(name)")
      nameLable.text = name
      bountyLable.text = String(bounty)
    }
  }
  
  //MARK: IBActions
  @IBAction func close(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
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
