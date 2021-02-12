//
//  NetworkManager.swift
//  GithubFollowers
//
//  Created by Calvin Tang on 2/12/21.
//

import Foundation

// Singleton Network Manager
class NetworkManager {
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"
    
    
    private init() {}
    
    func getFollowers(for username: String, page: Int, completed: @escaping (Result<[Follower], GFError>) -> Void) {
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(.failure(.invalidUsername))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let _ = error {
                // if error exists
                // error usually means an error with the service or internet
                // 404 or 500 or errors with the response are in the response
                completed(.failure(.unableToComplete))
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(.success(followers))
            } catch {
                completed(.failure(.invalidData))
                return
            }
            
        }
        
        task.resume()
    }
    
}
