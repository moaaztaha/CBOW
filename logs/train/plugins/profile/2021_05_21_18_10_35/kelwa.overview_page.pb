?	???Q?D@???Q?D@!???Q?D@	R5?6????R5?6????!R5?6????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL???Q?D@??]g?+@1??J??l#@A?Ϲ????IP?"?r1@Y!v??y??rEagerKernelExecute 0*	1?Z?c@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatl? [???!?,S??<@)ge???\??1???<|B:@:Preprocessing2U
Iterator::Model::ParallelMapV2wd?6????!e?|???6@)wd?6????1e?|???6@:Preprocessing2F
Iterator::Model???M?q??!?^?J?F@)a?d73??1????e_6@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap
?\????!5Ygf?4@)be4?yœ?1u=?M(@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::TensorSlicee9	?/???!a=???!@)e9	?/???1a=???!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip^?o%;??!s?N??SK@)+??6?~?1K????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor-?}?q?!6????@)-?}?q?16????@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 33.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?41.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9S5?6????In?j?.?R@Q????67@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??]g?+@??]g?+@!??]g?+@      ??!       "	??J??l#@??J??l#@!??J??l#@*      ??!       2	?Ϲ?????Ϲ????!?Ϲ????:	P?"?r1@P?"?r1@!P?"?r1@B      ??!       J	!v??y??!v??y??!!v??y??R      ??!       Z	!v??y??!v??y??!!v??y??b      ??!       JGPUYS5?6????b qn?j?.?R@y????67@?"$
ArgMax_1ArgMaxÚ???;??!Ú???;??""
ArgMaxArgMax?l^{????!??(b??"G
)gradient_tape/sequential_1/dense_1/MatMulMatMul?.?;????!?????X??0"K
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdamT{?Z?]??!x??,?#??"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitskhL?Q&??!?E??????".
IteratorGetNext/_11_SendU??S????!???K?T??"9
sequential_1/dense_1/MatMulMatMulސB?
??!?|?)???0"G
+gradient_tape/sequential_1/dense_1/MatMul_1MatMul??ˁ????!?2??l??"9
sequential_1/dense_1/SoftmaxSoftmax??도?!k?Z?uB??"e
Lgradient_tape/categorical_crossentropy/softmax_cross_entropy_with_logits/mulMul!?????k?!$?:?^??Q      Y@Y	?%??PK@a??Kh?F@q??p>?D&@y??g/??"?
both?Your program is POTENTIALLY input-bound because 33.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?41.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?11.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Pascal)(: B 