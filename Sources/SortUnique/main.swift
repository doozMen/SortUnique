import AppKit
import Foundation

func clipboardContent() -> String? {
    return NSPasteboard.general.pasteboardItems?.first?.string(forType: .string)
}
guard let clip = clipboardContent() else {
    exit(EXIT_FAILURE)
}

let uniqueContent = Set(clip.components(separatedBy: "\n"))
print(uniqueContent.sorted().joined(separator: "\n"))
