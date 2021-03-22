# Created by and for Qt Creator This file was created for editing the project sources only.
# You may attempt to use it for building too, by modifying this file here.

TARGET = hello_world

QT = core gui widgets

HEADERS = \
   $$PWD/tensorflow/core/public/version.h \
   $$PWD/tensorflow/lite/c/builtin_op_data.h \
   $$PWD/tensorflow/lite/c/common.h \
   $$PWD/tensorflow/lite/core/api/error_reporter.h \
   $$PWD/tensorflow/lite/core/api/flatbuffer_conversions.h \
   $$PWD/tensorflow/lite/core/api/op_resolver.h \
   $$PWD/tensorflow/lite/core/api/profiler.h \
   $$PWD/tensorflow/lite/core/api/tensor_utils.h \
   $$PWD/tensorflow/lite/kernels/internal/optimized/neon_check.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/integer_ops/add.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/integer_ops/conv.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/integer_ops/depthwise_conv.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/integer_ops/fully_connected.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/integer_ops/l2normalization.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/integer_ops/logistic.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/integer_ops/mul.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/integer_ops/pooling.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/integer_ops/tanh.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/add.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/arg_min_max.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/binary_function.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/ceil.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/comparisons.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/concatenation.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/conv.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/depthwiseconv_float.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/depthwiseconv_uint8.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/dequantize.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/floor.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/fully_connected.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/l2normalization.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/logistic.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/maximum_minimum.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/mul.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/neg.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/pad.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/pooling.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/prelu.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/process_broadcast_shapes.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/quantize.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/reduce.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/requantize.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/resize_nearest_neighbor.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/round.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/softmax.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/strided_slice.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/sub.h \
   $$PWD/tensorflow/lite/kernels/internal/reference/tanh.h \
   $$PWD/tensorflow/lite/kernels/internal/common.h \
   $$PWD/tensorflow/lite/kernels/internal/compatibility.h \
   $$PWD/tensorflow/lite/kernels/internal/cppmath.h \
   $$PWD/tensorflow/lite/kernels/internal/max.h \
   $$PWD/tensorflow/lite/kernels/internal/min.h \
   $$PWD/tensorflow/lite/kernels/internal/quantization_util.h \
   $$PWD/tensorflow/lite/kernels/internal/strided_slice_logic.h \
   $$PWD/tensorflow/lite/kernels/internal/tensor.h \
   $$PWD/tensorflow/lite/kernels/internal/tensor_ctypes.h \
   $$PWD/tensorflow/lite/kernels/internal/types.h \
   $$PWD/tensorflow/lite/kernels/kernel_util.h \
   $$PWD/tensorflow/lite/kernels/op_macros.h \
   $$PWD/tensorflow/lite/kernels/padding.h \
   $$PWD/tensorflow/lite/micro/benchmarks/keyword_scrambled_model_data.h \
   $$PWD/tensorflow/lite/micro/examples/hello_world/constants.h \
   $$PWD/tensorflow/lite/micro/examples/hello_world/main_functions.h \
   $$PWD/tensorflow/lite/micro/examples/hello_world/model.h \
   $$PWD/tensorflow/lite/micro/examples/hello_world/output_handler.h \
   $$PWD/tensorflow/lite/micro/kernels/activation_utils.h \
   $$PWD/tensorflow/lite/micro/kernels/micro_ops.h \
   $$PWD/tensorflow/lite/micro/kernels/micro_utils.h \
   $$PWD/tensorflow/lite/micro/memory_planner/greedy_memory_planner.h \
   $$PWD/tensorflow/lite/micro/memory_planner/linear_memory_planner.h \
   $$PWD/tensorflow/lite/micro/memory_planner/memory_planner.h \
   $$PWD/tensorflow/lite/micro/all_ops_resolver.h \
   $$PWD/tensorflow/lite/micro/compatibility.h \
   $$PWD/tensorflow/lite/micro/debug_log.h \
   $$PWD/tensorflow/lite/micro/memory_helpers.h \
   $$PWD/tensorflow/lite/micro/micro_allocator.h \
   $$PWD/tensorflow/lite/micro/micro_error_reporter.h \
   $$PWD/tensorflow/lite/micro/micro_interpreter.h \
   $$PWD/tensorflow/lite/micro/micro_mutable_op_resolver.h \
   $$PWD/tensorflow/lite/micro/micro_op_resolver.h \
   $$PWD/tensorflow/lite/micro/micro_optional_debug_tools.h \
   $$PWD/tensorflow/lite/micro/micro_profiler.h \
   $$PWD/tensorflow/lite/micro/micro_string.h \
   $$PWD/tensorflow/lite/micro/micro_time.h \
   $$PWD/tensorflow/lite/micro/micro_utils.h \
   $$PWD/tensorflow/lite/micro/recording_micro_allocator.h \
   $$PWD/tensorflow/lite/micro/recording_micro_interpreter.h \
   $$PWD/tensorflow/lite/micro/recording_simple_memory_allocator.h \
   $$PWD/tensorflow/lite/micro/simple_memory_allocator.h \
   $$PWD/tensorflow/lite/micro/test_helpers.h \
   $$PWD/tensorflow/lite/schema/schema_generated.h \
   $$PWD/tensorflow/lite/string_type.h \
   $$PWD/tensorflow/lite/string_util.h \
   $$PWD/tensorflow/lite/type_to_tflitetype.h \
   $$PWD/tensorflow/lite/version.h \
   $$PWD/third_party/flatbuffers/include/flatbuffers/base.h \
   $$PWD/third_party/flatbuffers/include/flatbuffers/flatbuffers.h \
   $$PWD/third_party/flatbuffers/include/flatbuffers/stl_emulation.h \
   $$PWD/third_party/gemmlowp/fixedpoint/fixedpoint.h \
   $$PWD/third_party/gemmlowp/fixedpoint/fixedpoint_sse.h \
   $$PWD/third_party/gemmlowp/internal/detect_platform.h \
   $$PWD/third_party/ruy/ruy/profiler/instrumentation.h

