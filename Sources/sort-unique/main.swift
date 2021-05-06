import AppKit
import Foundation
import SortUnique

func clipboardContent() -> String? {
    return NSPasteboard.general.pasteboardItems?.first?.string(forType: .string)
}
guard let clip = clipboardContent() else {
    exit(EXIT_FAILURE)
}

print(try sort(text: clip))
