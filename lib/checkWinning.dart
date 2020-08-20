bool checkWin(board) {
  var a = board;
  var gameWin = false;

  if (a[0] + a[1] + a[2] == 'XXX') {
    gameWin = true;
  }
  if (a[3] + a[4] + a[5] == 'XXX') {
    gameWin = true;
  }
  if (a[6] + a[7] + a[8] == 'XXX') {
    gameWin = true;
  }
  if (a[0] + a[3] + a[6] == 'XXX') {
    gameWin = true;
  }
  if (a[1] + a[4] + a[7] == 'XXX') {
    gameWin = true;
  }
  if (a[2] + a[5] + a[8] == 'XXX') {
    gameWin = true;
  }
  if (a[0] + a[4] + a[8] == 'XXX') {
    gameWin = true;
  }
  if (a[6] + a[4] + a[2] == 'XXX') {
    gameWin = true;
  }

  return gameWin;
}
