//
//  HomeScreen.swift
//  ArtShowcase
//
//  Created by Rhainan Domingos on 01/04/25.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var viewBackGround: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return view
    }()
    
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Vector")
        return imageView
    }()
    
    lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.clipsToBounds = true
        searchBar.layer.cornerRadius = 20
        searchBar.placeholder = "Pesquise pelo nome:"
        return searchBar
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        collectionView.register(NftFilterCollectionViewCell.self, forCellWithReuseIdentifier: NftFilterCollectionViewCell.identifier)
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 24)
        layout.scrollDirection = .horizontal
        collectionView.setCollectionViewLayout(layout, animated: false)
        return collectionView
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(NftTableViewCell.self, forCellReuseIdentifier: NftTableViewCell.identifier)
        tableView.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        tableView.separatorStyle = .none
        return tableView
    }()
    
    func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    func configCollectionViewProtocols(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
    }
    
    func configSearchBarDelegate(delegate: UISearchBarDelegate) {
        searchBar.delegate = delegate
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        addViews()
        configConstraints()
    }
    
    func addViews() {
        addSubview(viewBackGround)
        viewBackGround.addSubview(logoImageView)
        viewBackGround.addSubview(searchBar)
        viewBackGround.addSubview(collectionView)
        addSubview(tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            viewBackGround.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            viewBackGround.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewBackGround.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewBackGround.heightAnchor.constraint(equalToConstant: 160),
            
            logoImageView.topAnchor.constraint(equalTo: viewBackGround.topAnchor, constant: 5),
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            logoImageView.heightAnchor.constraint(equalToConstant: 40),
            logoImageView.widthAnchor.constraint(equalToConstant: 40),
            
            searchBar.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 10),
            searchBar.leadingAnchor.constraint(equalTo: logoImageView.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            searchBar.heightAnchor.constraint(equalToConstant: 46),
            
            collectionView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 15),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: viewBackGround.bottomAnchor),
            
            tableView.topAnchor.constraint(equalTo: viewBackGround.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
}
