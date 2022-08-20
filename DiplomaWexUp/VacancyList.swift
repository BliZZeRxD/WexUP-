//
//  VacancyList.swift
//  DiplomaWexUp
//
//  Created by Ayan on 8/11/22.
//

import UIKit

class VacancyList: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating{
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Вакансии"
//    }
    let idCell = "Vacancy"
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "VacanciesTableViewCell", bundle: nil), forCellReuseIdentifier: idCell)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        //tableView.isEditing = true
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Поиск"
        self.navigationItem.searchController = search
        definesPresentationContext = true
        
        let btnProfile = UIBarButtonItem(title: "Профиль", style: .plain, target: self, action: #selector(goToProfile))
        navigationItem.rightBarButtonItem = btnProfile
    }
    func updateSearchResults(for searchController: UISearchController) {
        print(searchController.searchBar.text as Any)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated) //вызывается всегда, когда мы переопределяем метод
        self.navigationController?.navigationItem.largeTitleDisplayMode = .always
    }
    @objc func goToProfile(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5 // Кол-во Ячеек
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idCell) as! VacanciesTableViewCell
        
        
        /*cell.titleLabel.text = "Junior web - разработчик"
        cell.suTitleLabel.text = "PrimeSource"
        cell.specialityLabel.text = "Разработка"
        cell.cityLabel.text = "Алматы"
        cell.scheduleLabel.text = "Полный день"*/
        switch indexPath.row{
        case 0:
            cell.titleLabel.text = "Junior web - разработчик"
            cell.suTitleLabel.text = "PrimeSource"
            cell.specialityLabel.text = "Разработка"
            cell.cityLabel.text = "Алматы"
            cell.scheduleLabel.text = "Полный день"
        case 1:
            cell.titleLabel.text = "Senior web - разработчик"
            cell.suTitleLabel.text = "Kolesa Group"
            cell.specialityLabel.text = "Разработка"
            cell.cityLabel.text = "Алматы"
            cell.scheduleLabel.text = "Полный день"
        case 2:
            cell.titleLabel.text = "Junior Python - разработчик"
            cell.suTitleLabel.text = "Khan Group"
            cell.specialityLabel.text = "Разработка"
            cell.cityLabel.text = "Алматы"
            cell.scheduleLabel.text = "Полный день"
        case 3:
            cell.titleLabel.text = "Senior SQL - разработчик"
            cell.suTitleLabel.text = "Sberbank"
            cell.specialityLabel.text = "Разработка"
            cell.cityLabel.text = "Алматы"
            cell.scheduleLabel.text = "Полный день"
        case 4:
            cell.titleLabel.text = "Middle web - разработчик"
            cell.suTitleLabel.text = "Tsarka"
            cell.specialityLabel.text = "Разработка"
            cell.cityLabel.text = "Алматы"
            cell.scheduleLabel.text = "Полный день"
        default:
            print("Nope")
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let swipeRead = UIContextualAction(style: .normal, title: "Не показывать") {(action,view, success) in print("Не показывать")
        }
        swipeRead.image = UIImage(named: "ClosedEye")
        swipeRead.backgroundColor = UIColor.systemRed
//        return UISwipeActionsConfiguration(actions: [swipeRead])
        let fullLeft = UISwipeActionsConfiguration(actions: [swipeRead])
        fullLeft.performsFirstActionWithFullSwipe = false
        return fullLeft
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let swipeMore = UIContextualAction(style: .normal, title: "Откликнуться") {(action,view, success) in print("Отклик")
        }
        swipeMore.image = UIImage(named: "Approve")
        swipeMore.backgroundColor = UIColor.systemGreen
        return UISwipeActionsConfiguration(actions: [swipeMore])
    }
    
}
