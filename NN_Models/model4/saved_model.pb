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
dense_674/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_674/kernel
u
$dense_674/kernel/Read/ReadVariableOpReadVariableOpdense_674/kernel*
_output_shapes

:*
dtype0
t
dense_674/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_674/bias
m
"dense_674/bias/Read/ReadVariableOpReadVariableOpdense_674/bias*
_output_shapes
:*
dtype0
|
dense_675/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_675/kernel
u
$dense_675/kernel/Read/ReadVariableOpReadVariableOpdense_675/kernel*
_output_shapes

:*
dtype0
t
dense_675/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_675/bias
m
"dense_675/bias/Read/ReadVariableOpReadVariableOpdense_675/bias*
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
VARIABLE_VALUEdense_674/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_674/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_675/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_675/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
serving_default_input_338Placeholder*'
_output_shapes
:         *
dtype0*
shape:         
Б
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_338dense_674/kerneldense_674/biasdense_675/kerneldense_675/bias*
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
%__inference_signature_wrapper_1836176
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
▓
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_674/kernel/Read/ReadVariableOp"dense_674/bias/Read/ReadVariableOp$dense_675/kernel/Read/ReadVariableOp"dense_675/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
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
 __inference__traced_save_1836369
╜
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_674/kerneldense_674/biasdense_675/kerneldense_675/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*
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
#__inference__traced_restore_1836415аЇ
╔	
ў
F__inference_dense_675_layer_call_and_return_conditional_losses_1836008

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
д
╙
0__inference_sequential_337_layer_call_fn_1836202

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
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836087o
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
╞
Ш
+__inference_dense_675_layer_call_fn_1836289

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
F__inference_dense_675_layer_call_and_return_conditional_losses_1836008o
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
┐
є
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836131
	input_338#
dense_674_1836114:
dense_674_1836116:#
dense_675_1836119:
dense_675_1836121:
identityИв!dense_674/StatefulPartitionedCallв/dense_674/kernel/Regularizer/Abs/ReadVariableOpв!dense_675/StatefulPartitionedCall·
!dense_674/StatefulPartitionedCallStatefulPartitionedCall	input_338dense_674_1836114dense_674_1836116*
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
F__inference_dense_674_layer_call_and_return_conditional_losses_1835992Ы
!dense_675/StatefulPartitionedCallStatefulPartitionedCall*dense_674/StatefulPartitionedCall:output:0dense_675_1836119dense_675_1836121*
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
F__inference_dense_675_layer_call_and_return_conditional_losses_1836008Б
/dense_674/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_674_1836114*
_output_shapes

:*
dtype0Й
 dense_674/kernel/Regularizer/AbsAbs7dense_674/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_674/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_674/kernel/Regularizer/SumSum$dense_674/kernel/Regularizer/Abs:y:0+dense_674/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_674/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_674/kernel/Regularizer/mulMul+dense_674/kernel/Regularizer/mul/x:output:0)dense_674/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_675/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp"^dense_674/StatefulPartitionedCall0^dense_674/kernel/Regularizer/Abs/ReadVariableOp"^dense_675/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2F
!dense_674/StatefulPartitionedCall!dense_674/StatefulPartitionedCall2b
/dense_674/kernel/Regularizer/Abs/ReadVariableOp/dense_674/kernel/Regularizer/Abs/ReadVariableOp2F
!dense_675/StatefulPartitionedCall!dense_675/StatefulPartitionedCall:R N
'
_output_shapes
:         
#
_user_specified_name	input_338
█
Р
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836248

