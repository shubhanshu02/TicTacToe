import 'package:TicTacToe/checkFunctions.dart';

int aiMove(List<String> board) {
  //return board.indexWhere((element) => element == '');
  int answer = minimax(board, "O").index;
  print('answer = $answer and arr board = $board');
  return answer;
}

class minimaxResponse {
  String ans;
  int index;
  minimaxResponse(String a, int b) {
    ans = a;
    index = b;
  }
}
minimaxResponse minimax(List<String> newBoard,String player) {
  var availSpots = emptysq(newBoard);
  for (var i = 0; i < availSpots.length; i++) {
    var currentMarker = newBoard[availSpots[i]];
    newBoard[availSpots[i]] = player;
    if (player == 'O' && checkWin(newBoard) == 2) {
      newBoard[availSpots[i]] = currentMarker;
      return minimaxResponse("cw", i);
    } else if (player == 'X' && checkWin(newBoard) == 1) {
      newBoard[availSpots[i]] = currentMarker;
      return minimaxResponse("pw", i);
    }
    newBoard[availSpots[i]] = currentMarker;
  }

  if (checkWin(newBoard) == 1)
    return minimaxResponse("pw", -1);
  else if (checkWin(newBoard) == 2)
    return minimaxResponse("cw", -1);
  else if (checkTie(newBoard) == true) return minimaxResponse("d", -1);

  var nLchoices = [];

  for (var i = 0; i < availSpots.length; i++) {
    minimaxResponse choice = minimaxResponse("", -1);
    choice.index = availSpots[i];
    newBoard[availSpots[i]] = player;
    if (player == 'O') {
      choice.ans = minimax(newBoard, 'X').ans;
    } else {
      choice.ans = minimax(newBoard, 'O').ans;
    }
    newBoard[availSpots[i]] = '';
    nLchoices.add(choice);
  }

  if (player == 'O') {
    for (var i = 0; i < nLchoices.length; i++) {
      if (nLchoices[i].ans == "cw") return nLchoices[i];
    }
    for (var i = 0; i < nLchoices.length; i++) {
      if (nLchoices[i].ans == "d") return nLchoices[i];
    }
    return nLchoices[0];
  } else {
    for (var i = 0; i < nLchoices.length; i++) {
      if (nLchoices[i].ans == "pw") return nLchoices[i];
    }
    for (var i = 0; i < nLchoices.length; i++) {
      if (nLchoices[i].ans == "d") return nLchoices[i];
    }
    return nLchoices[0];
  }
}
