Т∙
Ыё
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.7.02v2.7.0-0-gc256c071bb28ей
|
dense_676/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_676/kernel
u
$dense_676/kernel/Read/ReadVariableOpReadVariableOpdense_676/kernel*
_output_shapes

:*
dtype0
t
dense_676/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_676/bias
m
"dense_676/bias/Read/ReadVariableOpReadVariableOpdense_676/bias*
_output_shapes
:*
dtype0
|
dense_677/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_677/kernel
u
$dense_677/kernel/Read/ReadVariableOpReadVariableOpdense_677/kernel*
_output_shapes

:*
dtype0
t
dense_677/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_677/bias
m
"dense_677/bias/Read/ReadVariableOpReadVariableOpdense_677/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

NoOpNoOp
н
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ш
value▐B█ B╘
┐
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

	kernel

bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
6
iter
	decay
learning_rate
momentum

	0

1
2
3

	0

1
2
3
 
н
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
 
\Z
VARIABLE_VALUEdense_676/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_676/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

	0

1

	0

1
 
н
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_677/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_677/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
н
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

(0
)1
 
 
 
 
 
 
 
 
 
 
 
 
4
	*total
	+count
,	variables
-	keras_api
D
	.total
	/count
0
_fn_kwargs
1	variables
2	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

*0
+1

,	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

.0
/1

1	variables
|
serving_default_input_339Placeholder*'
_output_shapes
:         *
dtype0*
shape:         
Б
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_339dense_676/kerneldense_676/biasdense_677/kerneldense_677/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_1841388
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
▓
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_676/kernel/Read/ReadVariableOp"dense_676/bias/Read/ReadVariableOp$dense_677/kernel/Read/ReadVariableOp"dense_677/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__traced_save_1841581
╜
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_676/kerneldense_676/biasdense_677/kerneldense_677/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference__traced_restore_1841627аЇ
╞
Ш
+__inference_dense_676_layer_call_fn_1841475

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_676_layer_call_and_return_conditional_losses_1841204o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╔	
ў
F__inference_dense_677_layer_call_and_return_conditional_losses_1841511

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
█
Р
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841437

inputs:
(dense_676_matmul_readvariableop_resource:7
)dense_676_biasadd_readvariableop_resource::
(dense_677_matmul_readvariableop_resource:7
)dense_677_biasadd_readvariableop_resource:
identityИв dense_676/BiasAdd/ReadVariableOpвdense_676/MatMul/ReadVariableOpв/dense_676/kernel/Regularizer/Abs/ReadVariableOpв dense_677/BiasAdd/ReadVariableOpвdense_677/MatMul/ReadVariableOpИ
dense_676/MatMul/ReadVariableOpReadVariableOp(dense_676_matmul_readvariableop_resource*
_output_shapes

:*
dtype0}
dense_676/MatMulMatMulinputs'dense_676/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ж
 dense_676/BiasAdd/ReadVariableOpReadVariableOp)dense_676_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
