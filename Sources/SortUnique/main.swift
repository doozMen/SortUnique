import AppKit
import Foundation

func clipboardContent() -> String? {
    return NSPasteboard.general.pasteboardItems?.first?.string(forType: .string)
}
guard let clip = clipboardContent() else {
    exit(EXIT_FAILURE)
}

let lines = clip.components(separatedBy: "\n")
let commaSeparated = clip.components(separatedBy: ",").map { $0.trimmingCharacters(in: .whitespacesAndNewlines)}
if lines.count > 1 {
    let uniqueContent = Set(lines)
    print(uniqueContent.sorted().joined(separator: "\n"))
} else if commaSeparated.count > 1 {
    let uniqueContent = Set(commaSeparated)
    print(uniqueContent.sorted().joined(separator: ", "))
} else {
    print("❌ not comma, nor line separated")
}

