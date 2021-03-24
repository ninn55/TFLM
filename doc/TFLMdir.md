# Directory structure of TFLM

├── tensorflow
│   ├── core
│   │   └── public
│   │       └── version.h
│   └── lite
│       ├── c
│       │   ├── builtin_op_data.h
│       │   ├── common.c
│       │   └── common.h
│       ├── core
│       │   └── api
│       │       ├── error_reporter.cc
│       │       ├── error_reporter.h
│       │       ├── flatbuffer_conversions.cc
│       │       ├── flatbuffer_conversions.h
│       │       ├── op_resolver.cc
│       │       ├── op_resolver.h
│       │       ├── profiler.h
│       │       ├── tensor_utils.cc
│       │       └── tensor_utils.h
│       ├── kernels
│       │   ├── internal
│       │   │   ├── common.h
│       │   │   ├── compatibility.h
│       │   │   ├── cppmath.h
│       │   │   ├── max.h
│       │   │   ├── min.h
│       │   │   ├── optimized
│       │   │   │   └── neon_check.h
│       │   │   ├── quantization_util.cc
│       │   │   ├── quantization_util.h
│       │   │   ├── reference
│       │   │   │   ├── add.h
│       │   │   │   ├── arg_min_max.h
│       │   │   │   ├── binary_function.h
│       │   │   │   ├── ceil.h
│       │   │   │   ├── comparisons.h
│       │   │   │   ├── concatenation.h
│       │   │   │   ├── conv.h
│       │   │   │   ├── depthwiseconv_float.h
│       │   │   │   ├── depthwiseconv_uint8.h
│       │   │   │   ├── dequantize.h
│       │   │   │   ├── floor.h
│       │   │   │   ├── fully_connected.h
│       │   │   │   ├── integer_ops
│       │   │   │   │   ├── add.h
│       │   │   │   │   ├── conv.h
│       │   │   │   │   ├── depthwise_conv.h
│       │   │   │   │   ├── fully_connected.h
│       │   │   │   │   ├── l2normalization.h
│       │   │   │   │   ├── logistic.h
│       │   │   │   │   ├── mul.h
│       │   │   │   │   ├── pooling.h
│       │   │   │   │   └── tanh.h
│       │   │   │   ├── l2normalization.h
│       │   │   │   ├── logistic.h
│       │   │   │   ├── maximum_minimum.h
│       │   │   │   ├── mul.h
│       │   │   │   ├── neg.h
│       │   │   │   ├── pad.h
│       │   │   │   ├── pooling.h
│       │   │   │   ├── prelu.h
│       │   │   │   ├── process_broadcast_shapes.h
│       │   │   │   ├── quantize.h
│       │   │   │   ├── reduce.h
│       │   │   │   ├── requantize.h
│       │   │   │   ├── resize_nearest_neighbor.h
│       │   │   │   ├── round.h
│       │   │   │   ├── softmax.h
│       │   │   │   ├── strided_slice.h
│       │   │   │   ├── sub.h
│       │   │   │   └── tanh.h
│       │   │   ├── strided_slice_logic.h
│       │   │   ├── tensor_ctypes.h
│       │   │   ├── tensor.h
│       │   │   └── types.h
│       │   ├── kernel_util.cc
│       │   ├── kernel_util.h
│       │   ├── op_macros.h
│       │   └── padding.h
│       ├── micro
│       │   ├── all_ops_resolver.cc
│       │   ├── all_ops_resolver.h
│       │   ├── benchmarks
│       │   │   ├── keyword_scrambled_model_data.cc
│       │   │   └── keyword_scrambled_model_data.h
│       │   ├── compatibility.h
│       │   ├── debug_log.cc
│       │   ├── debug_log.h
│       │   ├── examples
│       │   │   └── hello_world
│       │   │       ├── constants.cc
│       │   │       ├── constants.h
│       │   │       ├── main.cc
│       │   │       ├── main_functions.cc
│       │   │       ├── main_functions.h
│       │   │       ├── model.cc
│       │   │       ├── model.h
│       │   │       ├── output_handler.cc
│       │   │       └── output_handler.h
│       │   ├── kernels
│       │   │   ├── activations.cc
│       │   │   ├── activation_utils.h
│       │   │   ├── add.cc
│       │   │   ├── arg_min_max.cc
│       │   │   ├── ceil.cc
│       │   │   ├── circular_buffer.cc
│       │   │   ├── comparisons.cc
│       │   │   ├── concatenation.cc
│       │   │   ├── conv.cc
│       │   │   ├── depthwise_conv.cc
│       │   │   ├── dequantize.cc
│       │   │   ├── elementwise.cc
│       │   │   ├── ethosu.cc
│       │   │   ├── floor.cc
│       │   │   ├── fully_connected.cc
│       │   │   ├── l2norm.cc
│       │   │   ├── logical.cc
│       │   │   ├── logistic.cc
│       │   │   ├── maximum_minimum.cc
│       │   │   ├── micro_ops.h
│       │   │   ├── micro_utils.h
│       │   │   ├── mul.cc
│       │   │   ├── neg.cc
│       │   │   ├── pack.cc
│       │   │   ├── pad.cc
│       │   │   ├── pooling.cc
│       │   │   ├── prelu.cc
│       │   │   ├── quantize.cc
│       │   │   ├── reduce.cc
│       │   │   ├── reshape.cc
│       │   │   ├── resize_nearest_neighbor.cc
│       │   │   ├── round.cc
│       │   │   ├── softmax.cc
│       │   │   ├── split.cc
│       │   │   ├── strided_slice.cc
│       │   │   ├── sub.cc
│       │   │   ├── svdf.cc
│       │   │   ├── tanh.cc
│       │   │   └── unpack.cc
│       │   ├── memory_helpers.cc
│       │   ├── memory_helpers.h
│       │   ├── memory_planner
│       │   │   ├── greedy_memory_planner.cc
│       │   │   ├── greedy_memory_planner.h
│       │   │   ├── linear_memory_planner.cc
│       │   │   ├── linear_memory_planner.h
│       │   │   └── memory_planner.h
│       │   ├── micro_allocator.cc
│       │   ├── micro_allocator.h
│       │   ├── micro_error_reporter.cc
│       │   ├── micro_error_reporter.h
│       │   ├── micro_interpreter.cc
│       │   ├── micro_interpreter.h
│       │   ├── micro_mutable_op_resolver.h
│       │   ├── micro_op_resolver.h
│       │   ├── micro_optional_debug_tools.cc
│       │   ├── micro_optional_debug_tools.h
│       │   ├── micro_profiler.cc
│       │   ├── micro_profiler.h
│       │   ├── micro_string.cc
│       │   ├── micro_string.h
│       │   ├── micro_time.cc
│       │   ├── micro_time.h
│       │   ├── micro_utils.cc
│       │   ├── micro_utils.h
│       │   ├── recording_micro_allocator.cc
│       │   ├── recording_micro_allocator.h
│       │   ├── recording_micro_interpreter.h
│       │   ├── recording_simple_memory_allocator.cc
│       │   ├── recording_simple_memory_allocator.h
│       │   ├── simple_memory_allocator.cc
│       │   ├── simple_memory_allocator.h
│       │   ├── test_helpers.cc
│       │   └── test_helpers.h
│       ├── schema
│       │   └── schema_generated.h
│       ├── string_type.h
│       ├── string_util.h
│       ├── type_to_tflitetype.h
│       └── version.h
├── third_party
│   ├── flatbuffers
│   │   ├── include
│   │   │   └── flatbuffers
│   │   │       ├── base.h
│   │   │       ├── flatbuffers.h
│   │   │       └── stl_emulation.h
│   │   └── LICENSE.txt
│   ├── gemmlowp
│   │   ├── fixedpoint
│   │   │   ├── fixedpoint.h
│   │   │   └── fixedpoint_sse.h
│   │   ├── internal
│   │   │   └── detect_platform.h
│   │   └── LICENSE
│   └── ruy
│       └── ruy
│           └── profiler
│               └── instrumentation.h