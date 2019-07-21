

import UIKit

class SubTitleHeaderCell: BaseCell<Title> {

    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var lblSubTitle: UILabel!
    
    
    override func SetupUI() {
        lblSubTitle.text = data!.Title
        lblTitle.text = data!.SubTitle
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
