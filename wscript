#encoding=utf-8

top = '.'
out = 'build'
APPNAME = 'hello_world'
VERSION = '2.3.1'

def options(opt):
    opt.add_option("--target", action="store",default="debug", help='debug or release')

def configure(ctx):
    ctx.load('gcc g++')

def build(ctx):
    if ctx.options.target != "debug" and ctx.options.target != "release":
        raise RuntimeError("Not implemented target!!!")
    cxx_files = ctx.path.ant_glob("tensorflow/**/*.cc")
    c_files = ctx.path.ant_glob("tensorflow/**/*.c")
    def_list = ["NDEBUG", \
                "TF_LITE_STATIC_MEMORY"] # Is this parameter preprocessor definitions? Yes it is!
    inc_list = [top, \
                top + "/third_party/gemmlowp", \
                top + "/third_party/flatbuffers/include", \
                top + "/third_party/ruy"]
    release_flags = ["-O3"] if ctx.options.target == "release" else []
    debug_flags = ["-g"] if ctx.options.target == "debug" else []
    c_flags = ["--std=c99"]
    cxx_flags = ["--std=c++11"]
    ld_flags = ["-lm"]
    ctx.program(
        source = cxx_files + c_files,\
        target = APPNAME,\
        defines = def_list,\
        includes = inc_list,\
        cxxflags = cxx_flags + release_flags + debug_flags,\
        cflags = c_flags + release_flags + debug_flags,\
        ldflags = ld_flags
    )