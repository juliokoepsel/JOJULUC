package symbol;

import java.util.ArrayList;
import java.util.List;

public class Symbol {
	public enum Type {
        BOOLEAN,
		INTEGER,
		FLOAT,
		CHAR,
		STRING
	}

	private String name;
	private Type type;
	private int scope;
	private int lineDefined;
	private List<Integer> linesCalled;
    
    public Symbol() {}

    public Symbol(String name, Type type, int scope, int lineDefined) {
        this.name = name;
        this.type = type;
        this.scope = scope;
        this.lineDefined = lineDefined;
        linesCalled = new ArrayList<Integer>();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public int getScope() {
        return scope;
    }

    public void setScope(int scope) {
        this.scope = scope;
    }

    public int getLineDefined() {
        return lineDefined;
    }

    public void setLineDefined(int lineDefined) {
        this.lineDefined = lineDefined;
    }

    public List<Integer> getLinesCalled() {
        return linesCalled;
    }

    public void setLinesCalled(List<Integer> linesCalled) {
        this.linesCalled = linesCalled;
    }

    @Override
    public String toString() {
        return "Symbol [name=" + name + ", type=" + type + ", scope=" + scope + ", lineDefined=" + lineDefined + ", linesCalled=" + linesCalled + "]";
    }
}