dense_676/BiasAddBiasAdddense_676/MatMul:product:0(dense_676/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         j
dense_676/SigmoidSigmoiddense_676/BiasAdd:output:0*
T0*'
_output_shapes
:         И
dense_677/MatMul/ReadVariableOpReadVariableOp(dense_677_matmul_readvariableop_resource*
_output_shapes

:*
dtype0М
dense_677/MatMulMatMuldense_676/Sigmoid:y:0'dense_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ж
 dense_677/BiasAdd/ReadVariableOpReadVariableOp)dense_677_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
dense_677/BiasAddBiasAdddense_677/MatMul:product:0(dense_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ш
/dense_676/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp(dense_676_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Й
 dense_676/kernel/Regularizer/AbsAbs7dense_676/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_676/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_676/kernel/Regularizer/SumSum$dense_676/kernel/Regularizer/Abs:y:0+dense_676/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_676/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_676/kernel/Regularizer/mulMul+dense_676/kernel/Regularizer/mul/x:output:0)dense_676/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentitydense_677/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp!^dense_676/BiasAdd/ReadVariableOp ^dense_676/MatMul/ReadVariableOp0^dense_676/kernel/Regularizer/Abs/ReadVariableOp!^dense_677/BiasAdd/ReadVariableOp ^dense_677/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2D
 dense_676/BiasAdd/ReadVariableOp dense_676/BiasAdd/ReadVariableOp2B
dense_676/MatMul/ReadVariableOpdense_676/MatMul/ReadVariableOp2b
/dense_676/kernel/Regularizer/Abs/ReadVariableOp/dense_676/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_677/BiasAdd/ReadVariableOp dense_677/BiasAdd/ReadVariableOp2B
dense_677/MatMul/ReadVariableOpdense_677/MatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
д
╙
0__inference_sequential_338_layer_call_fn_1841401

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841233o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╢
Ё
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841299

inputs#
dense_676_1841282:
dense_676_1841284:#
dense_677_1841287:
dense_677_1841289:
identityИв!dense_676/StatefulPartitionedCallв/dense_676/kernel/Regularizer/Abs/ReadVariableOpв!dense_677/StatefulPartitionedCallў
!dense_676/StatefulPartitionedCallStatefulPartitionedCallinputsdense_676_1841282dense_676_1841284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_676_layer_call_and_return_conditional_losses_1841204Ы
!dense_677/StatefulPartitionedCallStatefulPartitionedCall*dense_676/StatefulPartitionedCall:output:0dense_677_1841287dense_677_1841289*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_677_layer_call_and_return_conditional_losses_1841220Б
/dense_676/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_676_1841282*
_output_shapes

:*
dtype0Й
 dense_676/kernel/Regularizer/AbsAbs7dense_676/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_676/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_676/kernel/Regularizer/SumSum$dense_676/kernel/Regularizer/Abs:y:0+dense_676/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_676/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_676/kernel/Regularizer/mulMul+dense_676/kernel/Regularizer/mul/x:output:0)dense_676/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_677/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp"^dense_676/StatefulPartitionedCall0^dense_676/kernel/Regularizer/Abs/ReadVariableOp"^dense_677/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2F
!dense_676/StatefulPartitionedCall!dense_676/StatefulPartitionedCall2b
/dense_676/kernel/Regularizer/Abs/ReadVariableOp/dense_676/kernel/Regularizer/Abs/ReadVariableOp2F
!dense_677/StatefulPartitionedCall!dense_677/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
й
о
__inference_loss_fn_0_1841522J
8dense_676_kernel_regularizer_abs_readvariableop_resource:
identityИв/dense_676/kernel/Regularizer/Abs/ReadVariableOpи
/dense_676/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp8dense_676_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0Й
 dense_676/kernel/Regularizer/AbsAbs7dense_676/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_676/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_676/kernel/Regularizer/SumSum$dense_676/kernel/Regularizer/Abs:y:0+dense_676/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_676/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_676/kernel/Regularizer/mulMul+dense_676/kernel/Regularizer/mul/x:output:0)dense_676/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_676/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^dense_676/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_676/kernel/Regularizer/Abs/ReadVariableOp/dense_676/kernel/Regularizer/Abs/ReadVariableOp
┐
є
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841343
	input_339#
dense_676_1841326:
dense_676_1841328:#
dense_677_1841331:
dense_677_1841333:
identityИв!dense_676/StatefulPartitionedCallв/dense_676/kernel/Regularizer/Abs/ReadVariableOpв!dense_677/StatefulPartitionedCall·
!dense_676/StatefulPartitionedCallStatefulPartitionedCall	input_339dense_676_1841326dense_676_1841328*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_676_layer_call_and_return_conditional_losses_1841204Ы
!dense_677/StatefulPartitionedCallStatefulPartitionedCall*dense_676/StatefulPartitionedCall:output:0dense_677_1841331dense_677_1841333*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_677_layer_call_and_return_conditional_losses_1841220Б
/dense_676/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_676_1841326*
_output_shapes

:*
dtype0Й
 dense_676/kernel/Regularizer/AbsAbs7dense_676/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_676/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_676/kernel/Regularizer/SumSum$dense_676/kernel/Regularizer/Abs:y:0+dense_676/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_676/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_676/kernel/Regularizer/mulMul+dense_676/kernel/Regularizer/mul/x:output:0)dense_676/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_677/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp"^dense_676/StatefulPartitionedCall0^dense_676/kernel/Regularizer/Abs/ReadVariableOp"^dense_677/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2F
