//
//  ViewController.swift
//  SwiftUI Helper
//
//  Created by Kristhian De Oliveira on 5/23/20.
//  Copyright © 2020 Kristhian De Oliveira. All rights reserved.
//

import UIKit
import MobileCoreServices

class ControlViewsCell: UITableViewCell {
    @IBOutlet weak var Label: UILabel!
}
class LogicCell: UITableViewCell {
    @IBOutlet weak var Label: UILabel!
}
class PaintsCell: UITableViewCell {
    @IBOutlet weak var Label: UILabel!
}
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    @IBOutlet weak var ControlViewsTableView: UITableView!
    @IBOutlet weak var LogicTableView: UITableView!
    @IBOutlet weak var PaintsTableView: UITableView!
    @IBOutlet weak var HelpMenu: UIButton!
    @IBOutlet weak var Search: UISearchBar!
    let strings = Strings()
    var ControlViewsresults:[String] = []
    var Logicresults:[String] = []
    var Paintsresults:[String] = []
    var isFiltered:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
         ControlViewsresults = Strings().ControlViews
         Logicresults = Strings().Logic
         Paintsresults = Strings().Paints
        ControlViewsTableView.delegate = self
        ControlViewsTableView.dataSource = self
        LogicTableView.delegate = self
        LogicTableView.dataSource = self
        PaintsTableView.delegate = self
        PaintsTableView.dataSource = self
        HelpMenuDesign()
        setupSearchBar()
    }
    func HelpMenuDesign() {
        HelpMenu.setTitleColor(.green, for: .normal)
        HelpMenu.layer.borderColor = UIColor.green.cgColor
        HelpMenu.layer.borderWidth = 1
        HelpMenu.layer.cornerRadius = 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == ControlViewsTableView {
            if isFiltered == true {
                return ControlViewsresults.count
            } else {
                return strings.ControlViews.count
            }
        }
        if tableView == LogicTableView {
            if isFiltered == true {
                return Logicresults.count
            } else {
                return strings.Logic.count
            }
        }
        if tableView == PaintsTableView {
            if isFiltered == true {
                return Paintsresults.count
            } else {
                return strings.Paints.count
            }
        }
        return 0
    }
    func selectedCellBackground(Color:UIColor) -> UIView{
        let v = UIView()
        v.backgroundColor = Color
        return v
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == ControlViewsTableView {
            let cell = (ControlViewsTableView.dequeueReusableCell(withIdentifier: "ControlView") as? ControlViewsCell)!
            if isFiltered == true {
                cell.Label.text = ControlViewsresults[indexPath.row]
            } else {
                cell.Label.text = strings.ControlViews[indexPath.row]
            }
            cell.backgroundColor = .red
            cell.layer.borderWidth = 5
            cell.selectedBackgroundView = selectedCellBackground(Color: .green)
            return cell
        }
        if tableView == LogicTableView {
            let cell = (LogicTableView.dequeueReusableCell(withIdentifier: "Logic") as? LogicCell)!
            if isFiltered == true {
                cell.Label.text = Logicresults[indexPath.row]
            } else {
                cell.Label.text = strings.Logic[indexPath.row]
            }
            cell.backgroundColor = .blue
            cell.layer.borderWidth = 5
            cell.selectedBackgroundView = selectedCellBackground(Color: .green)
            return cell
        }
        if tableView == PaintsTableView {
            let cell = (PaintsTableView.dequeueReusableCell(withIdentifier: "Paints") as? PaintsCell)!
            if isFiltered == true {
                cell.Label.text = Paintsresults[indexPath.row]
            } else {
                cell.Label.text = strings.Paints[indexPath.row]
            }
            cell.backgroundColor = .orange
            cell.layer.borderWidth = 5
            cell.selectedBackgroundView = selectedCellBackground(Color: .green)
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pasteboard = UIPasteboard.general
        if tableView == ControlViewsTableView {
            switch indexPath.row {
            case 0:
                pasteboard.string = self.strings.HStack()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 1:
                pasteboard.string = self.strings.VStack()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 2:
                pasteboard.string = self.strings.Text()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 3:
                pasteboard.string = self.strings.Button()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 4:
                pasteboard.string = self.strings.Image()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 5:
                pasteboard.string = self.strings.TextField()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 6:
                pasteboard.string = self.strings.NavigationLink()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 7:
                pasteboard.string = self.strings.List()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 8:
                pasteboard.string = self.strings.HorizontalSplitView()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 9:
                pasteboard.string = self.strings.Form()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 10:
                pasteboard.string = self.strings.MenuButton()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 11:
                pasteboard.string = self.strings.PasteButton()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 12:
                pasteboard.string = self.strings.GroupBox()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 13:
                pasteboard.string = self.strings.NavigationView()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 14:
                pasteboard.string = self.strings.TabView()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 15:
                pasteboard.string = self.strings.Slider()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 16:
                pasteboard.string = self.strings.Stepper()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 17:
                pasteboard.string = self.strings.Spacer()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 18:
                pasteboard.string = self.strings.RectangleView()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 19:
                pasteboard.string = self.strings.ScrollView()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 20:
                pasteboard.string = self.strings.DatePicker()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 21:
                pasteboard.string = self.strings.PlaygroundsPreview()
            Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            default:
                pasteboard.string = ""
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            }
        }
        if tableView == LogicTableView {
            switch indexPath.row {
            case 0:
                pasteboard.string = self.strings.SwiftUIView()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 1:
                pasteboard.string = self.strings.IFStatement()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 2:
                pasteboard.string = self.strings.ForLoop()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 3:
                pasteboard.string = self.strings.Function()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 4:
                pasteboard.string = self.strings.Variable()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 5:
            pasteboard.string = self.strings.ConstantVariable()
            Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 6:
            pasteboard.string = self.strings.StateVariable()
            Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 7:
            pasteboard.string = self.strings.EnvironmentVariable()
            Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 8:
            pasteboard.string = self.strings._Class()
            Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            default:
                pasteboard.string = ""
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            }
        }
        if tableView == PaintsTableView {
            switch indexPath.row {
            case 0:
                pasteboard.string = self.strings.AngularGradient()
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 1:
            pasteboard.string = self.strings.LinearGradient()
            Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            case 2:
            pasteboard.string = self.strings.RadialGradient()
            Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            default:
                pasteboard.string = ""
                Toast(Title: "", Text: "Code coppied to clipboard", delay: 2)
            }
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        if let index = self.ControlViewsTableView.indexPathForSelectedRow{
            self.ControlViewsTableView.deselectRow(at: index, animated: true)
        }
        if let index = self.LogicTableView.indexPathForSelectedRow{
            self.LogicTableView.deselectRow(at: index, animated: true)
        }
        if let index = self.PaintsTableView.indexPathForSelectedRow{
            self.PaintsTableView.deselectRow(at: index, animated: true)
        }
    }

    func Toast(Title:String ,Text:String, delay:Int) -> Void {
        let alert = UIAlertController(title: Title, message: Text, preferredStyle: .alert)
        self.present(alert, animated: true)
        let deadlineTime = DispatchTime.now() + .seconds(delay)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime, execute: {
            alert.dismiss(animated: true, completion: self.ToastComplete)
        })
    }
   @objc func ToastComplete() {
        if let index = self.ControlViewsTableView.indexPathForSelectedRow{
            self.ControlViewsTableView.deselectRow(at: index, animated: true)
        }
        if let index = self.LogicTableView.indexPathForSelectedRow{
            self.LogicTableView.deselectRow(at: index, animated: true)
        }
        if let index = self.PaintsTableView.indexPathForSelectedRow{
            self.PaintsTableView.deselectRow(at: index, animated: true)
        }
    }
    //MARK - Search Bar
    func setupSearchBar() {
        Search.delegate = self
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty == true {
            print("\n Searchbar is empty \n")
            isFiltered = false
            ControlViewsTableView.reloadData()
            LogicTableView.reloadData()
            PaintsTableView.reloadData()
        } else {
            isFiltered = true
        }
        
        ControlViewsresults = Strings().ControlViews.filter({ cv -> Bool in
            guard let text = searchBar.text else { return false }
            return cv.contains(text)
        })
        Logicresults = Strings().Logic.filter({ l -> Bool in
            guard let text = searchBar.text else { return false }
            return l.contains(text)
        })
        Paintsresults = Strings().Paints.filter({ p -> Bool in
            guard let text = searchBar.text else { return false }
            return p.contains(text)
        })
        ControlViewsTableView.reloadData()
        LogicTableView.reloadData()
        PaintsTableView.reloadData()
    }
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        
    }
}

