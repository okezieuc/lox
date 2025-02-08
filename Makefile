# Makefile for Lox and GenerateAst

# Compiler
JAVAC = javac
JAVA = java

# Directories
LOX_DIR = com/craftinginterpreters/lox
TOOL_DIR = com/craftinginterpreters/tool

# Source files
LOX_SOURCES = $(wildcard $(LOX_DIR)/*.java)
GENERATE_AST_SOURCE = $(TOOL_DIR)/GenerateAst.java

# Targets
all: lox generateast

lox: $(LOX_SOURCES)
	$(JAVAC) $(LOX_SOURCES)
	$(JAVA) com.craftinginterpreters.lox.Lox

generateast: $(GENERATE_AST_SOURCE)
	$(JAVAC) $(GENERATE_AST_SOURCE)
	$(JAVA) com.craftinginterpreters.tool.GenerateAst $(file)

run:
	$(JAVA) com.craftinginterpreters.lox.Lox $(file)

clean:
	rm -f $(LOX_DIR)/*.class $(TOOL_DIR)/*.class