package symbol;

import java.util.ArrayList;
import java.util.List;

public class Symbols {
    private List<Symbol> symbols;

    public Symbols() {
        symbols = new ArrayList<Symbol>();
    }

    public List<Symbol> getSymbols() {
        return symbols;
    }

    public void setSymbols(List<Symbol> symbols) {
        this.symbols = symbols;
    }

    public void add(Symbol newSymbol) {
        boolean unique = true;
        for (Symbol symbol : symbols) {
            if (symbol.getName().equals(newSymbol.getName())) {
                unique = false;
                symbol.getLinesCalled().add(newSymbol.getLineDefined());
                break;
            }
        }
        if (unique) {
            symbols.add(newSymbol);
        }
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder();
        str.append("Symbols [\n");
        int index = 0;
        for (Symbol symbol : symbols) {
            str.append("\t" + "index=" + index + ", " + symbol.toString() + "\n");
            index++;
        }
        str.append("]");
        return str.toString();
    }
}