!dense_676/StatefulPartitionedCall!dense_676/StatefulPartitionedCall2b
/dense_676/kernel/Regularizer/Abs/ReadVariableOp/dense_676/kernel/Regularizer/Abs/ReadVariableOp2F
!dense_677/StatefulPartitionedCall!dense_677/StatefulPartitionedCall:R N
'
_output_shapes
:         
#
_user_specified_name	input_339
╢
Ё
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841233

inputs#
dense_676_1841205:
dense_676_1841207:#
dense_677_1841221:
dense_677_1841223:
identityИв!dense_676/StatefulPartitionedCallв/dense_676/kernel/Regularizer/Abs/ReadVariableOpв!dense_677/StatefulPartitionedCallў
!dense_676/StatefulPartitionedCallStatefulPartitionedCallinputsdense_676_1841205dense_676_1841207*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_676_layer_call_and_return_conditional_losses_1841204Ы
!dense_677/StatefulPartitionedCallStatefulPartitionedCall*dense_676/StatefulPartitionedCall:output:0dense_677_1841221dense_677_1841223*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_677_layer_call_and_return_conditional_losses_1841220Б
/dense_676/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_676_1841205*
_output_shapes

:*
dtype0Й
 dense_676/kernel/Regularizer/AbsAbs7dense_676/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_676/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_676/kernel/Regularizer/SumSum$dense_676/kernel/Regularizer/Abs:y:0+dense_676/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_676/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_676/kernel/Regularizer/mulMul+dense_676/kernel/Regularizer/mul/x:output:0)dense_676/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_677/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp"^dense_676/StatefulPartitionedCall0^dense_676/kernel/Regularizer/Abs/ReadVariableOp"^dense_677/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2F
!dense_676/StatefulPartitionedCall!dense_676/StatefulPartitionedCall2b
/dense_676/kernel/Regularizer/Abs/ReadVariableOp/dense_676/kernel/Regularizer/Abs/ReadVariableOp2F
!dense_677/StatefulPartitionedCall!dense_677/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╔	
ў
F__inference_dense_677_layer_call_and_return_conditional_losses_1841220

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
б
й
F__inference_dense_676_layer_call_and_return_conditional_losses_1841492

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв/dense_676/kernel/Regularizer/Abs/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         О
/dense_676/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0Й
 dense_676/kernel/Regularizer/AbsAbs7dense_676/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_676/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_676/kernel/Regularizer/SumSum$dense_676/kernel/Regularizer/Abs:y:0+dense_676/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_676/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_676/kernel/Regularizer/mulMul+dense_676/kernel/Regularizer/mul/x:output:0)dense_676/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         й
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_676/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_676/kernel/Regularizer/Abs/ReadVariableOp/dense_676/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
е
░
"__inference__wrapped_model_1841180
	input_339I
7sequential_338_dense_676_matmul_readvariableop_resource:F
8sequential_338_dense_676_biasadd_readvariableop_resource:I
7sequential_338_dense_677_matmul_readvariableop_resource:F
8sequential_338_dense_677_biasadd_readvariableop_resource:
identityИв/sequential_338/dense_676/BiasAdd/ReadVariableOpв.sequential_338/dense_676/MatMul/ReadVariableOpв/sequential_338/dense_677/BiasAdd/ReadVariableOpв.sequential_338/dense_677/MatMul/ReadVariableOpж
.sequential_338/dense_676/MatMul/ReadVariableOpReadVariableOp7sequential_338_dense_676_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ю
sequential_338/dense_676/MatMulMatMul	input_3396sequential_338/dense_676/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         д
/sequential_338/dense_676/BiasAdd/ReadVariableOpReadVariableOp8sequential_338_dense_676_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┴
 sequential_338/dense_676/BiasAddBiasAdd)sequential_338/dense_676/MatMul:product:07sequential_338/dense_676/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         И
 sequential_338/dense_676/SigmoidSigmoid)sequential_338/dense_676/BiasAdd:output:0*
T0*'
_output_shapes
:         ж
.sequential_338/dense_677/MatMul/ReadVariableOpReadVariableOp7sequential_338_dense_677_matmul_readvariableop_resource*
_output_shapes

