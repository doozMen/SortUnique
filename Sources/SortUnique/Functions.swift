import Foundation

public func sort(text: String) throws -> String {
    let lines = text.components(separatedBy: "\n")
    let commaSeparated = text.components(separatedBy: ",").map { $0.trimmingCharacters(in: .whitespacesAndNewlines)}
    if lines.count > 1 {
        let uniqueContent = Set(lines)
        return uniqueContent.sorted().joined(separator: "\n")
    } else if commaSeparated.count > 1 {
        let uniqueContent = Set(commaSeparated)
        return uniqueContent.sorted().joined(separator: ", ")
    } else {
        throw "❌ not comma, nor line separated \n \(text)"
    }
}

extension String: Swift.Error {
    
}