inputs:
(dense_674_matmul_readvariableop_resource:7
)dense_674_biasadd_readvariableop_resource::
(dense_675_matmul_readvariableop_resource:7
)dense_675_biasadd_readvariableop_resource:
identityИв dense_674/BiasAdd/ReadVariableOpвdense_674/MatMul/ReadVariableOpв/dense_674/kernel/Regularizer/Abs/ReadVariableOpв dense_675/BiasAdd/ReadVariableOpвdense_675/MatMul/ReadVariableOpИ
dense_674/MatMul/ReadVariableOpReadVariableOp(dense_674_matmul_readvariableop_resource*
_output_shapes

:*
dtype0}
dense_674/MatMulMatMulinputs'dense_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ж
 dense_674/BiasAdd/ReadVariableOpReadVariableOp)dense_674_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
dense_674/BiasAddBiasAdddense_674/MatMul:product:0(dense_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         j
dense_674/SigmoidSigmoiddense_674/BiasAdd:output:0*
T0*'
_output_shapes
:         И
dense_675/MatMul/ReadVariableOpReadVariableOp(dense_675_matmul_readvariableop_resource*
_output_shapes

:*
dtype0М
dense_675/MatMulMatMuldense_674/Sigmoid:y:0'dense_675/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ж
 dense_675/BiasAdd/ReadVariableOpReadVariableOp)dense_675_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
dense_675/BiasAddBiasAdddense_675/MatMul:product:0(dense_675/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ш
/dense_674/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp(dense_674_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Й
 dense_674/kernel/Regularizer/AbsAbs7dense_674/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_674/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_674/kernel/Regularizer/SumSum$dense_674/kernel/Regularizer/Abs:y:0+dense_674/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_674/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_674/kernel/Regularizer/mulMul+dense_674/kernel/Regularizer/mul/x:output:0)dense_674/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentitydense_675/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp!^dense_674/BiasAdd/ReadVariableOp ^dense_674/MatMul/ReadVariableOp0^dense_674/kernel/Regularizer/Abs/ReadVariableOp!^dense_675/BiasAdd/ReadVariableOp ^dense_675/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2D
 dense_674/BiasAdd/ReadVariableOp dense_674/BiasAdd/ReadVariableOp2B
dense_674/MatMul/ReadVariableOpdense_674/MatMul/ReadVariableOp2b
/dense_674/kernel/Regularizer/Abs/ReadVariableOp/dense_674/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_675/BiasAdd/ReadVariableOp dense_675/BiasAdd/ReadVariableOp2B
dense_675/MatMul/ReadVariableOpdense_675/MatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╢
Ё
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836087

inputs#
dense_674_1836070:
dense_674_1836072:#
dense_675_1836075:
dense_675_1836077:
identityИв!dense_674/StatefulPartitionedCallв/dense_674/kernel/Regularizer/Abs/ReadVariableOpв!dense_675/StatefulPartitionedCallў
!dense_674/StatefulPartitionedCallStatefulPartitionedCallinputsdense_674_1836070dense_674_1836072*
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
F__inference_dense_674_layer_call_and_return_conditional_losses_1835992Ы
!dense_675/StatefulPartitionedCallStatefulPartitionedCall*dense_674/StatefulPartitionedCall:output:0dense_675_1836075dense_675_1836077*
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
F__inference_dense_675_layer_call_and_return_conditional_losses_1836008Б
/dense_674/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_674_1836070*
_output_shapes

:*
dtype0Й
 dense_674/kernel/Regularizer/AbsAbs7dense_674/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_674/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_674/kernel/Regularizer/SumSum$dense_674/kernel/Regularizer/Abs:y:0+dense_674/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_674/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_674/kernel/Regularizer/mulMul+dense_674/kernel/Regularizer/mul/x:output:0)dense_674/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_675/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp"^dense_674/StatefulPartitionedCall0^dense_674/kernel/Regularizer/Abs/ReadVariableOp"^dense_675/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2F
!dense_674/StatefulPartitionedCall!dense_674/StatefulPartitionedCall2b
/dense_674/kernel/Regularizer/Abs/ReadVariableOp/dense_674/kernel/Regularizer/Abs/ReadVariableOp2F
!dense_675/StatefulPartitionedCall!dense_675/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
█
Р
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836225

inputs:
(dense_674_matmul_readvariableop_resource:7
)dense_674_biasadd_readvariableop_resource::
(dense_675_matmul_readvariableop_resource:7
)dense_675_biasadd_readvariableop_resource:
identityИв dense_674/BiasAdd/ReadVariableOpвdense_674/MatMul/ReadVariableOpв/dense_674/kernel/Regularizer/Abs/ReadVariableOpв dense_675/BiasAdd/ReadVariableOpвdense_675/MatMul/ReadVariableOpИ
dense_674/MatMul/ReadVariableOpReadVariableOp(dense_674_matmul_readvariableop_resource*
_output_shapes

:*
dtype0}
dense_674/MatMulMatMulinputs'dense_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ж
 dense_674/BiasAdd/ReadVariableOpReadVariableOp)dense_674_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
