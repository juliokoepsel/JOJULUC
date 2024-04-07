package syntax;

import exceptions.SyntaxException;
import lexical.Scanner;
import lexical.Token;

public class Parser {
    private Scanner scanner;
    private Token token;

    public Parser(Scanner scanner) {
        this.scanner = scanner;
    }

    public void E() {
        T();
        El();
    }

    public void El() {
        token = scanner.nextToken();
        printToken(token);
        if (token != null) {
            OP();
            T();
            El();
        }
    }

    public void T() {
        token = scanner.nextToken();
        printToken(token);
        if (token.getType() != Token.TK.IDENTIFIER && token.getType() != Token.TK.NUMBER) {
            throw new SyntaxException("Identifier or Number Expected, found " + token.getType() + " (" + token.getText() + ") at line " + token.getLine() + " and column " + token.getColumn());
        }
    }

    public void OP() {
		if (token.getType() != Token.TK.OPERATOR) {
			throw new SyntaxException("Operator Expected, found " + token.getType() + " (" + token.getText() + ")  at line " + token.getLine() + " and column " + token.getColumn());
		}
	}

    private void printToken(Token token) {
        if (token != null) {
            System.out.println(token);
        }
    }
}
