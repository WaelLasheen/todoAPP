String dateDifference(DateTime date) {
  DateTime now = DateTime.now();
  int difference = date.difference(now).inDays;
  if(difference > 0 || date.day - now.day ==1) {
    difference++;
  }

  if (difference == 0) {
    return "Now"; 
  } else if (difference == 1) {
    return "Tomorrow"; 
  } else if (difference == -1) {
    return "Yesterday";
  } else if (difference > 1) {
    return "After $difference days"; 
  } else {
    return "Befor ${-difference} days ago"; 
  } 
}
