int checkWin(board) {
  // player wins, gamewin =1 else if comp wins, gamewin=2
  var a = board;
  var gameWin = 0;
  var marker = ['XXX', 'OOO'];
  for (int i = 0; i < 2; i++) {
    if (a[0] + a[1] + a[2] == marker[i]) {
      gameWin = (marker[i] == 'XXX') ? 1 : 2;
    }
    if (a[3] + a[4] + a[5] == marker[i]) {
      gameWin = (marker[i] == 'XXX') ? 1 : 2;
    }
    if (a[6] + a[7] + a[8] == marker[i]) {
      gameWin = (marker[i] == 'XXX') ? 1 : 2;
    }
    if (a[0] + a[3] + a[6] == marker[i]) {
      gameWin = (marker[i] == 'XXX') ? 1 : 2;
    }
    if (a[1] + a[4] + a[7] == marker[i]) {
      gameWin = (marker[i] == 'XXX') ? 1 : 2;
    }
    if (a[2] + a[5] + a[8] == marker[i]) {
      gameWin = (marker[i] == 'XXX') ? 1 : 2;
    }
    if (a[0] + a[4] + a[8] == marker[i]) {
      gameWin = (marker[i] == 'XXX') ? 1 : 2;
    }
    if (a[6] + a[4] + a[2] == marker[i]) {
      gameWin = (marker[i] == 'XXX') ? 1 : 2;
    }
  }

  return gameWin;
}

List emptysq(board) {
  var list = [];
  for (int i = 0; i < 9; i++) {
    if ((board[i] != 'X') && (board[i] != 'O')) {
      list.add(i);
    }
  }
  return list;
}

bool checkTie(board) {
  return !(emptysq(board).isNotEmpty);
}