:*
dtype0╣
sequential_338/dense_677/MatMulMatMul$sequential_338/dense_676/Sigmoid:y:06sequential_338/dense_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         д
/sequential_338/dense_677/BiasAdd/ReadVariableOpReadVariableOp8sequential_338_dense_677_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┴
 sequential_338/dense_677/BiasAddBiasAdd)sequential_338/dense_677/MatMul:product:07sequential_338/dense_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
IdentityIdentity)sequential_338/dense_677/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp0^sequential_338/dense_676/BiasAdd/ReadVariableOp/^sequential_338/dense_676/MatMul/ReadVariableOp0^sequential_338/dense_677/BiasAdd/ReadVariableOp/^sequential_338/dense_677/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2b
/sequential_338/dense_676/BiasAdd/ReadVariableOp/sequential_338/dense_676/BiasAdd/ReadVariableOp2`
.sequential_338/dense_676/MatMul/ReadVariableOp.sequential_338/dense_676/MatMul/ReadVariableOp2b
/sequential_338/dense_677/BiasAdd/ReadVariableOp/sequential_338/dense_677/BiasAdd/ReadVariableOp2`
.sequential_338/dense_677/MatMul/ReadVariableOp.sequential_338/dense_677/MatMul/ReadVariableOp:R N
'
_output_shapes
:         
#
_user_specified_name	input_339
б
й
F__inference_dense_676_layer_call_and_return_conditional_losses_1841204

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв/dense_676/kernel/Regularizer/Abs/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         О
/dense_676/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0Й
 dense_676/kernel/Regularizer/AbsAbs7dense_676/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_676/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_676/kernel/Regularizer/SumSum$dense_676/kernel/Regularizer/Abs:y:0+dense_676/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_676/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_676/kernel/Regularizer/mulMul+dense_676/kernel/Regularizer/mul/x:output:0)dense_676/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         й
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_676/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_676/kernel/Regularizer/Abs/ReadVariableOp/dense_676/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╢1
╘
#__inference__traced_restore_1841627
file_prefix3
!assignvariableop_dense_676_kernel:/
!assignvariableop_1_dense_676_bias:5
#assignvariableop_2_dense_677_kernel:/
!assignvariableop_3_dense_677_bias:%
assignvariableop_4_sgd_iter:	 &
assignvariableop_5_sgd_decay: .
$assignvariableop_6_sgd_learning_rate: )
assignvariableop_7_sgd_momentum: "
assignvariableop_8_total: "
assignvariableop_9_count: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: 
identity_13ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9√
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*б
valueЧBФB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHК
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ▀
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOpAssignVariableOp!assignvariableop_dense_676_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_676_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_677_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_677_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:К
AssignVariableOp_4AssignVariableOpassignvariableop_4_sgd_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_6AssignVariableOp$assignvariableop_6_sgd_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_7AssignVariableOpassignvariableop_7_sgd_momentumIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ╫
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: ─
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_13Identity_13:output:0*-
_input_shapes
: : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
д
╙
0__inference_sequential_338_layer_call_fn_1841414

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841299o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
н
╓
0__inference_sequential_338_layer_call_fn_1841244
	input_339
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCall	input_339unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841233o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:         
#
_user_specified_name	input_339
н
╓
0__inference_sequential_338_layer_call_fn_1841323
	input_339
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCall	input_339unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841299o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:         
#
_user_specified_name	input_339
█
Р
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841460

inputs:
(dense_676_matmul_readvariableop_resource:7
)dense_676_biasadd_readvariableop_resource::
(dense_677_matmul_readvariableop_resource:7
)dense_677_biasadd_readvariableop_resource:
identityИв dense_676/BiasAdd/ReadVariableOpвdense_676/MatMul/ReadVariableOpв/dense_676/kernel/Regularizer/Abs/ReadVariableOpв dense_677/BiasAdd/ReadVariableOpвdense_677/MatMul/ReadVariableOpИ
dense_676/MatMul/ReadVariableOpReadVariableOp(dense_676_matmul_readvariableop_resource*
_output_shapes

:*
dtype0}
dense_676/MatMulMatMulinputs'dense_676/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ж
 dense_676/BiasAdd/ReadVariableOpReadVariableOp)dense_676_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
