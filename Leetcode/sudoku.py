class Solution:
    def solveSudoku(self, board: List[List[str]]) -> None:
        """
        Do not return anything, modify board in-place instead.
        """
        
        def tryint(x):
            try:
                return int(x)
            except ValueError:
                return None
        
        
        board = [[tryint(x) for x in sub] for sub in board]
        print('starting sudoku')
        print(board)
        counter = 0

        Quadrants = [[],[],[],[],[],[],[],[],[]]
        

        while any(None in l for l in board) and counter <= 100:
            counter = counter + 1

            print('Iteration', counter)

            Rows = []
            for r in range(0, 9):
                filterRow = [x for x in board[r] if x != None]
                Rows.append(filterRow)

            Cols = []
            for c in range(0, 9):
                filterCol = [item[c] for item in board]
                filterCol = [y for y in filterCol if y != None]
                Cols.append(filterCol)

            Q1 = [sub[0:3] for sub in board[0:3]]
            Q2 = [sub[3:6] for sub in board[0:3]]
            Q3 = [sub[6:9] for sub in board[0:3]]
            Q4 = [sub[0:3] for sub in board[3:6]]
            Q5 = [sub[3:6] for sub in board[3:6]]
            Q6 = [sub[6:9] for sub in board[3:6]]
            Q7 = [sub[0:3] for sub in board[6:9]]
            Q8 = [sub[3:6] for sub in board[6:9]]
            Q9 = [sub[6:9] for sub in board[6:9]]

            Qlist = [Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9]

            for i in range(0, 9):
                relname = 'Q'+str(i+1)
                rel = Qlist[i]
                tempmtx = [rel[0][0], rel[1][0], rel[2][0],
                                rel[0][1], rel[1][1], rel[2][1],
                                rel[0][2], rel[1][2], rel[2][2]]
                tempmtx = [x for x in tempmtx if x != None]
                Quadrants[i] = tempmtx

            for i in range(0, 9):
                for j in range(0, 9):
                    if board[i][j]==None:
                        if i in range(0, 3) and j in range(0, 3):
                            Quad = 0
                        elif i in range(0, 3) and j in range(3, 6):
                            Quad = 1
                        elif i in range(0, 3) and j in range(6, 9):
                            Quad = 2
                        elif i in range(3, 6) and j in range(0, 3):
                            Quad = 3
                        elif i in range(3, 6) and j in range(3, 6):
                            Quad = 4
                        elif i in range(3, 6) and j in range(6, 9):
                            Quad = 5
                        elif i in range(6, 9) and j in range(0, 3):
                            Quad = 6
                        elif i in range(6, 9) and j in range(3, 6):
                            Quad = 7
                        elif i in range(6, 9) and j in range(6, 9):
                            Quad = 8
                        possible = list(range(1, 10))

                        possible = [x for x in possible if x not in Rows[i]]
                        possible = [x for x in possible if x not in Cols[j]]
                        possible = [x for x in possible if x not in Quadrants[Quad]]

                        if len(possible) == 1:
                            board[i][j] = int(possible[0])
                            print('filled', i, 'X', j, 'with value:', possible)
        
        print('final sudoku')
        print(board)
        board = [[str(x) for x in sub] for sub in board]
        
        
        

                   
        