dense_674/BiasAddBiasAdddense_674/MatMul:product:0(dense_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         j
dense_674/SigmoidSigmoiddense_674/BiasAdd:output:0*
T0*'
_output_shapes
:         И
dense_675/MatMul/ReadVariableOpReadVariableOp(dense_675_matmul_readvariableop_resource*
_output_shapes

:*
dtype0М
dense_675/MatMulMatMuldense_674/Sigmoid:y:0'dense_675/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ж
 dense_675/BiasAdd/ReadVariableOpReadVariableOp)dense_675_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
dense_675/BiasAddBiasAdddense_675/MatMul:product:0(dense_675/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ш
/dense_674/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp(dense_674_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Й
 dense_674/kernel/Regularizer/AbsAbs7dense_674/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_674/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_674/kernel/Regularizer/SumSum$dense_674/kernel/Regularizer/Abs:y:0+dense_674/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_674/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_674/kernel/Regularizer/mulMul+dense_674/kernel/Regularizer/mul/x:output:0)dense_674/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentitydense_675/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp!^dense_674/BiasAdd/ReadVariableOp ^dense_674/MatMul/ReadVariableOp0^dense_674/kernel/Regularizer/Abs/ReadVariableOp!^dense_675/BiasAdd/ReadVariableOp ^dense_675/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2D
 dense_674/BiasAdd/ReadVariableOp dense_674/BiasAdd/ReadVariableOp2B
dense_674/MatMul/ReadVariableOpdense_674/MatMul/ReadVariableOp2b
/dense_674/kernel/Regularizer/Abs/ReadVariableOp/dense_674/kernel/Regularizer/Abs/ReadVariableOp2D
 dense_675/BiasAdd/ReadVariableOp dense_675/BiasAdd/ReadVariableOp2B
dense_675/MatMul/ReadVariableOpdense_675/MatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
е
░
"__inference__wrapped_model_1835968
	input_338I
7sequential_337_dense_674_matmul_readvariableop_resource:F
8sequential_337_dense_674_biasadd_readvariableop_resource:I
7sequential_337_dense_675_matmul_readvariableop_resource:F
8sequential_337_dense_675_biasadd_readvariableop_resource:
identityИв/sequential_337/dense_674/BiasAdd/ReadVariableOpв.sequential_337/dense_674/MatMul/ReadVariableOpв/sequential_337/dense_675/BiasAdd/ReadVariableOpв.sequential_337/dense_675/MatMul/ReadVariableOpж
.sequential_337/dense_674/MatMul/ReadVariableOpReadVariableOp7sequential_337_dense_674_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ю
sequential_337/dense_674/MatMulMatMul	input_3386sequential_337/dense_674/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         д
/sequential_337/dense_674/BiasAdd/ReadVariableOpReadVariableOp8sequential_337_dense_674_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┴
 sequential_337/dense_674/BiasAddBiasAdd)sequential_337/dense_674/MatMul:product:07sequential_337/dense_674/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         И
 sequential_337/dense_674/SigmoidSigmoid)sequential_337/dense_674/BiasAdd:output:0*
