function createChessboard()
    % Input:
    rows = 8;           % No. of rows in the board
    cols = 8;           % No. of columns in the board
    squareSize = 100;   % Size of each square in pixels

    % Create the chessboard frame
    chessboard = zeros(cols*squareSize, rows*squareSize);

    % Fill the chessboard with alternating white and black squares pattern
    for i = 1:rows
        for j = 1:cols
            if mod(i+j, 2) == 0
                chessboard((i-1)*squareSize+1:i*squareSize, (j-1)*squareSize+1:j*squareSize) = 255;
            end
        end
    end

    % Display the chessboard pattern
    imshow(chessboard);
end
