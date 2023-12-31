//
//  FriendsViewController.swift
//  HW3_swift
//
//  Created by Eugene Zvyagin on 05.07.2023.
//

import UIKit

final class FriendsViewController: UITableViewController {

    var token: String!
    var userID: String!
    
    private let networkManager = NetworkManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
    
    private func fetchData() {
        let friendURL = URL(string: "https://api.vk.com/method/friends.get?user_ids=\(userID ?? "")&fields=bdays,city,photo_100&access_token=\(token ?? "")&v=5.131")!
        
        networkManager.fetch(FriendResponse.self, from: friendURL) { result in
            switch result {
            case .success(let response):
                print(response.response.items)
            case .failure(let error):
                print(error)
            }
        }
    }

}