T0*'
_output_shapes
:         ж
.sequential_337/dense_675/MatMul/ReadVariableOpReadVariableOp7sequential_337_dense_675_matmul_readvariableop_resource*
_output_shapes

:*
dtype0╣
sequential_337/dense_675/MatMulMatMul$sequential_337/dense_674/Sigmoid:y:06sequential_337/dense_675/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         д
/sequential_337/dense_675/BiasAdd/ReadVariableOpReadVariableOp8sequential_337_dense_675_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┴
 sequential_337/dense_675/BiasAddBiasAdd)sequential_337/dense_675/MatMul:product:07sequential_337/dense_675/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
IdentityIdentity)sequential_337/dense_675/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp0^sequential_337/dense_674/BiasAdd/ReadVariableOp/^sequential_337/dense_674/MatMul/ReadVariableOp0^sequential_337/dense_675/BiasAdd/ReadVariableOp/^sequential_337/dense_675/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2b
/sequential_337/dense_674/BiasAdd/ReadVariableOp/sequential_337/dense_674/BiasAdd/ReadVariableOp2`
.sequential_337/dense_674/MatMul/ReadVariableOp.sequential_337/dense_674/MatMul/ReadVariableOp2b
/sequential_337/dense_675/BiasAdd/ReadVariableOp/sequential_337/dense_675/BiasAdd/ReadVariableOp2`
.sequential_337/dense_675/MatMul/ReadVariableOp.sequential_337/dense_675/MatMul/ReadVariableOp:R N
'
_output_shapes
:         
#
_user_specified_name	input_338
н
╓
0__inference_sequential_337_layer_call_fn_1836111
	input_338
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCall	input_338unknown	unknown_0	unknown_1	unknown_2*
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
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836087o
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
_user_specified_name	input_338
∙
╦
%__inference_signature_wrapper_1836176
	input_338
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCall╘
StatefulPartitionedCallStatefulPartitionedCall	input_338unknown	unknown_0	unknown_1	unknown_2*
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
"__inference__wrapped_model_1835968o
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
_user_specified_name	input_338
╞
Ш
+__inference_dense_674_layer_call_fn_1836263

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
F__inference_dense_674_layer_call_and_return_conditional_losses_1835992o
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
┐
є
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836151
	input_338#
dense_674_1836134:
dense_674_1836136:#
dense_675_1836139:
dense_675_1836141:
identityИв!dense_674/StatefulPartitionedCallв/dense_674/kernel/Regularizer/Abs/ReadVariableOpв!dense_675/StatefulPartitionedCall·
!dense_674/StatefulPartitionedCallStatefulPartitionedCall	input_338dense_674_1836134dense_674_1836136*
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
F__inference_dense_674_layer_call_and_return_conditional_losses_1835992Ы
!dense_675/StatefulPartitionedCallStatefulPartitionedCall*dense_674/StatefulPartitionedCall:output:0dense_675_1836139dense_675_1836141*
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
F__inference_dense_675_layer_call_and_return_conditional_losses_1836008Б
/dense_674/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_674_1836134*
_output_shapes

:*
dtype0Й
 dense_674/kernel/Regularizer/AbsAbs7dense_674/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_674/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_674/kernel/Regularizer/SumSum$dense_674/kernel/Regularizer/Abs:y:0+dense_674/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_674/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_674/kernel/Regularizer/mulMul+dense_674/kernel/Regularizer/mul/x:output:0)dense_674/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_675/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp"^dense_674/StatefulPartitionedCall0^dense_674/kernel/Regularizer/Abs/ReadVariableOp"^dense_675/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2F
