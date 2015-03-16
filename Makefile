

MAIN_FILE := main.lisp
TOPLEVEL := main
OUTPUT_NAME := main.x


LC := sbcl
LCFLAGS := :executable t :toplevel '$(TOPLEVEL)
RM := rm -rf


LCFUNC := sb-ext:save-lisp-and-die
LCSCRIPT := --eval "($(LCFUNC) \"$(OUTPUT_NAME)\" $(LCFLAGS))" --quit


all : $(OUTPUT_NAME)

$(OUTPUT_NAME) : 
	$(LC) --load $(MAIN_FILE) --disable-debugger $(LCSCRIPT)

clean :
	$(RM) $(OUTPUT_NAME)
  

