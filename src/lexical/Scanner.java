package lexical;

import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;

import exceptions.LexicalException;

public class Scanner {
    private char[] content;
    private int state, position, line, column;

    public Scanner(String fileName) {
        try {
            line = column = 1;
            String txtContent = new String(Files.readAllBytes(Paths.get(fileName)),StandardCharsets.UTF_8);
            System.out.println("⚙️  " + fileName + ":");
            System.out.println(txtContent);
            System.out.println("⚙️  /" + fileName);
            content = txtContent.toCharArray();
            position = 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Token nextToken() {
        char currentChar;
        Token token;
        String term = "";
        if (isEOF()) {
            return null;
        } else {
            state = 0;
            while (true) {
                currentChar = nextChar();
                column++;
                switch (state) {
                    case 0:
                        if (isChar(currentChar)) {
                            term += currentChar;
                            state = 1;
                        } else if (isDigit(currentChar)) {
                            term += currentChar;
                            state = 2;
                        } else if (isSpace(currentChar)) {
                            state = 0;
                        } else if (isOperator(currentChar)) {
                            term += currentChar;
					        token = new Token();
                            token.setType(Token.TK.OPERATOR);
                            token.setText(term);
                            token.setLine(line);
                            token.setColumn(column - term.length());
                            return token;
                        } else {
                            term += currentChar;
                            throw new LexicalException("Unrecognized Symbol (" + term + ") at line " + line + " and column " + (column - term.length()));
                        }
                        break;
                    case 1:
                        if (isChar(currentChar) || isDigit(currentChar)) {
                            term += currentChar;
                            state = 1;
                        } else if (isSpace(currentChar) || isOperator(currentChar) || isEOF(currentChar)) {
                            if (!isEOF(currentChar))
                                back();
                            token = new Token();
                            token.setType(Token.TK.IDENTIFIER);
                            token.setText(term);
                            token.setLine(line);
                            token.setColumn(column - term.length());
                            return token;
                        } else {
                            throw new LexicalException("Malformed Identifier (" + term + ") at line " + line + " and column " + (column - term.length()));
                        }
                        break;
                    case 2:
                        if (isDigit(currentChar) || currentChar == '.') {
                            term += currentChar;
                            state = 2;
                        } else if (!isChar(currentChar) || isEOF(currentChar)) {
                            if (!isEOF(currentChar))
                                back();
                            token = new Token();
                            token.setType(Token.TK.NUMBER);
                            token.setText(term);
                            token.setLine(line);
                            token.setColumn(column - term.length());
                            return token;
                        } else {
                            throw new LexicalException("Malformed Number (" + term + ") at line " + line + " and column " + (column - term.length()));
                        }
                        break;
                }
            }
        }
    }

    private boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    private boolean isChar(char c) {
        return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
    }

    private boolean isOperator(char c) {
        return c == '>' || c == '<' || c == '=' || c == '!' || c == '+' || c == '-' || c == '*' || c == '/';
    }

    private boolean isSpace(char c) {
        if (c == '\n' || c == '\r') {
            line++;
            column = 1;
        }
        return c == ' ' || c == '\t' || c == '\n' || c == '\r';
    }

    private char nextChar() {
        if (isEOF()) {
            return '\0';
        } else {
            return content[position++];
        }
    }

    private boolean isEOF() {
        return position >= content.length;
    }

    private boolean isEOF(char c) {
        return c == '\0';
    }

    private void back() {
        column--;
        position--;
    }
}