!dense_674/StatefulPartitionedCall!dense_674/StatefulPartitionedCall2b
/dense_674/kernel/Regularizer/Abs/ReadVariableOp/dense_674/kernel/Regularizer/Abs/ReadVariableOp2F
!dense_675/StatefulPartitionedCall!dense_675/StatefulPartitionedCall:R N
'
_output_shapes
:         
#
_user_specified_name	input_338
╔	
ў
F__inference_dense_675_layer_call_and_return_conditional_losses_1836299

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
й
о
__inference_loss_fn_0_1836310J
8dense_674_kernel_regularizer_abs_readvariableop_resource:
identityИв/dense_674/kernel/Regularizer/Abs/ReadVariableOpи
/dense_674/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp8dense_674_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0Й
 dense_674/kernel/Regularizer/AbsAbs7dense_674/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_674/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_674/kernel/Regularizer/SumSum$dense_674/kernel/Regularizer/Abs:y:0+dense_674/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_674/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_674/kernel/Regularizer/mulMul+dense_674/kernel/Regularizer/mul/x:output:0)dense_674/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_674/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^dense_674/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_674/kernel/Regularizer/Abs/ReadVariableOp/dense_674/kernel/Regularizer/Abs/ReadVariableOp
┬!
√
 __inference__traced_save_1836369
file_prefix/
+savev2_dense_674_kernel_read_readvariableop-
)savev2_dense_674_bias_read_readvariableop/
+savev2_dense_675_kernel_read_readvariableop-
)savev2_dense_675_bias_read_readvariableop'
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_674_kernel_read_readvariableop)savev2_dense_674_bias_read_readvariableop+savev2_dense_675_kernel_read_readvariableop)savev2_dense_675_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
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
д
╙
0__inference_sequential_337_layer_call_fn_1836189

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
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836021o
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
б
й
F__inference_dense_674_layer_call_and_return_conditional_losses_1835992

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв/dense_674/kernel/Regularizer/Abs/ReadVariableOpt
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
/dense_674/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0Й
 dense_674/kernel/Regularizer/AbsAbs7dense_674/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_674/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_674/kernel/Regularizer/SumSum$dense_674/kernel/Regularizer/Abs:y:0+dense_674/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_674/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_674/kernel/Regularizer/mulMul+dense_674/kernel/Regularizer/mul/x:output:0)dense_674/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         й
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_674/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_674/kernel/Regularizer/Abs/ReadVariableOp/dense_674/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
б
й
F__inference_dense_674_layer_call_and_return_conditional_losses_1836280

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв/dense_674/kernel/Regularizer/Abs/ReadVariableOpt
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
/dense_674/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0Й
 dense_674/kernel/Regularizer/AbsAbs7dense_674/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_674/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_674/kernel/Regularizer/SumSum$dense_674/kernel/Regularizer/Abs:y:0+dense_674/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_674/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_674/kernel/Regularizer/mulMul+dense_674/kernel/Regularizer/mul/x:output:0)dense_674/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         й
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_674/kernel/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_674/kernel/Regularizer/Abs/ReadVariableOp/dense_674/kernel/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
н
╓
0__inference_sequential_337_layer_call_fn_1836032
	input_338
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCall	input_338unknown	unknown_0	unknown_1	unknown_2*
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
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836021o
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
_user_specified_name	input_338
╢
Ё
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836021

inputs#
dense_674_1835993:
dense_674_1835995:#
dense_675_1836009:
dense_675_1836011:
identityИв!dense_674/StatefulPartitionedCallв/dense_674/kernel/Regularizer/Abs/ReadVariableOpв!dense_675/StatefulPartitionedCallў
!dense_674/StatefulPartitionedCallStatefulPartitionedCallinputsdense_674_1835993dense_674_1835995*
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
F__inference_dense_674_layer_call_and_return_conditional_losses_1835992Ы
!dense_675/StatefulPartitionedCallStatefulPartitionedCall*dense_674/StatefulPartitionedCall:output:0dense_675_1836009dense_675_1836011*
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
F__inference_dense_675_layer_call_and_return_conditional_losses_1836008Б
/dense_674/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_674_1835993*
_output_shapes

