?	?;?(A'*@?;?(A'*@!?;?(A'*@	???e?6@???e?6@!???e?6@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?;?(A'*@?Σ????1]?z??Aw?*2??I|H??ߐ"@Y???????rEagerKernelExecute 0*	??ʡ}j@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat\?W zR??!R?5(??;@)??l?%???1??LWK?9@:Preprocessing2F
Iterator::Model~;??"??!?~???B@)ݲC?Ö??1?Q?p?4@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?=?-??!vG\dq?<@)????P1??1??]??s4@:Preprocessing2U
Iterator::Model::ParallelMapV2??:???!'?rSL0@)??:???1'?rSL0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::TensorSlice?Գ ????!x??? @)?Գ ????1x??? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipiQ????!??xqO@)??????1?Ҕ]?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor˼Uס?r?!!?I?F%@)˼Uס?r?1!?I?F%@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 12.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?71.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9???e?6@I??G?-U@QOt??C|%@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?Σ?????Σ????!?Σ????      ??!       "	]?z??]?z??!]?z??*      ??!       2	w?*2??w?*2??!w?*2??:	|H??ߐ"@|H??ߐ"@!|H??ߐ"@B      ??!       J	??????????????!???????R      ??!       Z	??????????????!???????b      ??!       JGPUY???e?6@b q??G?-U@yOt??C|%@?"C
%gradient_tape/sequential/dense/MatMulMatMul?x?[eK??!?x?[eK??0"K
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam??I???!??? u/??"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??v???!??^?Y??".
IteratorGetNext/_11_Send?????!G?????"5
sequential/dense/MatMulMatMul|69?Y???!/???]??0"C
'gradient_tape/sequential/dense/MatMul_1MatMulW,?'F??!?tۭL`??"e
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mulMul|?NTz???!??}????"5
sequential/dense/BiasAddBiasAdd?g????!?'awA???"s
Ycategorical_crossentropy/ArithmeticOptimizer/ReorderCastLikeAndValuePreserving_float_CastCast+?؞I???!֊ܝ?8??"D
)sequential/embedding/embedding_lookup/_19_Send?g???R??!u?~?<???Q      Y@Y?????*M@aVUUUU?D@q?$?????y?t?Zw??"?

both?Your program is POTENTIALLY input-bound because 12.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?71.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Pascal)(: B 