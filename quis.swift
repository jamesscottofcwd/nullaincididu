/// Formats a time interval into a human-readable string.
///
/// - Parameters:
///   - timeInterval: The time interval to format, in seconds.
///   - showsHours: Whether to include an hours component if there are hours.
///
/// - Returns: A formatted string representing the time interval.
func formatTimeInterval(_ timeInterval: TimeInterval, showsHours: Bool) -> String {
    let totalSeconds = Int(timeInterval)
    let hours = totalSeconds / 3600
    let minutes = (totalSeconds % 3600) / 60
    let seconds = totalSeconds % 60

    if showsHours && hours > 0 {
        return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    } else {
        return String(format: "%02d:%02d", minutes, seconds)
    }
}
