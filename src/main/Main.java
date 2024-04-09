package main;

import exceptions.LexicalException;
import exceptions.SyntaxException;
import lexical.Scanner;
import syntax.Parser;

public class Main {
    public static void main(String[] args) throws Exception {
        try {
            System.out.println("JoJuLu Compiler:");
            Scanner scanner = new Scanner("INPUT");
            Parser parser = new Parser(scanner);
            long startTime = System.nanoTime();
            parser.Expressao();
            long endTime = System.nanoTime();
            System.out.println("🏁 Compilation Successful! 🍾");
            System.out.println("⏱️  Duration: " + (double)((endTime - startTime) / 1_000_000_000.0) + "s");
        } catch (LexicalException e) {
            System.out.println("⚠️ 🚨 Lexical Error: " + e.getMessage());
        } catch (SyntaxException e) {
            System.out.println("⚠️ 🚨 Syntax Error: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("⚠️ 🚨 Generic Error: " + e.getClass().getName());
        }
    }
}
