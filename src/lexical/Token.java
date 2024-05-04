package lexical;

public class Token {
    public enum TK {
        //START_CODE,
        //END_CODE,

        IDENTIFIER,

        //VAR_TYPE
        //BOOLEAN,
        //INTEGER,
        //FLOAT,
        //CHAR,
        //STRING,

        NUMBER,

        //ASSIGN,

        //ADDITION,
        //SUBTRACTION,
        //MULTIPLICATION,
        //DIVISION,

        OPEN_PARENTHESIS,
        CLOSE_PARENTHESIS,

        //EQUALS,
        //LESS_THAN,
        //MORE_THAN,
        //LESS_OR_EQUAL_THAN,
        //MORE_OR_EQUAL_THAN,

        //AND,
        //OR,

        //END_LINE,

        //IF,
        //LOOP,
        //BREAK,

        OPERATOR,
        SCOPE
    }

    private TK type;
    private String text;
    private int line, column, scope;

    public Token() {}

    public Token(TK type, String text, int line, int column, int scope) {
        this.type = type;
        this.text = text;
        this.line = line;
        this.column = column;
        this.scope = scope;
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
        return "Token [type=" + type + ", text=" + text + ", line=" + line + ", column=" + column + ", scope=" + scope + "]";
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

    public int getScope() {
        return scope;
    }

    public void setScope(int scope) {
        this.scope = scope;
    }
}