SOURCES = \
   $$PWD/tensorflow/lite/c/common.c \
   $$PWD/tensorflow/lite/core/api/error_reporter.cc \
   $$PWD/tensorflow/lite/core/api/flatbuffer_conversions.cc \
   $$PWD/tensorflow/lite/core/api/op_resolver.cc \
   $$PWD/tensorflow/lite/core/api/tensor_utils.cc \
   $$PWD/tensorflow/lite/kernels/internal/quantization_util.cc \
   $$PWD/tensorflow/lite/kernels/kernel_util.cc \
   $$PWD/tensorflow/lite/micro/benchmarks/keyword_scrambled_model_data.cc \
   $$PWD/tensorflow/lite/micro/examples/hello_world/constants.cc \
   $$PWD/tensorflow/lite/micro/examples/hello_world/main.cc \
   $$PWD/tensorflow/lite/micro/examples/hello_world/main_functions.cc \
   $$PWD/tensorflow/lite/micro/examples/hello_world/model.cc \
   $$PWD/tensorflow/lite/micro/examples/hello_world/output_handler.cc \
   $$PWD/tensorflow/lite/micro/kernels/activations.cc \
   $$PWD/tensorflow/lite/micro/kernels/add.cc \
   $$PWD/tensorflow/lite/micro/kernels/arg_min_max.cc \
   $$PWD/tensorflow/lite/micro/kernels/ceil.cc \
   $$PWD/tensorflow/lite/micro/kernels/circular_buffer.cc \
   $$PWD/tensorflow/lite/micro/kernels/comparisons.cc \
   $$PWD/tensorflow/lite/micro/kernels/concatenation.cc \
   $$PWD/tensorflow/lite/micro/kernels/conv.cc \
   $$PWD/tensorflow/lite/micro/kernels/depthwise_conv.cc \
   $$PWD/tensorflow/lite/micro/kernels/dequantize.cc \
   $$PWD/tensorflow/lite/micro/kernels/elementwise.cc \
   $$PWD/tensorflow/lite/micro/kernels/ethosu.cc \
   $$PWD/tensorflow/lite/micro/kernels/floor.cc \
   $$PWD/tensorflow/lite/micro/kernels/fully_connected.cc \
   $$PWD/tensorflow/lite/micro/kernels/l2norm.cc \
   $$PWD/tensorflow/lite/micro/kernels/logical.cc \
   $$PWD/tensorflow/lite/micro/kernels/logistic.cc \
   $$PWD/tensorflow/lite/micro/kernels/maximum_minimum.cc \
   $$PWD/tensorflow/lite/micro/kernels/mul.cc \
   $$PWD/tensorflow/lite/micro/kernels/neg.cc \
   $$PWD/tensorflow/lite/micro/kernels/pack.cc \
   $$PWD/tensorflow/lite/micro/kernels/pad.cc \
   $$PWD/tensorflow/lite/micro/kernels/pooling.cc \
   $$PWD/tensorflow/lite/micro/kernels/prelu.cc \
   $$PWD/tensorflow/lite/micro/kernels/quantize.cc \
   $$PWD/tensorflow/lite/micro/kernels/reduce.cc \
   $$PWD/tensorflow/lite/micro/kernels/reshape.cc \
   $$PWD/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cc \
   $$PWD/tensorflow/lite/micro/kernels/round.cc \
   $$PWD/tensorflow/lite/micro/kernels/softmax.cc \
   $$PWD/tensorflow/lite/micro/kernels/split.cc \
   $$PWD/tensorflow/lite/micro/kernels/strided_slice.cc \
   $$PWD/tensorflow/lite/micro/kernels/sub.cc \
   $$PWD/tensorflow/lite/micro/kernels/svdf.cc \
   $$PWD/tensorflow/lite/micro/kernels/tanh.cc \
   $$PWD/tensorflow/lite/micro/kernels/unpack.cc \
   $$PWD/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc \
   $$PWD/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc \
   $$PWD/tensorflow/lite/micro/all_ops_resolver.cc \
   $$PWD/tensorflow/lite/micro/debug_log.cc \
   $$PWD/tensorflow/lite/micro/memory_helpers.cc \
   $$PWD/tensorflow/lite/micro/micro_allocator.cc \
   $$PWD/tensorflow/lite/micro/micro_error_reporter.cc \
   $$PWD/tensorflow/lite/micro/micro_interpreter.cc \
   $$PWD/tensorflow/lite/micro/micro_optional_debug_tools.cc \
   $$PWD/tensorflow/lite/micro/micro_profiler.cc \
   $$PWD/tensorflow/lite/micro/micro_string.cc \
   $$PWD/tensorflow/lite/micro/micro_time.cc \
   $$PWD/tensorflow/lite/micro/micro_utils.cc \
   $$PWD/tensorflow/lite/micro/recording_micro_allocator.cc \
   $$PWD/tensorflow/lite/micro/recording_simple_memory_allocator.cc \
   $$PWD/tensorflow/lite/micro/simple_memory_allocator.cc \
   $$PWD/tensorflow/lite/micro/test_helpers.cc

INCLUDEPATH = \
    $$PWD \
    $$PWD/third_party/gemmlowp \
    $$PWD/third_party/flatbuffers/include \
    $$PWD/third_party/ruy \

DEFINES += \
    NDEBUG \
    TF_LITE_STATIC_MEMORY

QMAKE_CFLAGS += \
    -std=c99

CONFIG += \
    c++11