:*
dtype0Й
 dense_674/kernel/Regularizer/AbsAbs7dense_674/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_674/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ы
 dense_674/kernel/Regularizer/SumSum$dense_674/kernel/Regularizer/Abs:y:0+dense_674/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_674/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
╫#<а
 dense_674/kernel/Regularizer/mulMul+dense_674/kernel/Regularizer/mul/x:output:0)dense_674/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_675/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp"^dense_674/StatefulPartitionedCall0^dense_674/kernel/Regularizer/Abs/ReadVariableOp"^dense_675/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2F
!dense_674/StatefulPartitionedCall!dense_674/StatefulPartitionedCall2b
/dense_674/kernel/Regularizer/Abs/ReadVariableOp/dense_674/kernel/Regularizer/Abs/ReadVariableOp2F
!dense_675/StatefulPartitionedCall!dense_675/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╢1
╘
#__inference__traced_restore_1836415
file_prefix3
!assignvariableop_dense_674_kernel:/
!assignvariableop_1_dense_674_bias:5
#assignvariableop_2_dense_675_kernel:/
!assignvariableop_3_dense_675_bias:%
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_674_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_674_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_675_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_675_biasIdentity_3:output:0"/device:CPU:0*
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
_user_specified_namefile_prefix"ВL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*░
serving_defaultЬ
?
	input_3382
serving_default_input_338:0         =
	dense_6750
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
": 2dense_674/kernel
:2dense_674/bias
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
": 2dense_675/kernel
:2dense_675/bias
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
0__inference_sequential_337_layer_call_fn_1836032
0__inference_sequential_337_layer_call_fn_1836189
0__inference_sequential_337_layer_call_fn_1836202
0__inference_sequential_337_layer_call_fn_1836111└
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
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836225
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836248
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836131
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836151└
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
"__inference__wrapped_model_1835968	input_338"Ш
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
+__inference_dense_674_layer_call_fn_1836263в
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
F__inference_dense_674_layer_call_and_return_conditional_losses_1836280в
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
+__inference_dense_675_layer_call_fn_1836289в
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
F__inference_dense_675_layer_call_and_return_conditional_losses_1836299в
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
__inference_loss_fn_0_1836310П
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
%__inference_signature_wrapper_1836176	input_338"Ф
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
"__inference__wrapped_model_1835968q	
2в/
(в%
#К 
	input_338         
к "5к2
0
	dense_675#К 
	dense_675         ж
F__inference_dense_674_layer_call_and_return_conditional_losses_1836280\	
/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ ~
+__inference_dense_674_layer_call_fn_1836263O	
/в,
%в"
 К
inputs         
к "К         ж
F__inference_dense_675_layer_call_and_return_conditional_losses_1836299\/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ ~
+__inference_dense_675_layer_call_fn_1836289O/в,
%в"
 К
inputs         
к "К         <
__inference_loss_fn_0_1836310	в

в 
к "К ╕
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836131i	
:в7
0в-
#К 
	input_338         
p 

 
к "%в"
К
0         
Ъ ╕
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836151i	
:в7
0в-
#К 
	input_338         
p

 
к "%в"
К
0         
Ъ ╡
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836225f	
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
K__inference_sequential_337_layer_call_and_return_conditional_losses_1836248f	
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
0__inference_sequential_337_layer_call_fn_1836032\	
:в7
0в-
#К 
	input_338         
p 

 
к "К         Р
0__inference_sequential_337_layer_call_fn_1836111\	
:в7
0в-
#К 
	input_338         
p

 
к "К         Н
0__inference_sequential_337_layer_call_fn_1836189Y	
7в4
-в*
 К
inputs         
p 

 
к "К         Н
0__inference_sequential_337_layer_call_fn_1836202Y	
7в4
-в*
 К
inputs         
p

 
к "К         з
%__inference_signature_wrapper_1836176~	
?в<
в 
5к2
0
	input_338#К 
	input_338         "5к2
0
	dense_675#К 
	dense_675         