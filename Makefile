CC = gcc
CFLAGS = -Wall -Wextra -Werror
LDFLAGS =
LDLIBS =

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
BSQ_DIR = bonus/bsq/

# Rules
all: $(PUSHSWAP_EXEC) $(ANTMAN_EXEC) $(GIANTMAN_EXEC) $(MYSH_EXEC) $(BSQ_EXEC)

$(PUSHSWAP_EXEC):
	$(MAKE) -C $(PUSHSWAP_DIR) $(PUSHSWAP_EXEC)

$(ANTMAN_EXEC):
	$(MAKE) -C $(ANTMAN_DIR) $(ANTMAN_EXEC)

$(GIANTMAN_EXEC):
	$(MAKE) -C $(GIANTMAN_DIR) $(GIANTMAN_EXEC)

$(MYSH_EXEC):
	$(MAKE) -C $(MYSH_DIR) $(MYSH_EXEC)

$(BSQ_EXEC):
	$(MAKE) -C $(BSQ_DIR) $(BSQ_EXEC)

tests_run:
	$(MAKE) -C $(PUSHSWAP_DIR) tests_run
	$(MAKE) -C $(ANTMAN_DIR) tests_run
	$(MAKE) -C $(GIANTMAN_DIR) tests_run
	$(MAKE) -C $(MYSH_DIR) tests_run
	$(MAKE) -C $(BSQ_DIR) tests_run

clean:
	$(MAKE) -C $(PUSHSWAP_DIR) clean
	$(MAKE) -C $(ANTMAN_DIR) clean
	$(MAKE) -C $(GIANTMAN_DIR) clean
	$(MAKE) -C $(MYSH_DIR) clean
	$(MAKE) -C $(BSQ_DIR) clean
