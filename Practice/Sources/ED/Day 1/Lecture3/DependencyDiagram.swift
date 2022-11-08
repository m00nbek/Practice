//
//  DependencyDiagram.swift
//  Practice
//
//  Created by m00nbek Melikulov on 11/8/22.
//

import UIKit

// MARK: - Dependency Diagrams and Compositions

fileprivate protocol FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void)
}

fileprivate class FeedViewController: UIViewController {
    var loader: FeedLoader!
    
    convenience init(loader: FeedLoader) {
        self.init()
        self.loader = loader
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loader.loadFeed { loadedItems in
            // update UI
        }
    }
}

class RemoteFeedLoader: FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void) {
        // do something
    }
}

class LocalFeedLoader: FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void) {
        // do something
    }
}

struct Reachability {
    static let networkAvailable = false
}

class RemoteWithLocalFallbackFeedLoader: FeedLoader {
    let remote: RemoteFeedLoader
    let local: LocalFeedLoader
    
    init(remote: RemoteFeedLoader, local: LocalFeedLoader) {
        self.remote = remote
        self.local = local
    }
    
    func loadFeed(completion: @escaping ([String]) -> Void) {
        let load = Reachability.networkAvailable ? remote.loadFeed : local.loadFeed
        
        load(completion)
    }
}

fileprivate let vc = FeedViewController(loader: RemoteFeedLoader())
fileprivate let vc1 = FeedViewController(loader: LocalFeedLoader())
fileprivate let vc3 = FeedViewController(
    loader: RemoteWithLocalFallbackFeedLoader(remote: RemoteFeedLoader(), local: LocalFeedLoader()))
