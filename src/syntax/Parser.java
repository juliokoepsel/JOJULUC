package syntax;

import exceptions.SyntaxException;
import lexical.Scanner;
import lexical.Token;
import symbol.Symbol;
import symbol.Symbols;

public class Parser {
    private Scanner scanner;
    private Token token;
    private Symbols symbols;

    private void printToken(Token token) {
        if (token != null) {
            System.out.println(token);
        }
    }

    public Parser(Scanner scanner) {
        this.scanner = scanner;
        symbols = new Symbols();
    }

    /*
     * RASCUNHO:
     * 
     * start code
     *      repeat:(
     *          var_type identifier assign variable end_line
     *          ||
     *          reserved
     *      )
     * end code
     * 
     * variable =
     *      identifier || char || string || (calculation)
     * calculation = 
     *      (integer || calculation) operator (integer || calculation)
     *      (float || calculation) operator (float || calculation)
     * reserved =
     *      if || loop || break || ...
     */
    public void Expressao() {
        Start();
        Termo();
        ExpressaoRecursiva();
        End();
        System.out.println("\n" + symbols);
    }

    private void ExpressaoRecursiva() {
        token = scanner.nextToken();
        printToken(token);
        if (token != null && token.getType() != Token.TK.SCOPE) {
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
        if (token.getType() == Token.TK.IDENTIFIER) {
            symbols.add(new Symbol(token.getText(), null, 0, token.getLine()));
        }
    }

    private void Operador() {
		if (token.getType() != Token.TK.OPERATOR) {
			throw new SyntaxException("OPERATOR Expected, found " + token.getType() + " (" + token.getText() + ") at line " + token.getLine() + " and column " + token.getColumn());
		}
	}

    private void Start() {
        token = scanner.nextToken();
        printToken(token);
        if (token.getType() != Token.TK.SCOPE) {
            throw new SyntaxException("SCOPE Expected, found " + token.getType() + " (" + token.getText() + ") at line " + token.getLine() + " and column " + token.getColumn());
        }
    }

    private void End() {
        if (token.getType() != Token.TK.SCOPE) {
            throw new SyntaxException("SCOPE Expected, found " + token.getType() + " (" + token.getText() + ") at line " + token.getLine() + " and column " + token.getColumn());
        }
    }
}