dense_676/BiasAddBiasAdddense_676/MatMul:product:0(dense_676/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         j
dense_676/SigmoidSigmoiddense_676/BiasAdd:output:0*
T0*'
_output_shapes
:         И
dense_677/MatMul/ReadVariableOpReadVariableOp(dense_677_matmul_readvariableop_resource*
_output_shapes

:*
dtype0М
dense_677/MatMulMatMuldense_676/Sigmoid:y:0'dense_677/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ж
 dense_677/BiasAdd/ReadVariableOpReadVariableOp)dense_677_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
dense_677/BiasAddBiasAdddense_677/MatMul:product:0(dense_677/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ш
/dense_676/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp(dense_676_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Й
 dense_676/kernel/Regularizer/AbsAbs7dense_676/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_676/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_676/kernel/Regularizer/SumSum$dense_676/kernel/Regularizer/Abs:y:0+dense_676/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_676/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_676/kernel/Regularizer/mulMul+dense_676/kernel/Regularizer/mul/x:output:0)dense_676/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentitydense_677/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp!^dense_676/BiasAdd/ReadVariableOp ^dense_676/MatMul/ReadVariableOp0^dense_676/kernel/Regularizer/Abs/ReadVariableOp!^dense_677/BiasAdd/ReadVariableOp ^dense_677/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2D
 dense_676/BiasAdd/ReadVariableOp dense_676/BiasAdd/ReadVariableOp2B
dense_676/MatMul/ReadVariableOpdense_676/MatMul/ReadVariableOp2b
/dense_676/kernel/Regularizer/Abs/ReadVariableOp/dense_676/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_677/BiasAdd/ReadVariableOp dense_677/BiasAdd/ReadVariableOp2B
dense_677/MatMul/ReadVariableOpdense_677/MatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┐
є
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841363
	input_339#
dense_676_1841346:
dense_676_1841348:#
dense_677_1841351:
dense_677_1841353:
identityИв!dense_676/StatefulPartitionedCallв/dense_676/kernel/Regularizer/Abs/ReadVariableOpв!dense_677/StatefulPartitionedCall·
!dense_676/StatefulPartitionedCallStatefulPartitionedCall	input_339dense_676_1841346dense_676_1841348*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_676_layer_call_and_return_conditional_losses_1841204Ы
!dense_677/StatefulPartitionedCallStatefulPartitionedCall*dense_676/StatefulPartitionedCall:output:0dense_677_1841351dense_677_1841353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_677_layer_call_and_return_conditional_losses_1841220Б
/dense_676/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_676_1841346*
_output_shapes

:*
dtype0Й
 dense_676/kernel/Regularizer/AbsAbs7dense_676/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_676/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_676/kernel/Regularizer/SumSum$dense_676/kernel/Regularizer/Abs:y:0+dense_676/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_676/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_676/kernel/Regularizer/mulMul+dense_676/kernel/Regularizer/mul/x:output:0)dense_676/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_677/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp"^dense_676/StatefulPartitionedCall0^dense_676/kernel/Regularizer/Abs/ReadVariableOp"^dense_677/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2F
!dense_676/StatefulPartitionedCall!dense_676/StatefulPartitionedCall2b
/dense_676/kernel/Regularizer/Abs/ReadVariableOp/dense_676/kernel/Regularizer/Abs/ReadVariableOp2F
!dense_677/StatefulPartitionedCall!dense_677/StatefulPartitionedCall:R N
'
_output_shapes
:         
#
_user_specified_name	input_339
┬!
√
 __inference__traced_save_1841581
file_prefix/
+savev2_dense_676_kernel_read_readvariableop-
)savev2_dense_676_bias_read_readvariableop/
+savev2_dense_677_kernel_read_readvariableop-
)savev2_dense_677_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: °
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*б
valueЧBФB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЗ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B Ъ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_676_kernel_read_readvariableop)savev2_dense_676_bias_read_readvariableop+savev2_dense_677_kernel_read_readvariableop)savev2_dense_677_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*G
_input_shapes6
4: ::::: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╞
Ш
+__inference_dense_677_layer_call_fn_1841501

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dense_677_layer_call_and_return_conditional_losses_1841220o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
∙
╦
%__inference_signature_wrapper_1841388
	input_339
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCall╘
StatefulPartitionedCallStatefulPartitionedCall	input_339unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_1841180o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
'
_output_shapes
:         
#
_user_specified_name	input_339"ВL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*░
serving_defaultЬ
?
	input_3392
