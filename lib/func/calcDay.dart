String calculateDayOfWeek(int dayNumber) {
  switch (dayNumber) {
    case 1:
      return 'Saturday';
    case 2:
      return 'Sunday';
    case 3:
      return 'Monday';
    case 4:
      return 'Tuesday';
    case 5:
      return 'Wednesday';
    case 6:
      return 'Thursday';
    default:
      return 'Friday';
  }
}
