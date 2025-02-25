# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := v8_snapshot
### Rules for action "run_mksnapshot":
quiet_cmd_tools_gyp_v8_gyp_v8_snapshot_target_run_mksnapshot = ACTION tools_gyp_v8_gyp_v8_snapshot_target_run_mksnapshot $@
cmd_tools_gyp_v8_gyp_v8_snapshot_target_run_mksnapshot = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/tools/gyp; mkdir -p $(obj).$(TOOLSET)/v8_snapshot/geni; "$(builddir)/mksnapshot" --log-snapshot-positions --logfile "$(obj).$(TOOLSET)/v8_snapshot/geni/snapshot.log" --random-seed 314159265 "$(obj).$(TOOLSET)/v8_snapshot/geni/snapshot.cc"

$(obj).$(TOOLSET)/$(TARGET)/geni/snapshot.cc: obj := $(abs_obj)
$(obj).$(TOOLSET)/$(TARGET)/geni/snapshot.cc: builddir := $(abs_builddir)
$(obj).$(TOOLSET)/$(TARGET)/geni/snapshot.cc: TOOLSET := $(TOOLSET)
$(obj).$(TOOLSET)/$(TARGET)/geni/snapshot.cc: $(builddir)/mksnapshot FORCE_DO_CMD
	$(call do_cmd,tools_gyp_v8_gyp_v8_snapshot_target_run_mksnapshot)

all_deps += $(obj).$(TOOLSET)/$(TARGET)/geni/snapshot.cc
action_tools_gyp_v8_gyp_v8_snapshot_target_run_mksnapshot_outputs := $(obj).$(TOOLSET)/$(TARGET)/geni/snapshot.cc


DEFS_Debug := \
	'-DV8_TARGET_ARCH_X64' \
	'-DENABLE_GDB_JIT_INTERFACE' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_I18N_SUPPORT' \
	'-DV8_SHARED' \
	'-DBUILDING_V8_SHARED' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_ENABLE_CHECKS' \
	'-DOBJECT_PRINT' \
	'-DVERIFY_HEAP' \
	'-DDEBUG' \
	'-DTRACE_MAPS' \
	'-DENABLE_EXTRA_CHECKS' \
	'-DENABLE_HANDLE_ZAPPING'

# Flags passed to all source files.
CFLAGS_Debug := \
	-Wall \
	-Werror \
	-W \
	-Wno-unused-parameter \
	-Wno-long-long \
	-pthread \
	-fno-exceptions \
	-pedantic \
	-Wno-missing-field-initializers \
	-fPIC \
	-m64 \
	-m64 \
	-g \
	-O0 \
	-Woverloaded-virtual \
	 \
	-Woverloaded-virtual \
	-fdata-sections \
	-ffunction-sections \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-Wnon-virtual-dtor \
	-fno-rtti \
	-std=gnu++0x

INCS_Debug := \
	-I$(srcdir)/.

DEFS_Optdebug := \
	'-DV8_TARGET_ARCH_X64' \
	'-DENABLE_GDB_JIT_INTERFACE' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_I18N_SUPPORT' \
	'-DV8_SHARED' \
	'-DBUILDING_V8_SHARED' \
	'-DENABLE_DISASSEMBLER' \
	'-DV8_ENABLE_CHECKS' \
	'-DOBJECT_PRINT' \
	'-DVERIFY_HEAP' \
	'-DDEBUG' \
	'-DTRACE_MAPS' \
	'-DENABLE_EXTRA_CHECKS' \
	'-DENABLE_HANDLE_ZAPPING' \
	'-DOPTIMIZED_DEBUG'

# Flags passed to all source files.
CFLAGS_Optdebug := \
	-Wall \
	-Werror \
	-W \
	-Wno-unused-parameter \
	-Wno-long-long \
	-pthread \
	-fno-exceptions \
	-pedantic \
	-Wno-missing-field-initializers \
	-fPIC \
	-m64 \
	-m64 \
	-g \
	-Woverloaded-virtual \
	 \
	-Woverloaded-virtual \
	-fdata-sections \
	-ffunction-sections \
	-O3 \
	-fdata-sections \
	-ffunction-sections \
	-O3

# Flags passed to only C files.
CFLAGS_C_Optdebug :=

# Flags passed to only C++ files.
CFLAGS_CC_Optdebug := \
	-Wnon-virtual-dtor \
	-fno-rtti \
	-std=gnu++0x

INCS_Optdebug := \
	-I$(srcdir)/.

DEFS_Release := \
	'-DV8_TARGET_ARCH_X64' \
	'-DENABLE_GDB_JIT_INTERFACE' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_I18N_SUPPORT' \
	'-DV8_SHARED' \
	'-DBUILDING_V8_SHARED' \
	'-DENABLE_HANDLE_ZAPPING'

# Flags passed to all source files.
CFLAGS_Release := \
	-Wall \
	-Werror \
	-W \
	-Wno-unused-parameter \
	-Wno-long-long \
	-pthread \
	-fno-exceptions \
	-pedantic \
	-Wno-missing-field-initializers \
	-fPIC \
	-m64 \
	-m64 \
	-fdata-sections \
	-ffunction-sections \
	 \
	-O3 \
	-fdata-sections \
	-ffunction-sections \
	-O3

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-Wnon-virtual-dtor \
	-fno-rtti \
	-std=gnu++0x

INCS_Release := \
	-I$(srcdir)/.

OBJS := \
	$(obj).target/$(TARGET)/gen/libraries.o \
	$(obj).target/$(TARGET)/gen/experimental-libraries.o \
	$(obj).$(TOOLSET)/$(TARGET)/geni/snapshot.o \
	$(obj).target/$(TARGET)/src/snapshot-common.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/mksnapshot $(obj).target/tools/gyp/js2c.stamp

# Make sure our actions/rules run before any of us.
$(OBJS): | $(action_tools_gyp_v8_gyp_v8_snapshot_target_run_mksnapshot_outputs)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
# Build our special outputs first.
$(obj).target/tools/gyp/libv8_snapshot.a: | $(action_tools_gyp_v8_gyp_v8_snapshot_target_run_mksnapshot_outputs)

# Preserve order dependency of special output on deps.
$(action_tools_gyp_v8_gyp_v8_snapshot_target_run_mksnapshot_outputs): | $(builddir)/mksnapshot $(obj).target/tools/gyp/js2c.stamp

LDFLAGS_Debug := \
	-pthread \
	-m64 \
	-m64 \
	-rdynamic \
	-rdynamic

LDFLAGS_Optdebug := \
	-pthread \
	-m64 \
	-m64 \
	-rdynamic \
	-rdynamic

LDFLAGS_Release := \
	-pthread \
	-m64 \
	-m64

LIBS :=

$(obj).target/tools/gyp/libv8_snapshot.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/tools/gyp/libv8_snapshot.a: LIBS := $(LIBS)
$(obj).target/tools/gyp/libv8_snapshot.a: TOOLSET := $(TOOLSET)
$(obj).target/tools/gyp/libv8_snapshot.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).target/tools/gyp/libv8_snapshot.a
# Add target alias
.PHONY: v8_snapshot
v8_snapshot: $(obj).target/tools/gyp/libv8_snapshot.a

# Add target alias to "all" target.
.PHONY: all
all: v8_snapshot

