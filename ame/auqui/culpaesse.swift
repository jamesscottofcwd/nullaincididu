protocol TextSelectability {
    var isSelectable: Bool { get }
    var selectionRange: NSRange { get }
    func select(range: NSRange)
    func deselect()
}
