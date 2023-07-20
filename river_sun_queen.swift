import UIKit

// MARK: UIColor declaration
let lightBlueColor = UIColor(red: 0.0, green: 0.30, blue: 0.71, alpha: 1.0)
let lightGreenColor = UIColor(red: 0.09, green: 0.60, blue: 0.32, alpha: 1.0)
let deepBlueColor = UIColor(red: 0.07, green: 0.17, blue: 0.24, alpha: 1.0)
let goldColor = UIColor(red: 1.00, green: 0.70, blue: 0.03, alpha: 1.0)

// MARK: Table View Cell
class ChangingTidesTableViewCell: UITableViewCell {
 
    // MARK: - Variables
    var titleLabel: UILabel
    var subTitleLabel: UILabel
    var backgroundImageView: UIImageView
    
    // MARK: - Initialization
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        titleLabel = UILabel()
        subTitleLabel = UILabel()
        backgroundImageView = UIImageView()
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helper Methods
    func setupViews() {
        // setup title label
        titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        titleLabel.textColor = lightBlueColor
        contentView.addSubview(titleLabel)
        
        // setup sub title label
        subTitleLabel.font = UIFont.systemFont(ofSize: 14)
        subTitleLabel.textColor = lightGreenColor
        contentView.addSubview(subTitleLabel)
        
        // setup background image view
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.clipsToBounds = true
        backgroundImageView.layer.cornerRadius = 4
        backgroundImageView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        contentView.addSubview(backgroundImageView)
        
        // setup constraints
        setupConstraints()
    }
    
    func setupConstraints() {
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(contentView.snp.top).offset(8)
            make.leading.equalTo(contentView.snp.leading).offset(16)
        }
        
        subTitleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(2)
            make.leading.equalTo(titleLabel.snp.leading)
        }
        
        backgroundImageView.snp.makeConstraints { (make) in
            make.top.equalTo(contentView.snp.top)
            make.trailing.equalTo(contentView.snp.trailing).offset(-16)
            make.bottom.equalTo(contentView.snp.bottom).offset(-8)
            make.leading.equalTo(titleLabel.snp.trailing).offset(16)
            make.height.width.equalTo(100)
        }
    }
}

// MARK: - Table View Controller
class ChangingTidesTableViewController: UITableViewController {
    
    // MARK: - Variables
    var dataSource: [(title: String, subTitle: String, imageName: String)]
    
    // MARK: - Initialization
    override init(style: UITableView.Style) {
        dataSource = [
            (title: "Catch of the Day", subTitle: "Calamari", imageName: "calamari.jpg"),
            (title: "Special", subTitle: "Sea Bass", imageName: "sea-bass.jpg"),
            (title: "Appetizer", subTitle: "Clams", imageName: "clams.jpg")
        ]
        
        super.init(style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    // MARK: - Helper Methods
    func setupViews() {
        // setup title
        navigationItem.title = "Changing Tides"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: goldColor]
        navigationController?.navigationBar.barTintColor = deepBlueColor
        
        // setup table view
        tableView.separatorStyle = .none
        tableView.register(ChangingTidesTableViewCell.self, forCellReuseIdentifier: "ChangingTidesTableViewCell")
    }
    
    // MARK: - Table View Data Source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChangingTidesTableViewCell", for: indexPath) as! ChangingTidesTableViewCell
        let item = dataSource[indexPath.row]
        
        cell.titleLabel.text = item.title
        cell.subTitleLabel.text = item.subTitle
        cell.backgroundImageView.image = UIImage(named: item.imageName)
        cell.backgroundColor = deepBlueColor
        
        return cell
    }
    
    // MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}