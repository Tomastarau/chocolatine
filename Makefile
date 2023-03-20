
# Executables
PUSHSWAP_EXEC = pushswap
ANTMAN_EXEC = antman/antman
GIANTMAN_EXEC = giantman/giantman
MYSH_EXEC = mysh
BSQ_EXEC = bsq

# Directories
PUSHSWAP_DIR = push_swap/
ANTMAN_DIR = antman/
GIANTMAN_DIR = giantman/
MYSH_DIR = mysh/
BSQ_DIR = ../bsq/B-CPE-110-BDX-1-1-BSQ-tom.bouisset/

# Rules
all: $(BSQ_EXEC)

$(BSQ_EXEC):
	$(MAKE) -C $(BSQ_DIR) $(BSQ_EXEC)

clean:
	$(MAKE) -C $(BSQ_DIR) clean