serving_default_input_339:0         =
	dense_6770
StatefulPartitionedCall:0         tensorflow/serving/predict:ц?
┤
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
3__call__
*4&call_and_return_all_conditional_losses
5_default_save_signature"
_tf_keras_sequential
╗

	kernel

bias
	variables
trainable_variables
regularization_losses
	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
I
iter
	decay
learning_rate
momentum"
	optimizer
<
	0

1
2
3"
trackable_list_wrapper
<
	0

1
2
3"
trackable_list_wrapper
'
:0"
trackable_list_wrapper
╩
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
3__call__
5_default_save_signature
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
,
;serving_default"
signature_map
": 2dense_676/kernel
:2dense_676/bias
.
	0

1"
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
'
:0"
trackable_list_wrapper
н
non_trainable_variables

layers
 metrics
!layer_regularization_losses
"layer_metrics
	variables
trainable_variables
regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
": 2dense_677/kernel
:2dense_677/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
:0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	*total
	+count
,	variables
-	keras_api"
_tf_keras_metric
^
	.total
	/count
0
_fn_kwargs
1	variables
2	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
*0
+1"
trackable_list_wrapper
-
,	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
.0
/1"
trackable_list_wrapper
-
1	variables"
_generic_user_object
О2Л
0__inference_sequential_338_layer_call_fn_1841244
0__inference_sequential_338_layer_call_fn_1841401
0__inference_sequential_338_layer_call_fn_1841414
0__inference_sequential_338_layer_call_fn_1841323└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
·2ў
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841437
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841460
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841343
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841363└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╧B╠
"__inference__wrapped_model_1841180	input_339"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒2╥
+__inference_dense_676_layer_call_fn_1841475в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_dense_676_layer_call_and_return_conditional_losses_1841492в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒2╥
+__inference_dense_677_layer_call_fn_1841501в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_dense_677_layer_call_and_return_conditional_losses_1841511в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┤2▒
__inference_loss_fn_0_1841522П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
╬B╦
%__inference_signature_wrapper_1841388	input_339"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 Ч
"__inference__wrapped_model_1841180q	
2в/
(в%
#К 
	input_339         
к "5к2
0
	dense_677#К 
	dense_677         ж
F__inference_dense_676_layer_call_and_return_conditional_losses_1841492\	
/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ ~
+__inference_dense_676_layer_call_fn_1841475O	
/в,
%в"
 К
inputs         
к "К         ж
F__inference_dense_677_layer_call_and_return_conditional_losses_1841511\/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ ~
+__inference_dense_677_layer_call_fn_1841501O/в,
%в"
 К
inputs         
к "К         <
__inference_loss_fn_0_1841522	в

в 
к "К ╕
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841343i	
:в7
0в-
#К 
	input_339         
p 

 
к "%в"
К
0         
Ъ ╕
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841363i	
:в7
0в-
#К 
	input_339         
p

 
к "%в"
К
0         
Ъ ╡
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841437f	
7в4
-в*
 К
inputs         
p 

 
к "%в"
К
0         
Ъ ╡
K__inference_sequential_338_layer_call_and_return_conditional_losses_1841460f	
7в4
-в*
 К
inputs         
p

 
к "%в"
К
0         
Ъ Р
0__inference_sequential_338_layer_call_fn_1841244\	
:в7
0в-
#К 
	input_339         
p 

 
к "К         Р
0__inference_sequential_338_layer_call_fn_1841323\	
:в7
0в-
#К 
	input_339         
p

 
к "К         Н
0__inference_sequential_338_layer_call_fn_1841401Y	
7в4
-в*
 К
inputs         
p 

 
к "К         Н
0__inference_sequential_338_layer_call_fn_1841414Y	
7в4
-в*
 К
inputs         
p

 
к "К         з
%__inference_signature_wrapper_1841388~	
?в<
в 
5к2
0
	input_339#К 
	input_339         "5к2
0
	dense_677#К 
	dense_677         