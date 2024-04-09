package lexical;

public class Token {
    public enum TK {
        IDENTIFIER,
        NUMBER,
        OPERATOR
    }

    private TK type;
    private String text;
    private int line, column;

    public Token() {}

    public Token(TK type, String text) {
        this.type = type;
        this.text = text;
    }

    public TK getType() {
        return type;
    }

    public void setType(TK type) {
        this.type = type;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return "Token [type=" + type + ", text=" + text + "]";
    }

    public int getLine() {
        return line;
    }

    public void setLine(int line) {
        this.line = line;
    }

    public int getColumn() {
        return column;
    }

    public void setColumn(int column) {
        this.column = column;
    }
}
