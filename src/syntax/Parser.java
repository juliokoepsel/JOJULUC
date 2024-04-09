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

    public void Expressao() {
        Termo();
        ExpressaoRecursiva();
    }

    private void ExpressaoRecursiva() {
        token = scanner.nextToken();
        printToken(token);
        if (token != null) {
            Operador();
            Termo();
            ExpressaoRecursiva();
        }
    }

    private void Termo() {
        token = scanner.nextToken();
        printToken(token);
        if (token.getType() != Token.TK.IDENTIFIER && token.getType() != Token.TK.NUMBER) {
            throw new SyntaxException("IDENTIFIER or NUMBER Expected, found " + token.getType() + " (" + token.getText() + ") at line " + token.getLine() + " and column " + token.getColumn());
        }
    }

    private void Operador() {
		if (token.getType() != Token.TK.OPERATOR) {
			throw new SyntaxException("OPERATOR Expected, found " + token.getType() + " (" + token.getText() + ")  at line " + token.getLine() + " and column " + token.getColumn());
		}
	}

    private void printToken(Token token) {
        if (token != null) {
            System.out.println(token);
        }
    }
}
