ŇČ
Ň)Ł)
9
Add
x"T
y"T
z"T"
Ttype:
2	
S
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
A
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype

Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
˘
	HashTable
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
S
HistogramSummary
tag
values"T
summary"
Ttype0:
2		
.
Identity

input"T
output"T"	
Ttype
`
InitializeTable
table_handle
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype
\
ListDiff
x"T
y"T
out"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
u
LookupTableFind
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
b
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
<
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
D
NotEqual
x"T
y"T
z
"
Ttype:
2	

M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
A
Placeholder
output"dtype"
dtypetype"
shapeshape: 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
A
Relu
features"T
activations"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
i
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
y
SparseReorder
input_indices	
input_values"T
input_shape	
output_indices	
output_values"T"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
z
SparseSegmentMean	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2"
Tidxtype0:
2	

SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2		"
Tidxtype0:
2	
ź
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
5
Sub
x"T
y"T
z"T"
Ttype:
	2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 

Where	
input
	
index	
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.0.02v1.0.0-rc2-15-g47bba63-dirtyÓä

global_step/Initializer/ConstConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 

global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
˛
global_step/AssignAssignglobal_stepglobal_step/Initializer/Const*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
Y
PlaceholderPlaceholder*
dtype0*
shape: *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
Placeholder_1Placeholder*
dtype0*
shape: *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
Placeholder_2Placeholder*
dtype0*
shape: *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
Placeholder_3Placeholder*
dtype0*
shape: *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
Placeholder_4Placeholder*
dtype0*
shape: *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
Placeholder_5Placeholder*
dtype0*
shape: *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
Placeholder_6Placeholder*
dtype0*
shape: *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
Placeholder_7Placeholder*
dtype0*
shape: *#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
u

ExpandDims
ExpandDimsPlaceholder_2ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
ExpandDims_1/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
y
ExpandDims_1
ExpandDimsPlaceholder_6ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
ExpandDims_2/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
y
ExpandDims_2
ExpandDimsPlaceholder_3ExpandDims_2/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
ExpandDims_3/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
y
ExpandDims_3
ExpandDimsPlaceholder_4ExpandDims_3/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
ExpandDims_4/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
y
ExpandDims_4
ExpandDimsPlaceholder_5ExpandDims_4/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
ExpandDims_5/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
w
ExpandDims_5
ExpandDimsPlaceholderExpandDims_5/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
ExpandDims_6/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
y
ExpandDims_6
ExpandDimsPlaceholder_1ExpandDims_6/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
ExpandDims_7/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
y
ExpandDims_7
ExpandDimsPlaceholder_7ExpandDims_7/dim*

Tdim0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ł
idnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/ShapeShape
ExpandDims*
out_type0*
T0*
_output_shapes
:

hdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/CastCastidnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Shape*

DstT0	*

SrcT0*
_output_shapes
:
­
ldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
¤
ldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/NotEqualNotEqual
ExpandDimsldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Cast_1/x*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

idnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/WhereWhereldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/NotEqual*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
qdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ą
kdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/ReshapeReshape
ExpandDimsqdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Reshape/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
Č
wdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:
Ę
ydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ę
ydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ú
qdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_sliceStridedSliceidnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Wherewdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice/stackydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice/stack_1ydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
Ę
ydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ě
{dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ě
{dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

sdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice_1StridedSliceidnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Whereydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice_1/stack{dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice_1/stack_1{dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 

kdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/unstackUnpackhdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Cast*	
num*
T0	*
_output_shapes
: : *

axis 

idnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/stackPackmdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/unstack:1*
N*

axis *
T0	*
_output_shapes
:

gdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/MulMulsdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slice_1idnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/stack*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ă
ydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:

gdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/SumSumgdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Mulydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Sum/reduction_indices*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( *
T0	
ř
gdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/AddAddqdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/strided_slicegdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Sum*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
jdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/GatherGatherkdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Reshapegdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

\dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/ConstConst*
dtype0*
valueBBWhiteBBlackBAmerican IndianBChineseBJapaneseBHawaiianBFilipinoBUnknownBAsian IndianBKoreanBSamaonB
Vietnamese*
_output_shapes
:

[dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
¤
bdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
¤
bdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
˛
\dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/rangeRangebdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/range/start[dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/Sizebdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/range/delta*

Tidx0*
_output_shapes
:
ő
[dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/CastCast\dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
ď
adnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/hash_table	HashTable*
	container *
	key_dtype0*
_output_shapes
:*
use_node_name_sharing( *
value_dtype0	*
shared_name 
˛
gdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
Ť
ldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/hash_table/table_initInitializeTableadnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/hash_table\dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/Const[dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/Cast*t
_classj
hfloc:@dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/hash_table*

Tkey0*

Tval0	
Ţ
adnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/hash_table_LookupLookupTableFindadnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/hash_tablejdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Gathergdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/hash_table/Const*	
Tin0*t
_classj
hfloc:@dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/hash_table*

Tout0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ş
pdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
ź
rdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
ź
rdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ô
jdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_sliceStridedSlicehdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Castpdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice/stackrdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice/stack_1rdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask 
ź
rdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
ž
tdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
ž
tdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ü
ldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice_1StridedSlicehdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Castrdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice_1/stacktdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice_1/stack_1tdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
Ź
bdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ů
adnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/ProdProdldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_slice_1bdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	

ldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/concat/values_1Packadnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/Prod*
N*

axis *
T0	*
_output_shapes
:
Ş
hdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
í
cdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/concatConcatV2jdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/strided_sliceldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/concat/values_1hdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/concat/axis*
N*

Tidx0*
T0	*
_output_shapes
:
ä
jdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/SparseReshapeSparseReshapeidnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Wherehdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Castcdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/concat*-
_output_shapes
:˙˙˙˙˙˙˙˙˙:

sdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/SparseReshape/IdentityIdentityadnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/hash_table_Lookup*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

fdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*
dtype0*V
_classL
JHloc:@dnn/input_from_feature_columns/mother_race_embedding/weights/part_0*
valueB"      *
_output_shapes
:

ednn/input_from_feature_columns/mother_race_embedding/weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*V
_classL
JHloc:@dnn/input_from_feature_columns/mother_race_embedding/weights/part_0*
valueB
 *    *
_output_shapes
: 

gdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*
dtype0*V
_classL
JHloc:@dnn/input_from_feature_columns/mother_race_embedding/weights/part_0*
valueB
 *:Í>*
_output_shapes
: 

pdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalfdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/Initializer/truncated_normal/shape*
_output_shapes

:*
dtype0*
seed2 *

seed *
T0*V
_classL
JHloc:@dnn/input_from_feature_columns/mother_race_embedding/weights/part_0
Ç
ddnn/input_from_feature_columns/mother_race_embedding/weights/part_0/Initializer/truncated_normal/mulMulpdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalgdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/Initializer/truncated_normal/stddev*V
_classL
JHloc:@dnn/input_from_feature_columns/mother_race_embedding/weights/part_0*
T0*
_output_shapes

:
ľ
`dnn/input_from_feature_columns/mother_race_embedding/weights/part_0/Initializer/truncated_normalAddddnn/input_from_feature_columns/mother_race_embedding/weights/part_0/Initializer/truncated_normal/mulednn/input_from_feature_columns/mother_race_embedding/weights/part_0/Initializer/truncated_normal/mean*V
_classL
JHloc:@dnn/input_from_feature_columns/mother_race_embedding/weights/part_0*
T0*
_output_shapes

:

Cdnn/input_from_feature_columns/mother_race_embedding/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*V
_classL
JHloc:@dnn/input_from_feature_columns/mother_race_embedding/weights/part_0*
shared_name 
Ľ
Jdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/AssignAssignCdnn/input_from_feature_columns/mother_race_embedding/weights/part_0`dnn/input_from_feature_columns/mother_race_embedding/weights/part_0/Initializer/truncated_normal*
validate_shape(*V
_classL
JHloc:@dnn/input_from_feature_columns/mother_race_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes

:

Hdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/readIdentityCdnn/input_from_feature_columns/mother_race_embedding/weights/part_0*V
_classL
JHloc:@dnn/input_from_feature_columns/mother_race_embedding/weights/part_0*
T0*
_output_shapes

:
Â
xdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
Á
wdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

rdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SliceSliceldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/SparseReshape:1xdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice/beginwdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice/size*
Index0*
T0	*
_output_shapes
:
ź
rdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/ConstConst*
dtype0*
valueB: *
_output_shapes
:

qdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/ProdProdrdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slicerdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
˝
{dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
ˇ
sdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/GatherGatherldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/SparseReshape:1{dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
Ż
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseReshape/new_shapePackqdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Prodsdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Gather*
N*

axis *
T0	*
_output_shapes
:

zdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseReshapeSparseReshapejdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/SparseReshapeldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/SparseReshape:1dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseReshape/new_shape*-
_output_shapes
:˙˙˙˙˙˙˙˙˙:
ł
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseReshape/IdentityIdentitysdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/SparseReshape/Identity*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
{dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ş
ydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/GreaterEqualGreaterEqualdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseReshape/Identity{dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

rdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/WhereWhereydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/GreaterEqual*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Í
zdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
Ť
tdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/ReshapeReshaperdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Wherezdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Reshape/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0	
Ń
udnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Gather_1Gatherzdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseReshapetdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
×
udnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Gather_2Gatherdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseReshape/Identitytdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
udnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/IdentityIdentity|dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
É
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ß
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
á
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
á
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ń
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_sliceStridedSliceudnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Identitydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice/stackdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice/stack_1dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
Ď
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/CastCastdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice*

DstT0*

SrcT0	*
_output_shapes
: 
Ď
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
Ď
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ç
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/rangeRangednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/range/startdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/Castdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/range/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/Cast_1Castdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/range*

DstT0	*

SrcT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
č
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
ę
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
ę
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_1StridedSliceudnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Gather_1dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_1/stackdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_1/stack_1dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_1/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
˙
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/ListDiffListDiffdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/Cast_1dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_1*
out_idx0*
T0	*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
á
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:
ă
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_2/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
ă
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ů
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_2StridedSliceudnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Identitydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_2/stackdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_2/stack_1dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
Ű
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
đ
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/ExpandDims
ExpandDimsdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/strided_slice_2dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/ExpandDims/dim*

Tdim0*
T0	*
_output_shapes
:
ß
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/SparseToDense/sparse_valuesConst*
dtype0
*
value	B
 Z*
_output_shapes
: 
ß
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/SparseToDense/default_valueConst*
dtype0
*
value	B
 Z *
_output_shapes
: 
Î
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/SparseToDenseSparseToDensednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/ListDiffdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/ExpandDimsdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/SparseToDense/sparse_valuesdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/Reshape/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
ń
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/ReshapeReshapednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/ListDiffdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0	
Ö
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/zeros_like	ZerosLikednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/Reshape*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ď
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 

dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/concatConcatV2dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/Reshapednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/zeros_likednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/concat/axis*
N*

Tidx0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ń
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/ShapeShapednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/ListDiff*
out_type0*
T0	*
_output_shapes
:
Î
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/FillFilldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/Shapednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/Const*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ń
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ď
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/concat_1ConcatV2udnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Gather_1dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/concatdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/concat_1/axis*
N*

Tidx0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ń
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
é
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/concat_2ConcatV2udnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Gather_2dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/Filldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/concat_2/axis*
N*

Tidx0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
đ
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/SparseReorderSparseReorderdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/concat_1dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/concat_2udnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Identity*
T0	*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
˛
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/IdentityIdentityudnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Identity*
T0	*
_output_shapes
:
ę
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
ě
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
ě
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
¨
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSlicednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/SparseReorderdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/strided_slice/stackdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
ä
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/CastCastdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ő
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/UniqueUniquednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/SparseReorder:1*
out_idx0*
T0	*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
°
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherHdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/readdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*V
_classL
JHloc:@dnn/input_from_feature_columns/mother_race_embedding/weights/part_0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparseSparseSegmentMeandnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/embedding_lookupdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/Unique:1dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse/Cast*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
Í
|dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Reshape_1/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
Đ
vdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Reshape_1Reshapednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/SparseFillEmptyRows/SparseToDense|dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Reshape_1/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0

ˇ
rdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/ShapeShapednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Ë
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
Í
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Í
dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

zdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/strided_sliceStridedSlicerdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Shapednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/strided_slice/stackdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/strided_slice/stack_1dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
ś
tdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
Ś
rdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/stackPacktdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/stack/0zdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/strided_slice*
N*

axis *
T0*
_output_shapes
:
˛
qdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/TileTilevdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Reshape_1rdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/stack*

Tmultiples0*
T0
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
˝
wdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/zeros_like	ZerosLikednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweightsSelectqdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Tilewdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/zeros_likednn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

qdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/CastCastldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/InnerFlatten/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
Ä
zdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
Ă
ydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:

tdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice_1Sliceqdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Castzdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice_1/beginydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice_1/size*
Index0*
T0*
_output_shapes
:
 
tdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Shape_1Shapeldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights*
out_type0*
T0*
_output_shapes
:
Ä
zdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
Ě
ydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice_2/sizeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:

tdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice_2Slicetdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Shape_1zdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice_2/beginydnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
ş
xdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 

sdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/concatConcatV2tdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice_1tdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Slice_2xdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
¤
vdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Reshape_2Reshapeldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweightssdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/concat*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0

Ednn/input_from_feature_columns/input_from_feature_columns/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
î
@dnn/input_from_feature_columns/input_from_feature_columns/concatConcatV2vdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/mother_race_embeddingweights/Reshape_2ExpandDims_3ExpandDims_6Ednn/input_from_feature_columns/input_from_feature_columns/concat/axis*
N*

Tidx0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ç
Adnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
valueB"   @   *
_output_shapes
:
š
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
valueB
 *űž*
_output_shapes
: 
š
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
valueB
 *ű>*
_output_shapes
: 
Ą
Idnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
_output_shapes

:@*
dtype0*
seed2 *

seed *
T0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0

?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
T0*
_output_shapes
: 
°
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/sub*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
T0*
_output_shapes

:@
˘
;dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
T0*
_output_shapes

:@
É
 dnn/hiddenlayer_0/weights/part_0
VariableV2*
	container *
_output_shapes

:@*
dtype0*
shape
:@*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
shared_name 

'dnn/hiddenlayer_0/weights/part_0/AssignAssign dnn/hiddenlayer_0/weights/part_0;dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
use_locking(*
T0*
_output_shapes

:@
ą
%dnn/hiddenlayer_0/weights/part_0/readIdentity dnn/hiddenlayer_0/weights/part_0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
T0*
_output_shapes

:@
˛
1dnn/hiddenlayer_0/biases/part_0/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
valueB@*    *
_output_shapes
:@
ż
dnn/hiddenlayer_0/biases/part_0
VariableV2*
	container *
_output_shapes
:@*
dtype0*
shape:@*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
shared_name 

&dnn/hiddenlayer_0/biases/part_0/AssignAssigndnn/hiddenlayer_0/biases/part_01dnn/hiddenlayer_0/biases/part_0/Initializer/Const*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
use_locking(*
T0*
_output_shapes
:@
Ş
$dnn/hiddenlayer_0/biases/part_0/readIdentitydnn/hiddenlayer_0/biases/part_0*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
T0*
_output_shapes
:@
u
dnn/hiddenlayer_0/weightsIdentity%dnn/hiddenlayer_0/weights/part_0/read*
T0*
_output_shapes

:@
×
dnn/hiddenlayer_0/MatMulMatMul@dnn/input_from_feature_columns/input_from_feature_columns/concatdnn/hiddenlayer_0/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
o
dnn/hiddenlayer_0/biasesIdentity$dnn/hiddenlayer_0/biases/part_0/read*
T0*
_output_shapes
:@
Ą
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/biases*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
T0
y
$dnn/hiddenlayer_0/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
W
zero_fraction/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 

zero_fraction/EqualEqual$dnn/hiddenlayer_0/hiddenlayer_0/Reluzero_fraction/zero*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
p
zero_fraction/CastCastzero_fraction/Equal*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙@
d
zero_fraction/ConstConst*
dtype0*
valueB"       *
_output_shapes
:

zero_fraction/MeanMeanzero_fraction/Castzero_fraction/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
|
ScalarSummary/tagsConst*
dtype0*:
value1B/ B)dnn/hiddenlayer_0/fraction_of_zero_values*
_output_shapes
: 
g
ScalarSummaryScalarSummaryScalarSummary/tagszero_fraction/Mean*
T0*
_output_shapes
: 
q
HistogramSummary/tagConst*
dtype0*-
value$B" Bdnn/hiddenlayer_0/activation*
_output_shapes
: 

HistogramSummaryHistogramSummaryHistogramSummary/tag$dnn/hiddenlayer_0/hiddenlayer_0/Relu*
T0*
_output_shapes
: 
Ç
Adnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
valueB"@       *
_output_shapes
:
š
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
valueB
 *  ž*
_output_shapes
: 
š
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
valueB
 *  >*
_output_shapes
: 
Ą
Idnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*
_output_shapes

:@ *
dtype0*
seed2 *

seed *
T0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0

?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
T0*
_output_shapes
: 
°
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/sub*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
T0*
_output_shapes

:@ 
˘
;dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
T0*
_output_shapes

:@ 
É
 dnn/hiddenlayer_1/weights/part_0
VariableV2*
	container *
_output_shapes

:@ *
dtype0*
shape
:@ *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
shared_name 

'dnn/hiddenlayer_1/weights/part_0/AssignAssign dnn/hiddenlayer_1/weights/part_0;dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
use_locking(*
T0*
_output_shapes

:@ 
ą
%dnn/hiddenlayer_1/weights/part_0/readIdentity dnn/hiddenlayer_1/weights/part_0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
T0*
_output_shapes

:@ 
˛
1dnn/hiddenlayer_1/biases/part_0/Initializer/ConstConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
valueB *    *
_output_shapes
: 
ż
dnn/hiddenlayer_1/biases/part_0
VariableV2*
	container *
_output_shapes
: *
dtype0*
shape: *2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
shared_name 

&dnn/hiddenlayer_1/biases/part_0/AssignAssigndnn/hiddenlayer_1/biases/part_01dnn/hiddenlayer_1/biases/part_0/Initializer/Const*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
use_locking(*
T0*
_output_shapes
: 
Ş
$dnn/hiddenlayer_1/biases/part_0/readIdentitydnn/hiddenlayer_1/biases/part_0*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
T0*
_output_shapes
: 
u
dnn/hiddenlayer_1/weightsIdentity%dnn/hiddenlayer_1/weights/part_0/read*
T0*
_output_shapes

:@ 
ť
dnn/hiddenlayer_1/MatMulMatMul$dnn/hiddenlayer_0/hiddenlayer_0/Reludnn/hiddenlayer_1/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
o
dnn/hiddenlayer_1/biasesIdentity$dnn/hiddenlayer_1/biases/part_0/read*
T0*
_output_shapes
: 
Ą
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/biases*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
data_formatNHWC*
T0
y
$dnn/hiddenlayer_1/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Y
zero_fraction_1/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 

zero_fraction_1/EqualEqual$dnn/hiddenlayer_1/hiddenlayer_1/Reluzero_fraction_1/zero*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
t
zero_fraction_1/CastCastzero_fraction_1/Equal*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
f
zero_fraction_1/ConstConst*
dtype0*
valueB"       *
_output_shapes
:

zero_fraction_1/MeanMeanzero_fraction_1/Castzero_fraction_1/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
~
ScalarSummary_1/tagsConst*
dtype0*:
value1B/ B)dnn/hiddenlayer_1/fraction_of_zero_values*
_output_shapes
: 
m
ScalarSummary_1ScalarSummaryScalarSummary_1/tagszero_fraction_1/Mean*
T0*
_output_shapes
: 
s
HistogramSummary_1/tagConst*
dtype0*-
value$B" Bdnn/hiddenlayer_1/activation*
_output_shapes
: 

HistogramSummary_1HistogramSummaryHistogramSummary_1/tag$dnn/hiddenlayer_1/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
š
:dnn/logits/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*,
_class"
 loc:@dnn/logits/weights/part_0*
valueB"       *
_output_shapes
:
Ť
8dnn/logits/weights/part_0/Initializer/random_uniform/minConst*
dtype0*,
_class"
 loc:@dnn/logits/weights/part_0*
valueB
 *JQÚž*
_output_shapes
: 
Ť
8dnn/logits/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*,
_class"
 loc:@dnn/logits/weights/part_0*
valueB
 *JQÚ>*
_output_shapes
: 

Bdnn/logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn/logits/weights/part_0/Initializer/random_uniform/shape*
_output_shapes

: *
dtype0*
seed2 *

seed *
T0*,
_class"
 loc:@dnn/logits/weights/part_0

8dnn/logits/weights/part_0/Initializer/random_uniform/subSub8dnn/logits/weights/part_0/Initializer/random_uniform/max8dnn/logits/weights/part_0/Initializer/random_uniform/min*,
_class"
 loc:@dnn/logits/weights/part_0*
T0*
_output_shapes
: 

8dnn/logits/weights/part_0/Initializer/random_uniform/mulMulBdnn/logits/weights/part_0/Initializer/random_uniform/RandomUniform8dnn/logits/weights/part_0/Initializer/random_uniform/sub*,
_class"
 loc:@dnn/logits/weights/part_0*
T0*
_output_shapes

: 

4dnn/logits/weights/part_0/Initializer/random_uniformAdd8dnn/logits/weights/part_0/Initializer/random_uniform/mul8dnn/logits/weights/part_0/Initializer/random_uniform/min*,
_class"
 loc:@dnn/logits/weights/part_0*
T0*
_output_shapes

: 
ť
dnn/logits/weights/part_0
VariableV2*
	container *
_output_shapes

: *
dtype0*
shape
: *,
_class"
 loc:@dnn/logits/weights/part_0*
shared_name 
ű
 dnn/logits/weights/part_0/AssignAssigndnn/logits/weights/part_04dnn/logits/weights/part_0/Initializer/random_uniform*
validate_shape(*,
_class"
 loc:@dnn/logits/weights/part_0*
use_locking(*
T0*
_output_shapes

: 

dnn/logits/weights/part_0/readIdentitydnn/logits/weights/part_0*,
_class"
 loc:@dnn/logits/weights/part_0*
T0*
_output_shapes

: 
¤
*dnn/logits/biases/part_0/Initializer/ConstConst*
dtype0*+
_class!
loc:@dnn/logits/biases/part_0*
valueB*    *
_output_shapes
:
ą
dnn/logits/biases/part_0
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@dnn/logits/biases/part_0*
shared_name 
ę
dnn/logits/biases/part_0/AssignAssigndnn/logits/biases/part_0*dnn/logits/biases/part_0/Initializer/Const*
validate_shape(*+
_class!
loc:@dnn/logits/biases/part_0*
use_locking(*
T0*
_output_shapes
:

dnn/logits/biases/part_0/readIdentitydnn/logits/biases/part_0*+
_class!
loc:@dnn/logits/biases/part_0*
T0*
_output_shapes
:
g
dnn/logits/weightsIdentitydnn/logits/weights/part_0/read*
T0*
_output_shapes

: 
­
dnn/logits/MatMulMatMul$dnn/hiddenlayer_1/hiddenlayer_1/Reludnn/logits/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
dnn/logits/biasesIdentitydnn/logits/biases/part_0/read*
T0*
_output_shapes
:

dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/biases*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
T0
Y
zero_fraction_2/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 
z
zero_fraction_2/EqualEqualdnn/logits/BiasAddzero_fraction_2/zero*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
zero_fraction_2/CastCastzero_fraction_2/Equal*

DstT0*

SrcT0
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
zero_fraction_2/ConstConst*
dtype0*
valueB"       *
_output_shapes
:

zero_fraction_2/MeanMeanzero_fraction_2/Castzero_fraction_2/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
w
ScalarSummary_2/tagsConst*
dtype0*3
value*B( B"dnn/logits/fraction_of_zero_values*
_output_shapes
: 
m
ScalarSummary_2ScalarSummaryScalarSummary_2/tagszero_fraction_2/Mean*
T0*
_output_shapes
: 
l
HistogramSummary_2/tagConst*
dtype0*&
valueB Bdnn/logits/activation*
_output_shapes
: 
s
HistogramSummary_2HistogramSummaryHistogramSummary_2/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
¸
0linear/plurality/weight/part_0/Initializer/ConstConst*
dtype0*1
_class'
%#loc:@linear/plurality/weight/part_0*
valueB*    *
_output_shapes

:
Ĺ
linear/plurality/weight/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*1
_class'
%#loc:@linear/plurality/weight/part_0*
shared_name 

%linear/plurality/weight/part_0/AssignAssignlinear/plurality/weight/part_00linear/plurality/weight/part_0/Initializer/Const*
validate_shape(*1
_class'
%#loc:@linear/plurality/weight/part_0*
use_locking(*
T0*
_output_shapes

:
Ť
#linear/plurality/weight/part_0/readIdentitylinear/plurality/weight/part_0*1
_class'
%#loc:@linear/plurality/weight/part_0*
T0*
_output_shapes

:
q
linear/plurality/weightIdentity#linear/plurality/weight/part_0/read*
T0*
_output_shapes

:
§
linear/linear/plurality/matmulMatMulExpandDims_2linear/plurality/weight*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
linear/linear/Reshape/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:

linear/linear/ReshapeReshapelinear/linear/plurality/matmullinear/linear/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
s
'linear/linear/DenseToSparseTensor/ShapeShapeExpandDims_7*
out_type0*
T0*
_output_shapes
:

&linear/linear/DenseToSparseTensor/CastCast'linear/linear/DenseToSparseTensor/Shape*

DstT0	*

SrcT0*
_output_shapes
:
k
*linear/linear/DenseToSparseTensor/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
˘
*linear/linear/DenseToSparseTensor/NotEqualNotEqualExpandDims_7*linear/linear/DenseToSparseTensor/Cast_1/x*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

'linear/linear/DenseToSparseTensor/WhereWhere*linear/linear/DenseToSparseTensor/NotEqual*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

/linear/linear/DenseToSparseTensor/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
Ż
)linear/linear/DenseToSparseTensor/ReshapeReshapeExpandDims_7/linear/linear/DenseToSparseTensor/Reshape/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0

5linear/linear/DenseToSparseTensor/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:

7linear/linear/DenseToSparseTensor/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

7linear/linear/DenseToSparseTensor/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
°
/linear/linear/DenseToSparseTensor/strided_sliceStridedSlice'linear/linear/DenseToSparseTensor/Where5linear/linear/DenseToSparseTensor/strided_slice/stack7linear/linear/DenseToSparseTensor/strided_slice/stack_17linear/linear/DenseToSparseTensor/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask

7linear/linear/DenseToSparseTensor/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:

9linear/linear/DenseToSparseTensor/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

9linear/linear/DenseToSparseTensor/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ź
1linear/linear/DenseToSparseTensor/strided_slice_1StridedSlice'linear/linear/DenseToSparseTensor/Where7linear/linear/DenseToSparseTensor/strided_slice_1/stack9linear/linear/DenseToSparseTensor/strided_slice_1/stack_19linear/linear/DenseToSparseTensor/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 

)linear/linear/DenseToSparseTensor/unstackUnpack&linear/linear/DenseToSparseTensor/Cast*	
num*
T0	*
_output_shapes
: : *

axis 

'linear/linear/DenseToSparseTensor/stackPack+linear/linear/DenseToSparseTensor/unstack:1*
N*

axis *
T0	*
_output_shapes
:
ş
%linear/linear/DenseToSparseTensor/MulMul1linear/linear/DenseToSparseTensor/strided_slice_1'linear/linear/DenseToSparseTensor/stack*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

7linear/linear/DenseToSparseTensor/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
×
%linear/linear/DenseToSparseTensor/SumSum%linear/linear/DenseToSparseTensor/Mul7linear/linear/DenseToSparseTensor/Sum/reduction_indices*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( *
T0	
˛
%linear/linear/DenseToSparseTensor/AddAdd/linear/linear/DenseToSparseTensor/strided_slice%linear/linear/DenseToSparseTensor/Sum*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
(linear/linear/DenseToSparseTensor/GatherGather)linear/linear/DenseToSparseTensor/Reshape%linear/linear/DenseToSparseTensor/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
linear/linear/lookup/ConstConst*
dtype0*&
valueBBTrueBFalseBNone*
_output_shapes
:
[
linear/linear/lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
b
 linear/linear/lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
b
 linear/linear/lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ş
linear/linear/lookup/rangeRange linear/linear/lookup/range/startlinear/linear/lookup/Size linear/linear/lookup/range/delta*

Tidx0*
_output_shapes
:
q
linear/linear/lookup/CastCastlinear/linear/lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
­
linear/linear/lookup/hash_table	HashTable*
	container *
	key_dtype0*
_output_shapes
:*
use_node_name_sharing( *
value_dtype0	*
shared_name 
p
%linear/linear/lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
á
*linear/linear/lookup/hash_table/table_initInitializeTablelinear/linear/lookup/hash_tablelinear/linear/lookup/Constlinear/linear/lookup/Cast*2
_class(
&$loc:@linear/linear/lookup/hash_table*

Tkey0*

Tval0	

linear/linear/hash_table_LookupLookupTableFindlinear/linear/lookup/hash_table(linear/linear/DenseToSparseTensor/Gather%linear/linear/lookup/hash_table/Const*	
Tin0*2
_class(
&$loc:@linear/linear/lookup/hash_table*

Tout0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
3linear/alcohol_use/weights/part_0/Initializer/ConstConst*
dtype0*4
_class*
(&loc:@linear/alcohol_use/weights/part_0*
valueB*    *
_output_shapes

:
Ë
!linear/alcohol_use/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*4
_class*
(&loc:@linear/alcohol_use/weights/part_0*
shared_name 

(linear/alcohol_use/weights/part_0/AssignAssign!linear/alcohol_use/weights/part_03linear/alcohol_use/weights/part_0/Initializer/Const*
validate_shape(*4
_class*
(&loc:@linear/alcohol_use/weights/part_0*
use_locking(*
T0*
_output_shapes

:
´
&linear/alcohol_use/weights/part_0/readIdentity!linear/alcohol_use/weights/part_0*4
_class*
(&loc:@linear/alcohol_use/weights/part_0*
T0*
_output_shapes

:

9linear/linear/alcohol_use/alcohol_use_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

8linear/linear/alcohol_use/alcohol_use_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

3linear/linear/alcohol_use/alcohol_use_weights/SliceSlice&linear/linear/DenseToSparseTensor/Cast9linear/linear/alcohol_use/alcohol_use_weights/Slice/begin8linear/linear/alcohol_use/alcohol_use_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
}
3linear/linear/alcohol_use/alcohol_use_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
â
2linear/linear/alcohol_use/alcohol_use_weights/ProdProd3linear/linear/alcohol_use/alcohol_use_weights/Slice3linear/linear/alcohol_use/alcohol_use_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
~
<linear/linear/alcohol_use/alcohol_use_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
ó
4linear/linear/alcohol_use/alcohol_use_weights/GatherGather&linear/linear/DenseToSparseTensor/Cast<linear/linear/alcohol_use/alcohol_use_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
ń
Elinear/linear/alcohol_use/alcohol_use_weights/SparseReshape/new_shapePack2linear/linear/alcohol_use/alcohol_use_weights/Prod4linear/linear/alcohol_use/alcohol_use_weights/Gather*
N*

axis *
T0	*
_output_shapes
:

;linear/linear/alcohol_use/alcohol_use_weights/SparseReshapeSparseReshape'linear/linear/DenseToSparseTensor/Where&linear/linear/DenseToSparseTensor/CastElinear/linear/alcohol_use/alcohol_use_weights/SparseReshape/new_shape*-
_output_shapes
:˙˙˙˙˙˙˙˙˙:

Dlinear/linear/alcohol_use/alcohol_use_weights/SparseReshape/IdentityIdentitylinear/linear/hash_table_Lookup*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
<linear/linear/alcohol_use/alcohol_use_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ü
:linear/linear/alcohol_use/alcohol_use_weights/GreaterEqualGreaterEqualDlinear/linear/alcohol_use/alcohol_use_weights/SparseReshape/Identity<linear/linear/alcohol_use/alcohol_use_weights/GreaterEqual/y*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ą
3linear/linear/alcohol_use/alcohol_use_weights/WhereWhere:linear/linear/alcohol_use/alcohol_use_weights/GreaterEqual*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

;linear/linear/alcohol_use/alcohol_use_weights/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
î
5linear/linear/alcohol_use/alcohol_use_weights/ReshapeReshape3linear/linear/alcohol_use/alcohol_use_weights/Where;linear/linear/alcohol_use/alcohol_use_weights/Reshape/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0	

6linear/linear/alcohol_use/alcohol_use_weights/Gather_1Gather;linear/linear/alcohol_use/alcohol_use_weights/SparseReshape5linear/linear/alcohol_use/alcohol_use_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

6linear/linear/alcohol_use/alcohol_use_weights/Gather_2GatherDlinear/linear/alcohol_use/alcohol_use_weights/SparseReshape/Identity5linear/linear/alcohol_use/alcohol_use_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
6linear/linear/alcohol_use/alcohol_use_weights/IdentityIdentity=linear/linear/alcohol_use/alcohol_use_weights/SparseReshape:1*
T0	*
_output_shapes
:

Glinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 

Ulinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Ą
Wlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ą
Wlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
˛
Olinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_sliceStridedSlice6linear/linear/alcohol_use/alcohol_use_weights/IdentityUlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice/stackWlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice/stack_1Wlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
Ď
Flinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/CastCastOlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice*

DstT0*

SrcT0	*
_output_shapes
: 

Mlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Mlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ç
Glinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/rangeRangeMlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/range/startFlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/CastMlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/range/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
Hlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/Cast_1CastGlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/range*

DstT0	*

SrcT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
Wlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ş
Ylinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ş
Ylinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ç
Qlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_1StridedSlice6linear/linear/alcohol_use/alcohol_use_weights/Gather_1Wlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_1/stackYlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_1/stack_1Ylinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_1/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
ż
Jlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/ListDiffListDiffHlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/Cast_1Qlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_1*
out_idx0*
T0	*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ą
Wlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:
Ł
Ylinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_2/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ł
Ylinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ş
Qlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_2StridedSlice6linear/linear/alcohol_use/alcohol_use_weights/IdentityWlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_2/stackYlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_2/stack_1Ylinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask

Plinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
°
Llinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/ExpandDims
ExpandDimsQlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/strided_slice_2Plinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/ExpandDims/dim*

Tdim0*
T0	*
_output_shapes
:

]linear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesConst*
dtype0
*
value	B
 Z*
_output_shapes
: 

]linear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/SparseToDense/default_valueConst*
dtype0
*
value	B
 Z *
_output_shapes
: 

Olinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/SparseToDenseSparseToDenseJlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/ListDiffLlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/ExpandDims]linear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/SparseToDense/sparse_values]linear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
Olinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/Reshape/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
ą
Ilinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/ReshapeReshapeJlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/ListDiffOlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0	
Ö
Llinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/zeros_like	ZerosLikeIlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/Reshape*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Mlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 

Hlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/concatConcatV2Ilinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/ReshapeLlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/zeros_likeMlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/concat/axis*
N*

Tidx0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ń
Glinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/ShapeShapeJlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/ListDiff*
out_type0*
T0	*
_output_shapes
:

Flinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/FillFillGlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/ShapeGlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/Const*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Olinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
đ
Jlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/concat_1ConcatV26linear/linear/alcohol_use/alcohol_use_weights/Gather_1Hlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/concatOlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/concat_1/axis*
N*

Tidx0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Olinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ę
Jlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/concat_2ConcatV26linear/linear/alcohol_use/alcohol_use_weights/Gather_2Flinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/FillOlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/concat_2/axis*
N*

Tidx0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
Olinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/SparseReorderSparseReorderJlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/concat_1Jlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/concat_26linear/linear/alcohol_use/alcohol_use_weights/Identity*
T0	*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ł
Jlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/IdentityIdentity6linear/linear/alcohol_use/alcohol_use_weights/Identity*
T0	*
_output_shapes
:
Ş
Ylinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ź
[linear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ź
[linear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
č
Slinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/strided_sliceStridedSliceOlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/SparseReorderYlinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/strided_slice/stack[linear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/strided_slice/stack_1[linear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
ä
Jlinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/CastCastSlinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ő
Llinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/UniqueUniqueQlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/SparseReorder:1*
out_idx0*
T0	*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ě
Vlinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/embedding_lookupGather&linear/alcohol_use/weights/part_0/readLlinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*4
_class*
(&loc:@linear/alcohol_use/weights/part_0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Elinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparseSparseSegmentSumVlinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/embedding_lookupNlinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/Unique:1Jlinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0

=linear/linear/alcohol_use/alcohol_use_weights/Reshape_1/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:

7linear/linear/alcohol_use/alcohol_use_weights/Reshape_1ReshapeOlinear/linear/alcohol_use/alcohol_use_weights/SparseFillEmptyRows/SparseToDense=linear/linear/alcohol_use/alcohol_use_weights/Reshape_1/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0

¸
3linear/linear/alcohol_use/alcohol_use_weights/ShapeShapeElinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

Alinear/linear/alcohol_use/alcohol_use_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

Clinear/linear/alcohol_use/alcohol_use_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Clinear/linear/alcohol_use/alcohol_use_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ß
;linear/linear/alcohol_use/alcohol_use_weights/strided_sliceStridedSlice3linear/linear/alcohol_use/alcohol_use_weights/ShapeAlinear/linear/alcohol_use/alcohol_use_weights/strided_slice/stackClinear/linear/alcohol_use/alcohol_use_weights/strided_slice/stack_1Clinear/linear/alcohol_use/alcohol_use_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
w
5linear/linear/alcohol_use/alcohol_use_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
é
3linear/linear/alcohol_use/alcohol_use_weights/stackPack5linear/linear/alcohol_use/alcohol_use_weights/stack/0;linear/linear/alcohol_use/alcohol_use_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:
ő
2linear/linear/alcohol_use/alcohol_use_weights/TileTile7linear/linear/alcohol_use/alcohol_use_weights/Reshape_13linear/linear/alcohol_use/alcohol_use_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ž
8linear/linear/alcohol_use/alcohol_use_weights/zeros_like	ZerosLikeElinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-linear/linear/alcohol_use/alcohol_use_weightsSelect2linear/linear/alcohol_use/alcohol_use_weights/Tile8linear/linear/alcohol_use/alcohol_use_weights/zeros_likeElinear/linear/alcohol_use/alcohol_use_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

2linear/linear/alcohol_use/alcohol_use_weights/CastCast&linear/linear/DenseToSparseTensor/Cast*

DstT0*

SrcT0	*
_output_shapes
:

;linear/linear/alcohol_use/alcohol_use_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

:linear/linear/alcohol_use/alcohol_use_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:

5linear/linear/alcohol_use/alcohol_use_weights/Slice_1Slice2linear/linear/alcohol_use/alcohol_use_weights/Cast;linear/linear/alcohol_use/alcohol_use_weights/Slice_1/begin:linear/linear/alcohol_use/alcohol_use_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
˘
5linear/linear/alcohol_use/alcohol_use_weights/Shape_1Shape-linear/linear/alcohol_use/alcohol_use_weights*
out_type0*
T0*
_output_shapes
:

;linear/linear/alcohol_use/alcohol_use_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

:linear/linear/alcohol_use/alcohol_use_weights/Slice_2/sizeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
 
5linear/linear/alcohol_use/alcohol_use_weights/Slice_2Slice5linear/linear/alcohol_use/alcohol_use_weights/Shape_1;linear/linear/alcohol_use/alcohol_use_weights/Slice_2/begin:linear/linear/alcohol_use/alcohol_use_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
{
9linear/linear/alcohol_use/alcohol_use_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ł
4linear/linear/alcohol_use/alcohol_use_weights/concatConcatV25linear/linear/alcohol_use/alcohol_use_weights/Slice_15linear/linear/alcohol_use/alcohol_use_weights/Slice_29linear/linear/alcohol_use/alcohol_use_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
ç
7linear/linear/alcohol_use/alcohol_use_weights/Reshape_2Reshape-linear/linear/alcohol_use/alcohol_use_weights4linear/linear/alcohol_use/alcohol_use_weights/concat*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
n
linear/linear/Reshape_1/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
ş
linear/linear/Reshape_1Reshape7linear/linear/alcohol_use/alcohol_use_weights/Reshape_2linear/linear/Reshape_1/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
u
)linear/linear/DenseToSparseTensor_1/ShapeShapeExpandDims_1*
out_type0*
T0*
_output_shapes
:

(linear/linear/DenseToSparseTensor_1/CastCast)linear/linear/DenseToSparseTensor_1/Shape*

DstT0	*

SrcT0*
_output_shapes
:
m
,linear/linear/DenseToSparseTensor_1/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
Ś
,linear/linear/DenseToSparseTensor_1/NotEqualNotEqualExpandDims_1,linear/linear/DenseToSparseTensor_1/Cast_1/x*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)linear/linear/DenseToSparseTensor_1/WhereWhere,linear/linear/DenseToSparseTensor_1/NotEqual*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

1linear/linear/DenseToSparseTensor_1/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ł
+linear/linear/DenseToSparseTensor_1/ReshapeReshapeExpandDims_11linear/linear/DenseToSparseTensor_1/Reshape/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0

7linear/linear/DenseToSparseTensor_1/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:

9linear/linear/DenseToSparseTensor_1/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

9linear/linear/DenseToSparseTensor_1/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ş
1linear/linear/DenseToSparseTensor_1/strided_sliceStridedSlice)linear/linear/DenseToSparseTensor_1/Where7linear/linear/DenseToSparseTensor_1/strided_slice/stack9linear/linear/DenseToSparseTensor_1/strided_slice/stack_19linear/linear/DenseToSparseTensor_1/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask

9linear/linear/DenseToSparseTensor_1/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:

;linear/linear/DenseToSparseTensor_1/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

;linear/linear/DenseToSparseTensor_1/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ć
3linear/linear/DenseToSparseTensor_1/strided_slice_1StridedSlice)linear/linear/DenseToSparseTensor_1/Where9linear/linear/DenseToSparseTensor_1/strided_slice_1/stack;linear/linear/DenseToSparseTensor_1/strided_slice_1/stack_1;linear/linear/DenseToSparseTensor_1/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 

+linear/linear/DenseToSparseTensor_1/unstackUnpack(linear/linear/DenseToSparseTensor_1/Cast*	
num*
T0	*
_output_shapes
: : *

axis 

)linear/linear/DenseToSparseTensor_1/stackPack-linear/linear/DenseToSparseTensor_1/unstack:1*
N*

axis *
T0	*
_output_shapes
:
Ŕ
'linear/linear/DenseToSparseTensor_1/MulMul3linear/linear/DenseToSparseTensor_1/strided_slice_1)linear/linear/DenseToSparseTensor_1/stack*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

9linear/linear/DenseToSparseTensor_1/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
Ý
'linear/linear/DenseToSparseTensor_1/SumSum'linear/linear/DenseToSparseTensor_1/Mul9linear/linear/DenseToSparseTensor_1/Sum/reduction_indices*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( *
T0	
¸
'linear/linear/DenseToSparseTensor_1/AddAdd1linear/linear/DenseToSparseTensor_1/strided_slice'linear/linear/DenseToSparseTensor_1/Sum*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
*linear/linear/DenseToSparseTensor_1/GatherGather+linear/linear/DenseToSparseTensor_1/Reshape'linear/linear/DenseToSparseTensor_1/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
linear/linear/lookup_1/ConstConst*
dtype0*&
valueBBTrueBFalseBNone*
_output_shapes
:
]
linear/linear/lookup_1/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
d
"linear/linear/lookup_1/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
d
"linear/linear/lookup_1/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
˛
linear/linear/lookup_1/rangeRange"linear/linear/lookup_1/range/startlinear/linear/lookup_1/Size"linear/linear/lookup_1/range/delta*

Tidx0*
_output_shapes
:
u
linear/linear/lookup_1/CastCastlinear/linear/lookup_1/range*

DstT0	*

SrcT0*
_output_shapes
:
Ż
!linear/linear/lookup_1/hash_table	HashTable*
	container *
	key_dtype0*
_output_shapes
:*
use_node_name_sharing( *
value_dtype0	*
shared_name 
r
'linear/linear/lookup_1/hash_table/ConstConst*
dtype0	*
valueB	 R
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
ë
,linear/linear/lookup_1/hash_table/table_initInitializeTable!linear/linear/lookup_1/hash_tablelinear/linear/lookup_1/Constlinear/linear/lookup_1/Cast*4
_class*
(&loc:@linear/linear/lookup_1/hash_table*

Tkey0*

Tval0	

!linear/linear/hash_table_Lookup_1LookupTableFind!linear/linear/lookup_1/hash_table*linear/linear/DenseToSparseTensor_1/Gather'linear/linear/lookup_1/hash_table/Const*	
Tin0*4
_class*
(&loc:@linear/linear/lookup_1/hash_table*

Tout0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Â
5linear/cigarette_use/weights/part_0/Initializer/ConstConst*
dtype0*6
_class,
*(loc:@linear/cigarette_use/weights/part_0*
valueB*    *
_output_shapes

:
Ď
#linear/cigarette_use/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*6
_class,
*(loc:@linear/cigarette_use/weights/part_0*
shared_name 

*linear/cigarette_use/weights/part_0/AssignAssign#linear/cigarette_use/weights/part_05linear/cigarette_use/weights/part_0/Initializer/Const*
validate_shape(*6
_class,
*(loc:@linear/cigarette_use/weights/part_0*
use_locking(*
T0*
_output_shapes

:
ş
(linear/cigarette_use/weights/part_0/readIdentity#linear/cigarette_use/weights/part_0*6
_class,
*(loc:@linear/cigarette_use/weights/part_0*
T0*
_output_shapes

:

=linear/linear/cigarette_use/cigarette_use_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

<linear/linear/cigarette_use/cigarette_use_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

7linear/linear/cigarette_use/cigarette_use_weights/SliceSlice(linear/linear/DenseToSparseTensor_1/Cast=linear/linear/cigarette_use/cigarette_use_weights/Slice/begin<linear/linear/cigarette_use/cigarette_use_weights/Slice/size*
Index0*
T0	*
_output_shapes
:

7linear/linear/cigarette_use/cigarette_use_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
î
6linear/linear/cigarette_use/cigarette_use_weights/ProdProd7linear/linear/cigarette_use/cigarette_use_weights/Slice7linear/linear/cigarette_use/cigarette_use_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	

@linear/linear/cigarette_use/cigarette_use_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
ý
8linear/linear/cigarette_use/cigarette_use_weights/GatherGather(linear/linear/DenseToSparseTensor_1/Cast@linear/linear/cigarette_use/cigarette_use_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
ý
Ilinear/linear/cigarette_use/cigarette_use_weights/SparseReshape/new_shapePack6linear/linear/cigarette_use/cigarette_use_weights/Prod8linear/linear/cigarette_use/cigarette_use_weights/Gather*
N*

axis *
T0	*
_output_shapes
:

?linear/linear/cigarette_use/cigarette_use_weights/SparseReshapeSparseReshape)linear/linear/DenseToSparseTensor_1/Where(linear/linear/DenseToSparseTensor_1/CastIlinear/linear/cigarette_use/cigarette_use_weights/SparseReshape/new_shape*-
_output_shapes
:˙˙˙˙˙˙˙˙˙:
Ľ
Hlinear/linear/cigarette_use/cigarette_use_weights/SparseReshape/IdentityIdentity!linear/linear/hash_table_Lookup_1*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

@linear/linear/cigarette_use/cigarette_use_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 

>linear/linear/cigarette_use/cigarette_use_weights/GreaterEqualGreaterEqualHlinear/linear/cigarette_use/cigarette_use_weights/SparseReshape/Identity@linear/linear/cigarette_use/cigarette_use_weights/GreaterEqual/y*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
7linear/linear/cigarette_use/cigarette_use_weights/WhereWhere>linear/linear/cigarette_use/cigarette_use_weights/GreaterEqual*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

?linear/linear/cigarette_use/cigarette_use_weights/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ú
9linear/linear/cigarette_use/cigarette_use_weights/ReshapeReshape7linear/linear/cigarette_use/cigarette_use_weights/Where?linear/linear/cigarette_use/cigarette_use_weights/Reshape/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0	
 
:linear/linear/cigarette_use/cigarette_use_weights/Gather_1Gather?linear/linear/cigarette_use/cigarette_use_weights/SparseReshape9linear/linear/cigarette_use/cigarette_use_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
:linear/linear/cigarette_use/cigarette_use_weights/Gather_2GatherHlinear/linear/cigarette_use/cigarette_use_weights/SparseReshape/Identity9linear/linear/cigarette_use/cigarette_use_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
:linear/linear/cigarette_use/cigarette_use_weights/IdentityIdentityAlinear/linear/cigarette_use/cigarette_use_weights/SparseReshape:1*
T0	*
_output_shapes
:

Klinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Ł
Ylinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Ľ
[linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ľ
[linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ć
Slinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_sliceStridedSlice:linear/linear/cigarette_use/cigarette_use_weights/IdentityYlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice/stack[linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice/stack_1[linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
×
Jlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/CastCastSlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice*

DstT0*

SrcT0	*
_output_shapes
: 

Qlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Qlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
÷
Klinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/rangeRangeQlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/range/startJlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/CastQlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/range/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Llinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/Cast_1CastKlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/range*

DstT0	*

SrcT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
[linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ž
]linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ž
]linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ű
Ulinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_1StridedSlice:linear/linear/cigarette_use/cigarette_use_weights/Gather_1[linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_1/stack]linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_1/stack_1]linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_1/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
Ë
Nlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/ListDiffListDiffLlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/Cast_1Ulinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_1*
out_idx0*
T0	*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ľ
[linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:
§
]linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_2/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
§
]linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Î
Ulinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_2StridedSlice:linear/linear/cigarette_use/cigarette_use_weights/Identity[linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_2/stack]linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_2/stack_1]linear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask

Tlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
ź
Plinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/ExpandDims
ExpandDimsUlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/strided_slice_2Tlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/ExpandDims/dim*

Tdim0*
T0	*
_output_shapes
:
Ł
alinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesConst*
dtype0
*
value	B
 Z*
_output_shapes
: 
Ł
alinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/SparseToDense/default_valueConst*
dtype0
*
value	B
 Z *
_output_shapes
: 
˘
Slinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/SparseToDenseSparseToDenseNlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/ListDiffPlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/ExpandDimsalinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesalinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¤
Slinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/Reshape/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
˝
Mlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/ReshapeReshapeNlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/ListDiffSlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0	
Ţ
Plinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/zeros_like	ZerosLikeMlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/Reshape*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Qlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 

Llinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/concatConcatV2Mlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/ReshapePlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/zeros_likeQlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/concat/axis*
N*

Tidx0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ů
Klinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/ShapeShapeNlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/ListDiff*
out_type0*
T0	*
_output_shapes
:

Jlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/FillFillKlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/ShapeKlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/Const*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Slinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 

Nlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/concat_1ConcatV2:linear/linear/cigarette_use/cigarette_use_weights/Gather_1Llinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/concatSlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/concat_1/axis*
N*

Tidx0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Slinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ú
Nlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/concat_2ConcatV2:linear/linear/cigarette_use/cigarette_use_weights/Gather_2Jlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/FillSlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/concat_2/axis*
N*

Tidx0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Slinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/SparseReorderSparseReorderNlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/concat_1Nlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/concat_2:linear/linear/cigarette_use/cigarette_use_weights/Identity*
T0	*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ť
Nlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/IdentityIdentity:linear/linear/cigarette_use/cigarette_use_weights/Identity*
T0	*
_output_shapes
:
Ž
]linear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
°
_linear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
°
_linear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ü
Wlinear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/strided_sliceStridedSliceSlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/SparseReorder]linear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/strided_slice/stack_linear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/strided_slice/stack_1_linear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
ě
Nlinear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/CastCastWlinear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ý
Plinear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/UniqueUniqueUlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/SparseReorder:1*
out_idx0*
T0	*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ř
Zlinear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/embedding_lookupGather(linear/cigarette_use/weights/part_0/readPlinear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*6
_class,
*(loc:@linear/cigarette_use/weights/part_0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ilinear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparseSparseSegmentSumZlinear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/embedding_lookupRlinear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/Unique:1Nlinear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0

Alinear/linear/cigarette_use/cigarette_use_weights/Reshape_1/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:

;linear/linear/cigarette_use/cigarette_use_weights/Reshape_1ReshapeSlinear/linear/cigarette_use/cigarette_use_weights/SparseFillEmptyRows/SparseToDenseAlinear/linear/cigarette_use/cigarette_use_weights/Reshape_1/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0

Ŕ
7linear/linear/cigarette_use/cigarette_use_weights/ShapeShapeIlinear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

Elinear/linear/cigarette_use/cigarette_use_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

Glinear/linear/cigarette_use/cigarette_use_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Glinear/linear/cigarette_use/cigarette_use_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ó
?linear/linear/cigarette_use/cigarette_use_weights/strided_sliceStridedSlice7linear/linear/cigarette_use/cigarette_use_weights/ShapeElinear/linear/cigarette_use/cigarette_use_weights/strided_slice/stackGlinear/linear/cigarette_use/cigarette_use_weights/strided_slice/stack_1Glinear/linear/cigarette_use/cigarette_use_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
{
9linear/linear/cigarette_use/cigarette_use_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
ő
7linear/linear/cigarette_use/cigarette_use_weights/stackPack9linear/linear/cigarette_use/cigarette_use_weights/stack/0?linear/linear/cigarette_use/cigarette_use_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:

6linear/linear/cigarette_use/cigarette_use_weights/TileTile;linear/linear/cigarette_use/cigarette_use_weights/Reshape_17linear/linear/cigarette_use/cigarette_use_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ć
<linear/linear/cigarette_use/cigarette_use_weights/zeros_like	ZerosLikeIlinear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
1linear/linear/cigarette_use/cigarette_use_weightsSelect6linear/linear/cigarette_use/cigarette_use_weights/Tile<linear/linear/cigarette_use/cigarette_use_weights/zeros_likeIlinear/linear/cigarette_use/cigarette_use_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

6linear/linear/cigarette_use/cigarette_use_weights/CastCast(linear/linear/DenseToSparseTensor_1/Cast*

DstT0*

SrcT0	*
_output_shapes
:

?linear/linear/cigarette_use/cigarette_use_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

>linear/linear/cigarette_use/cigarette_use_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
­
9linear/linear/cigarette_use/cigarette_use_weights/Slice_1Slice6linear/linear/cigarette_use/cigarette_use_weights/Cast?linear/linear/cigarette_use/cigarette_use_weights/Slice_1/begin>linear/linear/cigarette_use/cigarette_use_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ş
9linear/linear/cigarette_use/cigarette_use_weights/Shape_1Shape1linear/linear/cigarette_use/cigarette_use_weights*
out_type0*
T0*
_output_shapes
:

?linear/linear/cigarette_use/cigarette_use_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

>linear/linear/cigarette_use/cigarette_use_weights/Slice_2/sizeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
°
9linear/linear/cigarette_use/cigarette_use_weights/Slice_2Slice9linear/linear/cigarette_use/cigarette_use_weights/Shape_1?linear/linear/cigarette_use/cigarette_use_weights/Slice_2/begin>linear/linear/cigarette_use/cigarette_use_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:

=linear/linear/cigarette_use/cigarette_use_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ł
8linear/linear/cigarette_use/cigarette_use_weights/concatConcatV29linear/linear/cigarette_use/cigarette_use_weights/Slice_19linear/linear/cigarette_use/cigarette_use_weights/Slice_2=linear/linear/cigarette_use/cigarette_use_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
ó
;linear/linear/cigarette_use/cigarette_use_weights/Reshape_2Reshape1linear/linear/cigarette_use/cigarette_use_weights8linear/linear/cigarette_use/cigarette_use_weights/concat*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
n
linear/linear/Reshape_2/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
ž
linear/linear/Reshape_2Reshape;linear/linear/cigarette_use/cigarette_use_weights/Reshape_2linear/linear/Reshape_2/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
u
)linear/linear/DenseToSparseTensor_2/ShapeShapeExpandDims_5*
out_type0*
T0*
_output_shapes
:

(linear/linear/DenseToSparseTensor_2/CastCast)linear/linear/DenseToSparseTensor_2/Shape*

DstT0	*

SrcT0*
_output_shapes
:
m
,linear/linear/DenseToSparseTensor_2/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
Ś
,linear/linear/DenseToSparseTensor_2/NotEqualNotEqualExpandDims_5,linear/linear/DenseToSparseTensor_2/Cast_1/x*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)linear/linear/DenseToSparseTensor_2/WhereWhere,linear/linear/DenseToSparseTensor_2/NotEqual*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

1linear/linear/DenseToSparseTensor_2/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ł
+linear/linear/DenseToSparseTensor_2/ReshapeReshapeExpandDims_51linear/linear/DenseToSparseTensor_2/Reshape/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0

7linear/linear/DenseToSparseTensor_2/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:

9linear/linear/DenseToSparseTensor_2/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

9linear/linear/DenseToSparseTensor_2/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ş
1linear/linear/DenseToSparseTensor_2/strided_sliceStridedSlice)linear/linear/DenseToSparseTensor_2/Where7linear/linear/DenseToSparseTensor_2/strided_slice/stack9linear/linear/DenseToSparseTensor_2/strided_slice/stack_19linear/linear/DenseToSparseTensor_2/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask

9linear/linear/DenseToSparseTensor_2/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:

;linear/linear/DenseToSparseTensor_2/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

;linear/linear/DenseToSparseTensor_2/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ć
3linear/linear/DenseToSparseTensor_2/strided_slice_1StridedSlice)linear/linear/DenseToSparseTensor_2/Where9linear/linear/DenseToSparseTensor_2/strided_slice_1/stack;linear/linear/DenseToSparseTensor_2/strided_slice_1/stack_1;linear/linear/DenseToSparseTensor_2/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 

+linear/linear/DenseToSparseTensor_2/unstackUnpack(linear/linear/DenseToSparseTensor_2/Cast*	
num*
T0	*
_output_shapes
: : *

axis 

)linear/linear/DenseToSparseTensor_2/stackPack-linear/linear/DenseToSparseTensor_2/unstack:1*
N*

axis *
T0	*
_output_shapes
:
Ŕ
'linear/linear/DenseToSparseTensor_2/MulMul3linear/linear/DenseToSparseTensor_2/strided_slice_1)linear/linear/DenseToSparseTensor_2/stack*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

9linear/linear/DenseToSparseTensor_2/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
Ý
'linear/linear/DenseToSparseTensor_2/SumSum'linear/linear/DenseToSparseTensor_2/Mul9linear/linear/DenseToSparseTensor_2/Sum/reduction_indices*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( *
T0	
¸
'linear/linear/DenseToSparseTensor_2/AddAdd1linear/linear/DenseToSparseTensor_2/strided_slice'linear/linear/DenseToSparseTensor_2/Sum*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
*linear/linear/DenseToSparseTensor_2/GatherGather+linear/linear/DenseToSparseTensor_2/Reshape'linear/linear/DenseToSparseTensor_2/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
linear/linear/lookup_2/ConstConst*
dtype0* 
valueBBTrueBFalse*
_output_shapes
:
]
linear/linear/lookup_2/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
d
"linear/linear/lookup_2/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
d
"linear/linear/lookup_2/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
˛
linear/linear/lookup_2/rangeRange"linear/linear/lookup_2/range/startlinear/linear/lookup_2/Size"linear/linear/lookup_2/range/delta*

Tidx0*
_output_shapes
:
u
linear/linear/lookup_2/CastCastlinear/linear/lookup_2/range*

DstT0	*

SrcT0*
_output_shapes
:
Ż
!linear/linear/lookup_2/hash_table	HashTable*
	container *
	key_dtype0*
_output_shapes
:*
use_node_name_sharing( *
value_dtype0	*
shared_name 
r
'linear/linear/lookup_2/hash_table/ConstConst*
dtype0	*
valueB	 R
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
ë
,linear/linear/lookup_2/hash_table/table_initInitializeTable!linear/linear/lookup_2/hash_tablelinear/linear/lookup_2/Constlinear/linear/lookup_2/Cast*4
_class*
(&loc:@linear/linear/lookup_2/hash_table*

Tkey0*

Tval0	

!linear/linear/hash_table_Lookup_2LookupTableFind!linear/linear/lookup_2/hash_table*linear/linear/DenseToSparseTensor_2/Gather'linear/linear/lookup_2/hash_table/Const*	
Tin0*4
_class*
(&loc:@linear/linear/lookup_2/hash_table*

Tout0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
/linear/is_male/weights/part_0/Initializer/ConstConst*
dtype0*0
_class&
$"loc:@linear/is_male/weights/part_0*
valueB*    *
_output_shapes

:
Ă
linear/is_male/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*0
_class&
$"loc:@linear/is_male/weights/part_0*
shared_name 

$linear/is_male/weights/part_0/AssignAssignlinear/is_male/weights/part_0/linear/is_male/weights/part_0/Initializer/Const*
validate_shape(*0
_class&
$"loc:@linear/is_male/weights/part_0*
use_locking(*
T0*
_output_shapes

:
¨
"linear/is_male/weights/part_0/readIdentitylinear/is_male/weights/part_0*0
_class&
$"loc:@linear/is_male/weights/part_0*
T0*
_output_shapes

:
{
1linear/linear/is_male/is_male_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
z
0linear/linear/is_male/is_male_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
ő
+linear/linear/is_male/is_male_weights/SliceSlice(linear/linear/DenseToSparseTensor_2/Cast1linear/linear/is_male/is_male_weights/Slice/begin0linear/linear/is_male/is_male_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
u
+linear/linear/is_male/is_male_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Ę
*linear/linear/is_male/is_male_weights/ProdProd+linear/linear/is_male/is_male_weights/Slice+linear/linear/is_male/is_male_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
v
4linear/linear/is_male/is_male_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
ĺ
,linear/linear/is_male/is_male_weights/GatherGather(linear/linear/DenseToSparseTensor_2/Cast4linear/linear/is_male/is_male_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
Ů
=linear/linear/is_male/is_male_weights/SparseReshape/new_shapePack*linear/linear/is_male/is_male_weights/Prod,linear/linear/is_male/is_male_weights/Gather*
N*

axis *
T0	*
_output_shapes
:

3linear/linear/is_male/is_male_weights/SparseReshapeSparseReshape)linear/linear/DenseToSparseTensor_2/Where(linear/linear/DenseToSparseTensor_2/Cast=linear/linear/is_male/is_male_weights/SparseReshape/new_shape*-
_output_shapes
:˙˙˙˙˙˙˙˙˙:

<linear/linear/is_male/is_male_weights/SparseReshape/IdentityIdentity!linear/linear/hash_table_Lookup_2*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
v
4linear/linear/is_male/is_male_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ä
2linear/linear/is_male/is_male_weights/GreaterEqualGreaterEqual<linear/linear/is_male/is_male_weights/SparseReshape/Identity4linear/linear/is_male/is_male_weights/GreaterEqual/y*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

+linear/linear/is_male/is_male_weights/WhereWhere2linear/linear/is_male/is_male_weights/GreaterEqual*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

3linear/linear/is_male/is_male_weights/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
Ö
-linear/linear/is_male/is_male_weights/ReshapeReshape+linear/linear/is_male/is_male_weights/Where3linear/linear/is_male/is_male_weights/Reshape/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0	
ü
.linear/linear/is_male/is_male_weights/Gather_1Gather3linear/linear/is_male/is_male_weights/SparseReshape-linear/linear/is_male/is_male_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

.linear/linear/is_male/is_male_weights/Gather_2Gather<linear/linear/is_male/is_male_weights/SparseReshape/Identity-linear/linear/is_male/is_male_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

.linear/linear/is_male/is_male_weights/IdentityIdentity5linear/linear/is_male/is_male_weights/SparseReshape:1*
T0	*
_output_shapes
:

?linear/linear/is_male/is_male_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 

Mlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:

Olinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Olinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

Glinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_sliceStridedSlice.linear/linear/is_male/is_male_weights/IdentityMlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice/stackOlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice/stack_1Olinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
ż
>linear/linear/is_male/is_male_weights/SparseFillEmptyRows/CastCastGlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice*

DstT0*

SrcT0	*
_output_shapes
: 

Elinear/linear/is_male/is_male_weights/SparseFillEmptyRows/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Elinear/linear/is_male/is_male_weights/SparseFillEmptyRows/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ç
?linear/linear/is_male/is_male_weights/SparseFillEmptyRows/rangeRangeElinear/linear/is_male/is_male_weights/SparseFillEmptyRows/range/start>linear/linear/is_male/is_male_weights/SparseFillEmptyRows/CastElinear/linear/is_male/is_male_weights/SparseFillEmptyRows/range/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ć
@linear/linear/is_male/is_male_weights/SparseFillEmptyRows/Cast_1Cast?linear/linear/is_male/is_male_weights/SparseFillEmptyRows/range*

DstT0	*

SrcT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
Olinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
˘
Qlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
˘
Qlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

Ilinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_1StridedSlice.linear/linear/is_male/is_male_weights/Gather_1Olinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_1/stackQlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_1/stack_1Qlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_1/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
§
Blinear/linear/is_male/is_male_weights/SparseFillEmptyRows/ListDiffListDiff@linear/linear/is_male/is_male_weights/SparseFillEmptyRows/Cast_1Ilinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_1*
out_idx0*
T0	*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

Olinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:

Qlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_2/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Qlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:

Ilinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_2StridedSlice.linear/linear/is_male/is_male_weights/IdentityOlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_2/stackQlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_2/stack_1Qlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask

Hlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 

Dlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/ExpandDims
ExpandDimsIlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/strided_slice_2Hlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/ExpandDims/dim*

Tdim0*
T0	*
_output_shapes
:

Ulinear/linear/is_male/is_male_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesConst*
dtype0
*
value	B
 Z*
_output_shapes
: 

Ulinear/linear/is_male/is_male_weights/SparseFillEmptyRows/SparseToDense/default_valueConst*
dtype0
*
value	B
 Z *
_output_shapes
: 
ć
Glinear/linear/is_male/is_male_weights/SparseFillEmptyRows/SparseToDenseSparseToDenseBlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/ListDiffDlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/ExpandDimsUlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesUlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Glinear/linear/is_male/is_male_weights/SparseFillEmptyRows/Reshape/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:

Alinear/linear/is_male/is_male_weights/SparseFillEmptyRows/ReshapeReshapeBlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/ListDiffGlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0	
Ć
Dlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/zeros_like	ZerosLikeAlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/Reshape*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Elinear/linear/is_male/is_male_weights/SparseFillEmptyRows/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
ă
@linear/linear/is_male/is_male_weights/SparseFillEmptyRows/concatConcatV2Alinear/linear/is_male/is_male_weights/SparseFillEmptyRows/ReshapeDlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/zeros_likeElinear/linear/is_male/is_male_weights/SparseFillEmptyRows/concat/axis*
N*

Tidx0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
?linear/linear/is_male/is_male_weights/SparseFillEmptyRows/ShapeShapeBlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/ListDiff*
out_type0*
T0	*
_output_shapes
:
ö
>linear/linear/is_male/is_male_weights/SparseFillEmptyRows/FillFill?linear/linear/is_male/is_male_weights/SparseFillEmptyRows/Shape?linear/linear/is_male/is_male_weights/SparseFillEmptyRows/Const*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Glinear/linear/is_male/is_male_weights/SparseFillEmptyRows/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Đ
Blinear/linear/is_male/is_male_weights/SparseFillEmptyRows/concat_1ConcatV2.linear/linear/is_male/is_male_weights/Gather_1@linear/linear/is_male/is_male_weights/SparseFillEmptyRows/concatGlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/concat_1/axis*
N*

Tidx0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Glinear/linear/is_male/is_male_weights/SparseFillEmptyRows/concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ę
Blinear/linear/is_male/is_male_weights/SparseFillEmptyRows/concat_2ConcatV2.linear/linear/is_male/is_male_weights/Gather_2>linear/linear/is_male/is_male_weights/SparseFillEmptyRows/FillGlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/concat_2/axis*
N*

Tidx0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ń
Glinear/linear/is_male/is_male_weights/SparseFillEmptyRows/SparseReorderSparseReorderBlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/concat_1Blinear/linear/is_male/is_male_weights/SparseFillEmptyRows/concat_2.linear/linear/is_male/is_male_weights/Identity*
T0	*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ł
Blinear/linear/is_male/is_male_weights/SparseFillEmptyRows/IdentityIdentity.linear/linear/is_male/is_male_weights/Identity*
T0	*
_output_shapes
:
˘
Qlinear/linear/is_male/is_male_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
¤
Slinear/linear/is_male/is_male_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
¤
Slinear/linear/is_male/is_male_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ŕ
Klinear/linear/is_male/is_male_weights/embedding_lookup_sparse/strided_sliceStridedSliceGlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/SparseReorderQlinear/linear/is_male/is_male_weights/embedding_lookup_sparse/strided_slice/stackSlinear/linear/is_male/is_male_weights/embedding_lookup_sparse/strided_slice/stack_1Slinear/linear/is_male/is_male_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
Ô
Blinear/linear/is_male/is_male_weights/embedding_lookup_sparse/CastCastKlinear/linear/is_male/is_male_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ĺ
Dlinear/linear/is_male/is_male_weights/embedding_lookup_sparse/UniqueUniqueIlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/SparseReorder:1*
out_idx0*
T0	*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ô
Nlinear/linear/is_male/is_male_weights/embedding_lookup_sparse/embedding_lookupGather"linear/is_male/weights/part_0/readDlinear/linear/is_male/is_male_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*0
_class&
$"loc:@linear/is_male/weights/part_0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ë
=linear/linear/is_male/is_male_weights/embedding_lookup_sparseSparseSegmentSumNlinear/linear/is_male/is_male_weights/embedding_lookup_sparse/embedding_lookupFlinear/linear/is_male/is_male_weights/embedding_lookup_sparse/Unique:1Blinear/linear/is_male/is_male_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0

5linear/linear/is_male/is_male_weights/Reshape_1/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
ú
/linear/linear/is_male/is_male_weights/Reshape_1ReshapeGlinear/linear/is_male/is_male_weights/SparseFillEmptyRows/SparseToDense5linear/linear/is_male/is_male_weights/Reshape_1/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0

¨
+linear/linear/is_male/is_male_weights/ShapeShape=linear/linear/is_male/is_male_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

9linear/linear/is_male/is_male_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

;linear/linear/is_male/is_male_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

;linear/linear/is_male/is_male_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ˇ
3linear/linear/is_male/is_male_weights/strided_sliceStridedSlice+linear/linear/is_male/is_male_weights/Shape9linear/linear/is_male/is_male_weights/strided_slice/stack;linear/linear/is_male/is_male_weights/strided_slice/stack_1;linear/linear/is_male/is_male_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
o
-linear/linear/is_male/is_male_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
Ń
+linear/linear/is_male/is_male_weights/stackPack-linear/linear/is_male/is_male_weights/stack/03linear/linear/is_male/is_male_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:
Ý
*linear/linear/is_male/is_male_weights/TileTile/linear/linear/is_male/is_male_weights/Reshape_1+linear/linear/is_male/is_male_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ž
0linear/linear/is_male/is_male_weights/zeros_like	ZerosLike=linear/linear/is_male/is_male_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ţ
%linear/linear/is_male/is_male_weightsSelect*linear/linear/is_male/is_male_weights/Tile0linear/linear/is_male/is_male_weights/zeros_like=linear/linear/is_male/is_male_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

*linear/linear/is_male/is_male_weights/CastCast(linear/linear/DenseToSparseTensor_2/Cast*

DstT0*

SrcT0	*
_output_shapes
:
}
3linear/linear/is_male/is_male_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
|
2linear/linear/is_male/is_male_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
ý
-linear/linear/is_male/is_male_weights/Slice_1Slice*linear/linear/is_male/is_male_weights/Cast3linear/linear/is_male/is_male_weights/Slice_1/begin2linear/linear/is_male/is_male_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:

-linear/linear/is_male/is_male_weights/Shape_1Shape%linear/linear/is_male/is_male_weights*
out_type0*
T0*
_output_shapes
:
}
3linear/linear/is_male/is_male_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

2linear/linear/is_male/is_male_weights/Slice_2/sizeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:

-linear/linear/is_male/is_male_weights/Slice_2Slice-linear/linear/is_male/is_male_weights/Shape_13linear/linear/is_male/is_male_weights/Slice_2/begin2linear/linear/is_male/is_male_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
s
1linear/linear/is_male/is_male_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 

,linear/linear/is_male/is_male_weights/concatConcatV2-linear/linear/is_male/is_male_weights/Slice_1-linear/linear/is_male/is_male_weights/Slice_21linear/linear/is_male/is_male_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
Ď
/linear/linear/is_male/is_male_weights/Reshape_2Reshape%linear/linear/is_male/is_male_weights,linear/linear/is_male/is_male_weights/concat*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
n
linear/linear/Reshape_3/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
˛
linear/linear/Reshape_3Reshape/linear/linear/is_male/is_male_weights/Reshape_2linear/linear/Reshape_3/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
u
)linear/linear/DenseToSparseTensor_3/ShapeShapeExpandDims_4*
out_type0*
T0*
_output_shapes
:

(linear/linear/DenseToSparseTensor_3/CastCast)linear/linear/DenseToSparseTensor_3/Shape*

DstT0	*

SrcT0*
_output_shapes
:
m
,linear/linear/DenseToSparseTensor_3/Cast_1/xConst*
dtype0*
valueB B *
_output_shapes
: 
Ś
,linear/linear/DenseToSparseTensor_3/NotEqualNotEqualExpandDims_4,linear/linear/DenseToSparseTensor_3/Cast_1/x*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

)linear/linear/DenseToSparseTensor_3/WhereWhere,linear/linear/DenseToSparseTensor_3/NotEqual*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

1linear/linear/DenseToSparseTensor_3/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
ł
+linear/linear/DenseToSparseTensor_3/ReshapeReshapeExpandDims_41linear/linear/DenseToSparseTensor_3/Reshape/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0

7linear/linear/DenseToSparseTensor_3/strided_slice/stackConst*
dtype0*
valueB"       *
_output_shapes
:

9linear/linear/DenseToSparseTensor_3/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

9linear/linear/DenseToSparseTensor_3/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ş
1linear/linear/DenseToSparseTensor_3/strided_sliceStridedSlice)linear/linear/DenseToSparseTensor_3/Where7linear/linear/DenseToSparseTensor_3/strided_slice/stack9linear/linear/DenseToSparseTensor_3/strided_slice/stack_19linear/linear/DenseToSparseTensor_3/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask

9linear/linear/DenseToSparseTensor_3/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:

;linear/linear/DenseToSparseTensor_3/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:

;linear/linear/DenseToSparseTensor_3/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ć
3linear/linear/DenseToSparseTensor_3/strided_slice_1StridedSlice)linear/linear/DenseToSparseTensor_3/Where9linear/linear/DenseToSparseTensor_3/strided_slice_1/stack;linear/linear/DenseToSparseTensor_3/strided_slice_1/stack_1;linear/linear/DenseToSparseTensor_3/strided_slice_1/stack_2*
new_axis_mask *
Index0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 

+linear/linear/DenseToSparseTensor_3/unstackUnpack(linear/linear/DenseToSparseTensor_3/Cast*	
num*
T0	*
_output_shapes
: : *

axis 

)linear/linear/DenseToSparseTensor_3/stackPack-linear/linear/DenseToSparseTensor_3/unstack:1*
N*

axis *
T0	*
_output_shapes
:
Ŕ
'linear/linear/DenseToSparseTensor_3/MulMul3linear/linear/DenseToSparseTensor_3/strided_slice_1)linear/linear/DenseToSparseTensor_3/stack*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

9linear/linear/DenseToSparseTensor_3/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
Ý
'linear/linear/DenseToSparseTensor_3/SumSum'linear/linear/DenseToSparseTensor_3/Mul9linear/linear/DenseToSparseTensor_3/Sum/reduction_indices*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( *
T0	
¸
'linear/linear/DenseToSparseTensor_3/AddAdd1linear/linear/DenseToSparseTensor_3/strided_slice'linear/linear/DenseToSparseTensor_3/Sum*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ć
*linear/linear/DenseToSparseTensor_3/GatherGather+linear/linear/DenseToSparseTensor_3/Reshape'linear/linear/DenseToSparseTensor_3/Add*
validate_indices(*
Tparams0*
Tindices0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
linear/linear/lookup_3/ConstConst*
dtype0* 
valueBBTrueBFalse*
_output_shapes
:
]
linear/linear/lookup_3/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
d
"linear/linear/lookup_3/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
d
"linear/linear/lookup_3/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
˛
linear/linear/lookup_3/rangeRange"linear/linear/lookup_3/range/startlinear/linear/lookup_3/Size"linear/linear/lookup_3/range/delta*

Tidx0*
_output_shapes
:
u
linear/linear/lookup_3/CastCastlinear/linear/lookup_3/range*

DstT0	*

SrcT0*
_output_shapes
:
Ż
!linear/linear/lookup_3/hash_table	HashTable*
	container *
	key_dtype0*
_output_shapes
:*
use_node_name_sharing( *
value_dtype0	*
shared_name 
r
'linear/linear/lookup_3/hash_table/ConstConst*
dtype0	*
valueB	 R
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
ë
,linear/linear/lookup_3/hash_table/table_initInitializeTable!linear/linear/lookup_3/hash_tablelinear/linear/lookup_3/Constlinear/linear/lookup_3/Cast*4
_class*
(&loc:@linear/linear/lookup_3/hash_table*

Tkey0*

Tval0	

!linear/linear/hash_table_Lookup_3LookupTableFind!linear/linear/lookup_3/hash_table*linear/linear/DenseToSparseTensor_3/Gather'linear/linear/lookup_3/hash_table/Const*	
Tin0*4
_class*
(&loc:@linear/linear/lookup_3/hash_table*

Tout0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
6linear/mother_married/weights/part_0/Initializer/ConstConst*
dtype0*7
_class-
+)loc:@linear/mother_married/weights/part_0*
valueB*    *
_output_shapes

:
Ń
$linear/mother_married/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*7
_class-
+)loc:@linear/mother_married/weights/part_0*
shared_name 

+linear/mother_married/weights/part_0/AssignAssign$linear/mother_married/weights/part_06linear/mother_married/weights/part_0/Initializer/Const*
validate_shape(*7
_class-
+)loc:@linear/mother_married/weights/part_0*
use_locking(*
T0*
_output_shapes

:
˝
)linear/mother_married/weights/part_0/readIdentity$linear/mother_married/weights/part_0*7
_class-
+)loc:@linear/mother_married/weights/part_0*
T0*
_output_shapes

:

?linear/linear/mother_married/mother_married_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

>linear/linear/mother_married/mother_married_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:

9linear/linear/mother_married/mother_married_weights/SliceSlice(linear/linear/DenseToSparseTensor_3/Cast?linear/linear/mother_married/mother_married_weights/Slice/begin>linear/linear/mother_married/mother_married_weights/Slice/size*
Index0*
T0	*
_output_shapes
:

9linear/linear/mother_married/mother_married_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ô
8linear/linear/mother_married/mother_married_weights/ProdProd9linear/linear/mother_married/mother_married_weights/Slice9linear/linear/mother_married/mother_married_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	

Blinear/linear/mother_married/mother_married_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 

:linear/linear/mother_married/mother_married_weights/GatherGather(linear/linear/DenseToSparseTensor_3/CastBlinear/linear/mother_married/mother_married_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 

Klinear/linear/mother_married/mother_married_weights/SparseReshape/new_shapePack8linear/linear/mother_married/mother_married_weights/Prod:linear/linear/mother_married/mother_married_weights/Gather*
N*

axis *
T0	*
_output_shapes
:
Ł
Alinear/linear/mother_married/mother_married_weights/SparseReshapeSparseReshape)linear/linear/DenseToSparseTensor_3/Where(linear/linear/DenseToSparseTensor_3/CastKlinear/linear/mother_married/mother_married_weights/SparseReshape/new_shape*-
_output_shapes
:˙˙˙˙˙˙˙˙˙:
§
Jlinear/linear/mother_married/mother_married_weights/SparseReshape/IdentityIdentity!linear/linear/hash_table_Lookup_3*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Blinear/linear/mother_married/mother_married_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 

@linear/linear/mother_married/mother_married_weights/GreaterEqualGreaterEqualJlinear/linear/mother_married/mother_married_weights/SparseReshape/IdentityBlinear/linear/mother_married/mother_married_weights/GreaterEqual/y*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
9linear/linear/mother_married/mother_married_weights/WhereWhere@linear/linear/mother_married/mother_married_weights/GreaterEqual*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Alinear/linear/mother_married/mother_married_weights/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:

;linear/linear/mother_married/mother_married_weights/ReshapeReshape9linear/linear/mother_married/mother_married_weights/WhereAlinear/linear/mother_married/mother_married_weights/Reshape/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0	
Ś
<linear/linear/mother_married/mother_married_weights/Gather_1GatherAlinear/linear/mother_married/mother_married_weights/SparseReshape;linear/linear/mother_married/mother_married_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
<linear/linear/mother_married/mother_married_weights/Gather_2GatherJlinear/linear/mother_married/mother_married_weights/SparseReshape/Identity;linear/linear/mother_married/mother_married_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
<linear/linear/mother_married/mother_married_weights/IdentityIdentityClinear/linear/mother_married/mother_married_weights/SparseReshape:1*
T0	*
_output_shapes
:

Mlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Ľ
[linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
§
]linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
§
]linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Đ
Ulinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_sliceStridedSlice<linear/linear/mother_married/mother_married_weights/Identity[linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice/stack]linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice/stack_1]linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
Ű
Llinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/CastCastUlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice*

DstT0*

SrcT0	*
_output_shapes
: 

Slinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Slinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
˙
Mlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/rangeRangeSlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/range/startLlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/CastSlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/range/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
Nlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/Cast_1CastMlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/range*

DstT0	*

SrcT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ž
]linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
°
_linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
°
_linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ĺ
Wlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_1StridedSlice<linear/linear/mother_married/mother_married_weights/Gather_1]linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_1/stack_linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_1/stack_1_linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_1/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
Ń
Plinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/ListDiffListDiffNlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/Cast_1Wlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_1*
out_idx0*
T0	*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
§
]linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:
Š
_linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_2/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Š
_linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ř
Wlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_2StridedSlice<linear/linear/mother_married/mother_married_weights/Identity]linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_2/stack_linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_2/stack_1_linear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
Ą
Vlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
Â
Rlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/ExpandDims
ExpandDimsWlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/strided_slice_2Vlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/ExpandDims/dim*

Tdim0*
T0	*
_output_shapes
:
Ľ
clinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesConst*
dtype0
*
value	B
 Z*
_output_shapes
: 
Ľ
clinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/SparseToDense/default_valueConst*
dtype0
*
value	B
 Z *
_output_shapes
: 
Ź
Ulinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/SparseToDenseSparseToDensePlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/ListDiffRlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/ExpandDimsclinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesclinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
Ulinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/Reshape/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
Ă
Olinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/ReshapeReshapePlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/ListDiffUlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0	
â
Rlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/zeros_like	ZerosLikeOlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/Reshape*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Slinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 

Nlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/concatConcatV2Olinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/ReshapeRlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/zeros_likeSlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/concat/axis*
N*

Tidx0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ý
Mlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/ShapeShapePlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/ListDiff*
out_type0*
T0	*
_output_shapes
:
 
Llinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/FillFillMlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/ShapeMlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/Const*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ulinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 

Plinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/concat_1ConcatV2<linear/linear/mother_married/mother_married_weights/Gather_1Nlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/concatUlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/concat_1/axis*
N*

Tidx0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ulinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 

Plinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/concat_2ConcatV2<linear/linear/mother_married/mother_married_weights/Gather_2Llinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/FillUlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/concat_2/axis*
N*

Tidx0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ulinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/SparseReorderSparseReorderPlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/concat_1Plinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/concat_2<linear/linear/mother_married/mother_married_weights/Identity*
T0	*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ż
Plinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/IdentityIdentity<linear/linear/mother_married/mother_married_weights/Identity*
T0	*
_output_shapes
:
°
_linear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
˛
alinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
˛
alinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:

Ylinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/strided_sliceStridedSliceUlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/SparseReorder_linear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/strided_slice/stackalinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/strided_slice/stack_1alinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
đ
Plinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/CastCastYlinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Rlinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/UniqueUniqueWlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/SparseReorder:1*
out_idx0*
T0	*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ţ
\linear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/embedding_lookupGather)linear/mother_married/weights/part_0/readRlinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*7
_class-
+)loc:@linear/mother_married/weights/part_0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
Klinear/linear/mother_married/mother_married_weights/embedding_lookup_sparseSparseSegmentSum\linear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/embedding_lookupTlinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/Unique:1Plinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0

Clinear/linear/mother_married/mother_married_weights/Reshape_1/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
¤
=linear/linear/mother_married/mother_married_weights/Reshape_1ReshapeUlinear/linear/mother_married/mother_married_weights/SparseFillEmptyRows/SparseToDenseClinear/linear/mother_married/mother_married_weights/Reshape_1/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0

Ä
9linear/linear/mother_married/mother_married_weights/ShapeShapeKlinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

Glinear/linear/mother_married/mother_married_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

Ilinear/linear/mother_married/mother_married_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Ilinear/linear/mother_married/mother_married_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ý
Alinear/linear/mother_married/mother_married_weights/strided_sliceStridedSlice9linear/linear/mother_married/mother_married_weights/ShapeGlinear/linear/mother_married/mother_married_weights/strided_slice/stackIlinear/linear/mother_married/mother_married_weights/strided_slice/stack_1Ilinear/linear/mother_married/mother_married_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
}
;linear/linear/mother_married/mother_married_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
ű
9linear/linear/mother_married/mother_married_weights/stackPack;linear/linear/mother_married/mother_married_weights/stack/0Alinear/linear/mother_married/mother_married_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:

8linear/linear/mother_married/mother_married_weights/TileTile=linear/linear/mother_married/mother_married_weights/Reshape_19linear/linear/mother_married/mother_married_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ę
>linear/linear/mother_married/mother_married_weights/zeros_like	ZerosLikeKlinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ś
3linear/linear/mother_married/mother_married_weightsSelect8linear/linear/mother_married/mother_married_weights/Tile>linear/linear/mother_married/mother_married_weights/zeros_likeKlinear/linear/mother_married/mother_married_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

8linear/linear/mother_married/mother_married_weights/CastCast(linear/linear/DenseToSparseTensor_3/Cast*

DstT0*

SrcT0	*
_output_shapes
:

Alinear/linear/mother_married/mother_married_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

@linear/linear/mother_married/mother_married_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
ľ
;linear/linear/mother_married/mother_married_weights/Slice_1Slice8linear/linear/mother_married/mother_married_weights/CastAlinear/linear/mother_married/mother_married_weights/Slice_1/begin@linear/linear/mother_married/mother_married_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ž
;linear/linear/mother_married/mother_married_weights/Shape_1Shape3linear/linear/mother_married/mother_married_weights*
out_type0*
T0*
_output_shapes
:

Alinear/linear/mother_married/mother_married_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

@linear/linear/mother_married/mother_married_weights/Slice_2/sizeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
¸
;linear/linear/mother_married/mother_married_weights/Slice_2Slice;linear/linear/mother_married/mother_married_weights/Shape_1Alinear/linear/mother_married/mother_married_weights/Slice_2/begin@linear/linear/mother_married/mother_married_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:

?linear/linear/mother_married/mother_married_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ť
:linear/linear/mother_married/mother_married_weights/concatConcatV2;linear/linear/mother_married/mother_married_weights/Slice_1;linear/linear/mother_married/mother_married_weights/Slice_2?linear/linear/mother_married/mother_married_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
ů
=linear/linear/mother_married/mother_married_weights/Reshape_2Reshape3linear/linear/mother_married/mother_married_weights:linear/linear/mother_married/mother_married_weights/concat*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
n
linear/linear/Reshape_4/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
Ŕ
linear/linear/Reshape_4Reshape=linear/linear/mother_married/mother_married_weights/Reshape_2linear/linear/Reshape_4/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
ž
3linear/mother_race/weights/part_0/Initializer/ConstConst*
dtype0*4
_class*
(&loc:@linear/mother_race/weights/part_0*
valueB*    *
_output_shapes

:
Ë
!linear/mother_race/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*4
_class*
(&loc:@linear/mother_race/weights/part_0*
shared_name 

(linear/mother_race/weights/part_0/AssignAssign!linear/mother_race/weights/part_03linear/mother_race/weights/part_0/Initializer/Const*
validate_shape(*4
_class*
(&loc:@linear/mother_race/weights/part_0*
use_locking(*
T0*
_output_shapes

:
´
&linear/mother_race/weights/part_0/readIdentity!linear/mother_race/weights/part_0*4
_class*
(&loc:@linear/mother_race/weights/part_0*
T0*
_output_shapes

:

9linear/linear/mother_race/mother_race_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:

8linear/linear/mother_race/mother_race_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Í
3linear/linear/mother_race/mother_race_weights/SliceSlicehdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Cast9linear/linear/mother_race/mother_race_weights/Slice/begin8linear/linear/mother_race/mother_race_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
}
3linear/linear/mother_race/mother_race_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
â
2linear/linear/mother_race/mother_race_weights/ProdProd3linear/linear/mother_race/mother_race_weights/Slice3linear/linear/mother_race/mother_race_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
~
<linear/linear/mother_race/mother_race_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
ľ
4linear/linear/mother_race/mother_race_weights/GatherGatherhdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Cast<linear/linear/mother_race/mother_race_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
ń
Elinear/linear/mother_race/mother_race_weights/SparseReshape/new_shapePack2linear/linear/mother_race/mother_race_weights/Prod4linear/linear/mother_race/mother_race_weights/Gather*
N*

axis *
T0	*
_output_shapes
:

;linear/linear/mother_race/mother_race_weights/SparseReshapeSparseReshapeidnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Wherehdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/CastElinear/linear/mother_race/mother_race_weights/SparseReshape/new_shape*-
_output_shapes
:˙˙˙˙˙˙˙˙˙:
á
Dlinear/linear/mother_race/mother_race_weights/SparseReshape/IdentityIdentityadnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/hash_table_Lookup*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
~
<linear/linear/mother_race/mother_race_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ü
:linear/linear/mother_race/mother_race_weights/GreaterEqualGreaterEqualDlinear/linear/mother_race/mother_race_weights/SparseReshape/Identity<linear/linear/mother_race/mother_race_weights/GreaterEqual/y*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ą
3linear/linear/mother_race/mother_race_weights/WhereWhere:linear/linear/mother_race/mother_race_weights/GreaterEqual*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

;linear/linear/mother_race/mother_race_weights/Reshape/shapeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
î
5linear/linear/mother_race/mother_race_weights/ReshapeReshape3linear/linear/mother_race/mother_race_weights/Where;linear/linear/mother_race/mother_race_weights/Reshape/shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0	

6linear/linear/mother_race/mother_race_weights/Gather_1Gather;linear/linear/mother_race/mother_race_weights/SparseReshape5linear/linear/mother_race/mother_race_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

6linear/linear/mother_race/mother_race_weights/Gather_2GatherDlinear/linear/mother_race/mother_race_weights/SparseReshape/Identity5linear/linear/mother_race/mother_race_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
6linear/linear/mother_race/mother_race_weights/IdentityIdentity=linear/linear/mother_race/mother_race_weights/SparseReshape:1*
T0	*
_output_shapes
:

Glinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 

Ulinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Ą
Wlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ą
Wlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
˛
Olinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_sliceStridedSlice6linear/linear/mother_race/mother_race_weights/IdentityUlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice/stackWlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice/stack_1Wlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask
Ď
Flinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/CastCastOlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice*

DstT0*

SrcT0	*
_output_shapes
: 

Mlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/range/startConst*
dtype0*
value	B : *
_output_shapes
: 

Mlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
ç
Glinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/rangeRangeMlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/range/startFlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/CastMlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/range/delta*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
Hlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/Cast_1CastGlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/range*

DstT0	*

SrcT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¨
Wlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_1/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ş
Ylinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_1/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ş
Ylinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_1/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ç
Qlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_1StridedSlice6linear/linear/mother_race/mother_race_weights/Gather_1Wlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_1/stackYlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_1/stack_1Ylinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_1/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
ż
Jlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/ListDiffListDiffHlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/Cast_1Qlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_1*
out_idx0*
T0	*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ą
Wlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:
Ł
Ylinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_2/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ł
Ylinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ş
Qlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_2StridedSlice6linear/linear/mother_race/mother_race_weights/IdentityWlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_2/stackYlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_2/stack_1Ylinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask

Plinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/ExpandDims/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙*
_output_shapes
: 
°
Llinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/ExpandDims
ExpandDimsQlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/strided_slice_2Plinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/ExpandDims/dim*

Tdim0*
T0	*
_output_shapes
:

]linear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/SparseToDense/sparse_valuesConst*
dtype0
*
value	B
 Z*
_output_shapes
: 

]linear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/SparseToDense/default_valueConst*
dtype0
*
value	B
 Z *
_output_shapes
: 

Olinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/SparseToDenseSparseToDenseJlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/ListDiffLlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/ExpandDims]linear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/SparseToDense/sparse_values]linear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/SparseToDense/default_value*
validate_indices(*
Tindices0	*
T0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
Olinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/Reshape/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
ą
Ilinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/ReshapeReshapeJlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/ListDiffOlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/Reshape/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0	
Ö
Llinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/zeros_like	ZerosLikeIlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/Reshape*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Mlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 

Hlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/concatConcatV2Ilinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/ReshapeLlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/zeros_likeMlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/concat/axis*
N*

Tidx0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ń
Glinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/ShapeShapeJlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/ListDiff*
out_type0*
T0	*
_output_shapes
:

Flinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/FillFillGlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/ShapeGlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/Const*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Olinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/concat_1/axisConst*
dtype0*
value	B : *
_output_shapes
: 
đ
Jlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/concat_1ConcatV26linear/linear/mother_race/mother_race_weights/Gather_1Hlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/concatOlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/concat_1/axis*
N*

Tidx0*
T0	*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Olinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ę
Jlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/concat_2ConcatV26linear/linear/mother_race/mother_race_weights/Gather_2Flinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/FillOlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/concat_2/axis*
N*

Tidx0*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ń
Olinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/SparseReorderSparseReorderJlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/concat_1Jlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/concat_26linear/linear/mother_race/mother_race_weights/Identity*
T0	*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ł
Jlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/IdentityIdentity6linear/linear/mother_race/mother_race_weights/Identity*
T0	*
_output_shapes
:
Ş
Ylinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ź
[linear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ź
[linear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
č
Slinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/strided_sliceStridedSliceOlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/SparseReorderYlinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/strided_slice/stack[linear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/strided_slice/stack_1[linear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
ä
Jlinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/CastCastSlinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ő
Llinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/UniqueUniqueQlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/SparseReorder:1*
out_idx0*
T0	*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ě
Vlinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/embedding_lookupGather&linear/mother_race/weights/part_0/readLlinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*4
_class*
(&loc:@linear/mother_race/weights/part_0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Elinear/linear/mother_race/mother_race_weights/embedding_lookup_sparseSparseSegmentSumVlinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/embedding_lookupNlinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/Unique:1Jlinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0

=linear/linear/mother_race/mother_race_weights/Reshape_1/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:

7linear/linear/mother_race/mother_race_weights/Reshape_1ReshapeOlinear/linear/mother_race/mother_race_weights/SparseFillEmptyRows/SparseToDense=linear/linear/mother_race/mother_race_weights/Reshape_1/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0

¸
3linear/linear/mother_race/mother_race_weights/ShapeShapeElinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:

Alinear/linear/mother_race/mother_race_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

Clinear/linear/mother_race/mother_race_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

Clinear/linear/mother_race/mother_race_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ß
;linear/linear/mother_race/mother_race_weights/strided_sliceStridedSlice3linear/linear/mother_race/mother_race_weights/ShapeAlinear/linear/mother_race/mother_race_weights/strided_slice/stackClinear/linear/mother_race/mother_race_weights/strided_slice/stack_1Clinear/linear/mother_race/mother_race_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
w
5linear/linear/mother_race/mother_race_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
é
3linear/linear/mother_race/mother_race_weights/stackPack5linear/linear/mother_race/mother_race_weights/stack/0;linear/linear/mother_race/mother_race_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:
ő
2linear/linear/mother_race/mother_race_weights/TileTile7linear/linear/mother_race/mother_race_weights/Reshape_13linear/linear/mother_race/mother_race_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ž
8linear/linear/mother_race/mother_race_weights/zeros_like	ZerosLikeElinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-linear/linear/mother_race/mother_race_weightsSelect2linear/linear/mother_race/mother_race_weights/Tile8linear/linear/mother_race/mother_race_weights/zeros_likeElinear/linear/mother_race/mother_race_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
2linear/linear/mother_race/mother_race_weights/CastCasthdnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/DenseToSparseTensor/Cast*

DstT0*

SrcT0	*
_output_shapes
:

;linear/linear/mother_race/mother_race_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:

:linear/linear/mother_race/mother_race_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:

5linear/linear/mother_race/mother_race_weights/Slice_1Slice2linear/linear/mother_race/mother_race_weights/Cast;linear/linear/mother_race/mother_race_weights/Slice_1/begin:linear/linear/mother_race/mother_race_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
˘
5linear/linear/mother_race/mother_race_weights/Shape_1Shape-linear/linear/mother_race/mother_race_weights*
out_type0*
T0*
_output_shapes
:

;linear/linear/mother_race/mother_race_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

:linear/linear/mother_race/mother_race_weights/Slice_2/sizeConst*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙*
_output_shapes
:
 
5linear/linear/mother_race/mother_race_weights/Slice_2Slice5linear/linear/mother_race/mother_race_weights/Shape_1;linear/linear/mother_race/mother_race_weights/Slice_2/begin:linear/linear/mother_race/mother_race_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
{
9linear/linear/mother_race/mother_race_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Ł
4linear/linear/mother_race/mother_race_weights/concatConcatV25linear/linear/mother_race/mother_race_weights/Slice_15linear/linear/mother_race/mother_race_weights/Slice_29linear/linear/mother_race/mother_race_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
ç
7linear/linear/mother_race/mother_race_weights/Reshape_2Reshape-linear/linear/mother_race/mother_race_weights4linear/linear/mother_race/mother_race_weights/concat*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
n
linear/linear/Reshape_5/shapeConst*
dtype0*
valueB"˙˙˙˙   *
_output_shapes
:
ş
linear/linear/Reshape_5Reshape7linear/linear/mother_race/mother_race_weights/Reshape_2linear/linear/Reshape_5/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0*
T0
é
linear/linear/AddNAddNlinear/linear/Reshapelinear/linear/Reshape_1linear/linear/Reshape_2linear/linear/Reshape_3linear/linear/Reshape_4linear/linear/Reshape_5*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
N
Ś
+linear/bias_weight/part_0/Initializer/ConstConst*
dtype0*,
_class"
 loc:@linear/bias_weight/part_0*
valueB*    *
_output_shapes
:
ł
linear/bias_weight/part_0
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@linear/bias_weight/part_0*
shared_name 
î
 linear/bias_weight/part_0/AssignAssignlinear/bias_weight/part_0+linear/bias_weight/part_0/Initializer/Const*
validate_shape(*,
_class"
 loc:@linear/bias_weight/part_0*
use_locking(*
T0*
_output_shapes
:

linear/bias_weight/part_0/readIdentitylinear/bias_weight/part_0*,
_class"
 loc:@linear/bias_weight/part_0*
T0*
_output_shapes
:
c
linear/bias_weightIdentitylinear/bias_weight/part_0/read*
T0*
_output_shapes
:

linear/linear/BiasAddBiasAddlinear/linear/AddNlinear/bias_weight*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
T0
g
addAdddnn/logits/BiasAddlinear/linear/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
predictions/scoresSqueezeadd*
squeeze_dims
*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

initNoOp
Ŕ
init_all_tablesNoOpm^dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/hash_table/table_init+^linear/linear/lookup/hash_table/table_init-^linear/linear/lookup_1/hash_table/table_init-^linear/linear/lookup_2/hash_table/table_init-^linear/linear/lookup_3/hash_table/table_init
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_a1ccc67962274c2fb290ce9869ce8fc9/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
ř
save/SaveV2/tensor_namesConst*
dtype0*Ť
valueĄBBdnn/hiddenlayer_0/biasesBdnn/hiddenlayer_0/weightsBdnn/hiddenlayer_1/biasesBdnn/hiddenlayer_1/weightsB<dnn/input_from_feature_columns/mother_race_embedding/weightsBdnn/logits/biasesBdnn/logits/weightsBglobal_stepBlinear/alcohol_use/weightsBlinear/bias_weightBlinear/cigarette_use/weightsBlinear/is_male/weightsBlinear/mother_married/weightsBlinear/mother_race/weightsBlinear/plurality/weight*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*
dtype0*Ĺ
valueťB¸B64 0,64B5 64 0,5:0,64B32 0,32B64 32 0,64:0,32B12 3 0,12:0,3B1 0,1B32 1 0,32:0,1B B3 1 0,3:0,1B1 0,1B3 1 0,3:0,1B2 1 0,2:0,1B2 1 0,2:0,1B12 1 0,12:0,1B1 1 0,1:0,1*
_output_shapes
:
Ŕ
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices$dnn/hiddenlayer_0/biases/part_0/read%dnn/hiddenlayer_0/weights/part_0/read$dnn/hiddenlayer_1/biases/part_0/read%dnn/hiddenlayer_1/weights/part_0/readHdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/readdnn/logits/biases/part_0/readdnn/logits/weights/part_0/readglobal_step&linear/alcohol_use/weights/part_0/readlinear/bias_weight/part_0/read(linear/cigarette_use/weights/part_0/read"linear/is_male/weights/part_0/read)linear/mother_married/weights/part_0/read&linear/mother_race/weights/part_0/read#linear/plurality/weight/part_0/read*
dtypes
2	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*

axis *
T0*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
|
save/RestoreV2/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_0/biases*
_output_shapes
:
o
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueBB64 0,64*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Č
save/AssignAssigndnn/hiddenlayer_0/biases/part_0save/RestoreV2*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
use_locking(*
T0*
_output_shapes
:@

save/RestoreV2_1/tensor_namesConst*
dtype0*.
value%B#Bdnn/hiddenlayer_0/weights*
_output_shapes
:
w
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*"
valueBB5 64 0,5:0,64*
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Ň
save/Assign_1Assign dnn/hiddenlayer_0/weights/part_0save/RestoreV2_1*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
use_locking(*
T0*
_output_shapes

:@
~
save/RestoreV2_2/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_1/biases*
_output_shapes
:
q
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueBB32 0,32*
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ě
save/Assign_2Assigndnn/hiddenlayer_1/biases/part_0save/RestoreV2_2*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
use_locking(*
T0*
_output_shapes
: 

save/RestoreV2_3/tensor_namesConst*
dtype0*.
value%B#Bdnn/hiddenlayer_1/weights*
_output_shapes
:
y
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*$
valueBB64 32 0,64:0,32*
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Ň
save/Assign_3Assign dnn/hiddenlayer_1/weights/part_0save/RestoreV2_3*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
use_locking(*
T0*
_output_shapes

:@ 
˘
save/RestoreV2_4/tensor_namesConst*
dtype0*Q
valueHBFB<dnn/input_from_feature_columns/mother_race_embedding/weights*
_output_shapes
:
w
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*"
valueBB12 3 0,12:0,3*
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_4AssignCdnn/input_from_feature_columns/mother_race_embedding/weights/part_0save/RestoreV2_4*
validate_shape(*V
_classL
JHloc:@dnn/input_from_feature_columns/mother_race_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes

:
w
save/RestoreV2_5/tensor_namesConst*
dtype0*&
valueBBdnn/logits/biases*
_output_shapes
:
o
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
ž
save/Assign_5Assigndnn/logits/biases/part_0save/RestoreV2_5*
validate_shape(*+
_class!
loc:@dnn/logits/biases/part_0*
use_locking(*
T0*
_output_shapes
:
x
save/RestoreV2_6/tensor_namesConst*
dtype0*'
valueBBdnn/logits/weights*
_output_shapes
:
w
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*"
valueBB32 1 0,32:0,1*
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Ä
save/Assign_6Assigndnn/logits/weights/part_0save/RestoreV2_6*
validate_shape(*,
_class"
 loc:@dnn/logits/weights/part_0*
use_locking(*
T0*
_output_shapes

: 
q
save/RestoreV2_7/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2	*
_output_shapes
:
 
save/Assign_7Assignglobal_stepsave/RestoreV2_7*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 

save/RestoreV2_8/tensor_namesConst*
dtype0*/
value&B$Blinear/alcohol_use/weights*
_output_shapes
:
u
!save/RestoreV2_8/shape_and_slicesConst*
dtype0* 
valueBB3 1 0,3:0,1*
_output_shapes
:

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
Ô
save/Assign_8Assign!linear/alcohol_use/weights/part_0save/RestoreV2_8*
validate_shape(*4
_class*
(&loc:@linear/alcohol_use/weights/part_0*
use_locking(*
T0*
_output_shapes

:
x
save/RestoreV2_9/tensor_namesConst*
dtype0*'
valueBBlinear/bias_weight*
_output_shapes
:
o
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
Ŕ
save/Assign_9Assignlinear/bias_weight/part_0save/RestoreV2_9*
validate_shape(*,
_class"
 loc:@linear/bias_weight/part_0*
use_locking(*
T0*
_output_shapes
:

save/RestoreV2_10/tensor_namesConst*
dtype0*1
value(B&Blinear/cigarette_use/weights*
_output_shapes
:
v
"save/RestoreV2_10/shape_and_slicesConst*
dtype0* 
valueBB3 1 0,3:0,1*
_output_shapes
:

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
Ú
save/Assign_10Assign#linear/cigarette_use/weights/part_0save/RestoreV2_10*
validate_shape(*6
_class,
*(loc:@linear/cigarette_use/weights/part_0*
use_locking(*
T0*
_output_shapes

:
}
save/RestoreV2_11/tensor_namesConst*
dtype0*+
value"B Blinear/is_male/weights*
_output_shapes
:
v
"save/RestoreV2_11/shape_and_slicesConst*
dtype0* 
valueBB2 1 0,2:0,1*
_output_shapes
:

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
Î
save/Assign_11Assignlinear/is_male/weights/part_0save/RestoreV2_11*
validate_shape(*0
_class&
$"loc:@linear/is_male/weights/part_0*
use_locking(*
T0*
_output_shapes

:

save/RestoreV2_12/tensor_namesConst*
dtype0*2
value)B'Blinear/mother_married/weights*
_output_shapes
:
v
"save/RestoreV2_12/shape_and_slicesConst*
dtype0* 
valueBB2 1 0,2:0,1*
_output_shapes
:

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
Ü
save/Assign_12Assign$linear/mother_married/weights/part_0save/RestoreV2_12*
validate_shape(*7
_class-
+)loc:@linear/mother_married/weights/part_0*
use_locking(*
T0*
_output_shapes

:

save/RestoreV2_13/tensor_namesConst*
dtype0*/
value&B$Blinear/mother_race/weights*
_output_shapes
:
x
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*"
valueBB12 1 0,12:0,1*
_output_shapes
:

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
Ö
save/Assign_13Assign!linear/mother_race/weights/part_0save/RestoreV2_13*
validate_shape(*4
_class*
(&loc:@linear/mother_race/weights/part_0*
use_locking(*
T0*
_output_shapes

:
~
save/RestoreV2_14/tensor_namesConst*
dtype0*,
value#B!Blinear/plurality/weight*
_output_shapes
:
v
"save/RestoreV2_14/shape_and_slicesConst*
dtype0* 
valueBB1 1 0,1:0,1*
_output_shapes
:

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
Đ
save/Assign_14Assignlinear/plurality/weight/part_0save/RestoreV2_14*
validate_shape(*1
_class'
%#loc:@linear/plurality/weight/part_0*
use_locking(*
T0*
_output_shapes

:

save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14
-
save/restore_allNoOp^save/restore_shard

init_1NoOp
Â
init_all_tables_1NoOpm^dnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/hash_table/table_init+^linear/linear/lookup/hash_table/table_init-^linear/linear/lookup_1/hash_table/table_init-^linear/linear/lookup_2/hash_table/table_init-^linear/linear/lookup_3/hash_table/table_init
/

group_depsNoOp^init_1^init_all_tables_1
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_5097c3e3f03e4797850acd02edb45a92/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
ú
save_1/SaveV2/tensor_namesConst*
dtype0*Ť
valueĄBBdnn/hiddenlayer_0/biasesBdnn/hiddenlayer_0/weightsBdnn/hiddenlayer_1/biasesBdnn/hiddenlayer_1/weightsB<dnn/input_from_feature_columns/mother_race_embedding/weightsBdnn/logits/biasesBdnn/logits/weightsBglobal_stepBlinear/alcohol_use/weightsBlinear/bias_weightBlinear/cigarette_use/weightsBlinear/is_male/weightsBlinear/mother_married/weightsBlinear/mother_race/weightsBlinear/plurality/weight*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst*
dtype0*Ĺ
valueťB¸B64 0,64B5 64 0,5:0,64B32 0,32B64 32 0,64:0,32B12 3 0,12:0,3B1 0,1B32 1 0,32:0,1B B3 1 0,3:0,1B1 0,1B3 1 0,3:0,1B2 1 0,2:0,1B2 1 0,2:0,1B12 1 0,12:0,1B1 1 0,1:0,1*
_output_shapes
:
Č
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices$dnn/hiddenlayer_0/biases/part_0/read%dnn/hiddenlayer_0/weights/part_0/read$dnn/hiddenlayer_1/biases/part_0/read%dnn/hiddenlayer_1/weights/part_0/readHdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/readdnn/logits/biases/part_0/readdnn/logits/weights/part_0/readglobal_step&linear/alcohol_use/weights/part_0/readlinear/bias_weight/part_0/read(linear/cigarette_use/weights/part_0/read"linear/is_male/weights/part_0/read)linear/mother_married/weights/part_0/read&linear/mother_race/weights/part_0/read#linear/plurality/weight/part_0/read*
dtypes
2	

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
T0*
_output_shapes
: 
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*

axis *
T0*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
~
save_1/RestoreV2/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_0/biases*
_output_shapes
:
q
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
valueBB64 0,64*
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ě
save_1/AssignAssigndnn/hiddenlayer_0/biases/part_0save_1/RestoreV2*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
use_locking(*
T0*
_output_shapes
:@

save_1/RestoreV2_1/tensor_namesConst*
dtype0*.
value%B#Bdnn/hiddenlayer_0/weights*
_output_shapes
:
y
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*"
valueBB5 64 0,5:0,64*
_output_shapes
:

save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Ö
save_1/Assign_1Assign dnn/hiddenlayer_0/weights/part_0save_1/RestoreV2_1*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
use_locking(*
T0*
_output_shapes

:@

save_1/RestoreV2_2/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_1/biases*
_output_shapes
:
s
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueBB32 0,32*
_output_shapes
:

save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Đ
save_1/Assign_2Assigndnn/hiddenlayer_1/biases/part_0save_1/RestoreV2_2*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
use_locking(*
T0*
_output_shapes
: 

save_1/RestoreV2_3/tensor_namesConst*
dtype0*.
value%B#Bdnn/hiddenlayer_1/weights*
_output_shapes
:
{
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*$
valueBB64 32 0,64:0,32*
_output_shapes
:

save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
Ö
save_1/Assign_3Assign dnn/hiddenlayer_1/weights/part_0save_1/RestoreV2_3*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
use_locking(*
T0*
_output_shapes

:@ 
¤
save_1/RestoreV2_4/tensor_namesConst*
dtype0*Q
valueHBFB<dnn/input_from_feature_columns/mother_race_embedding/weights*
_output_shapes
:
y
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*"
valueBB12 3 0,12:0,3*
_output_shapes
:

save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:

save_1/Assign_4AssignCdnn/input_from_feature_columns/mother_race_embedding/weights/part_0save_1/RestoreV2_4*
validate_shape(*V
_classL
JHloc:@dnn/input_from_feature_columns/mother_race_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes

:
y
save_1/RestoreV2_5/tensor_namesConst*
dtype0*&
valueBBdnn/logits/biases*
_output_shapes
:
q
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:

save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
Â
save_1/Assign_5Assigndnn/logits/biases/part_0save_1/RestoreV2_5*
validate_shape(*+
_class!
loc:@dnn/logits/biases/part_0*
use_locking(*
T0*
_output_shapes
:
z
save_1/RestoreV2_6/tensor_namesConst*
dtype0*'
valueBBdnn/logits/weights*
_output_shapes
:
y
#save_1/RestoreV2_6/shape_and_slicesConst*
dtype0*"
valueBB32 1 0,32:0,1*
_output_shapes
:

save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Č
save_1/Assign_6Assigndnn/logits/weights/part_0save_1/RestoreV2_6*
validate_shape(*,
_class"
 loc:@dnn/logits/weights/part_0*
use_locking(*
T0*
_output_shapes

: 
s
save_1/RestoreV2_7/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2	*
_output_shapes
:
¤
save_1/Assign_7Assignglobal_stepsave_1/RestoreV2_7*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 

save_1/RestoreV2_8/tensor_namesConst*
dtype0*/
value&B$Blinear/alcohol_use/weights*
_output_shapes
:
w
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0* 
valueBB3 1 0,3:0,1*
_output_shapes
:

save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
Ř
save_1/Assign_8Assign!linear/alcohol_use/weights/part_0save_1/RestoreV2_8*
validate_shape(*4
_class*
(&loc:@linear/alcohol_use/weights/part_0*
use_locking(*
T0*
_output_shapes

:
z
save_1/RestoreV2_9/tensor_namesConst*
dtype0*'
valueBBlinear/bias_weight*
_output_shapes
:
q
#save_1/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:

save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
Ä
save_1/Assign_9Assignlinear/bias_weight/part_0save_1/RestoreV2_9*
validate_shape(*,
_class"
 loc:@linear/bias_weight/part_0*
use_locking(*
T0*
_output_shapes
:

 save_1/RestoreV2_10/tensor_namesConst*
dtype0*1
value(B&Blinear/cigarette_use/weights*
_output_shapes
:
x
$save_1/RestoreV2_10/shape_and_slicesConst*
dtype0* 
valueBB3 1 0,3:0,1*
_output_shapes
:
Ą
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
Ţ
save_1/Assign_10Assign#linear/cigarette_use/weights/part_0save_1/RestoreV2_10*
validate_shape(*6
_class,
*(loc:@linear/cigarette_use/weights/part_0*
use_locking(*
T0*
_output_shapes

:

 save_1/RestoreV2_11/tensor_namesConst*
dtype0*+
value"B Blinear/is_male/weights*
_output_shapes
:
x
$save_1/RestoreV2_11/shape_and_slicesConst*
dtype0* 
valueBB2 1 0,2:0,1*
_output_shapes
:
Ą
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
Ň
save_1/Assign_11Assignlinear/is_male/weights/part_0save_1/RestoreV2_11*
validate_shape(*0
_class&
$"loc:@linear/is_male/weights/part_0*
use_locking(*
T0*
_output_shapes

:

 save_1/RestoreV2_12/tensor_namesConst*
dtype0*2
value)B'Blinear/mother_married/weights*
_output_shapes
:
x
$save_1/RestoreV2_12/shape_and_slicesConst*
dtype0* 
valueBB2 1 0,2:0,1*
_output_shapes
:
Ą
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
ŕ
save_1/Assign_12Assign$linear/mother_married/weights/part_0save_1/RestoreV2_12*
validate_shape(*7
_class-
+)loc:@linear/mother_married/weights/part_0*
use_locking(*
T0*
_output_shapes

:

 save_1/RestoreV2_13/tensor_namesConst*
dtype0*/
value&B$Blinear/mother_race/weights*
_output_shapes
:
z
$save_1/RestoreV2_13/shape_and_slicesConst*
dtype0*"
valueBB12 1 0,12:0,1*
_output_shapes
:
Ą
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
Ú
save_1/Assign_13Assign!linear/mother_race/weights/part_0save_1/RestoreV2_13*
validate_shape(*4
_class*
(&loc:@linear/mother_race/weights/part_0*
use_locking(*
T0*
_output_shapes

:

 save_1/RestoreV2_14/tensor_namesConst*
dtype0*,
value#B!Blinear/plurality/weight*
_output_shapes
:
x
$save_1/RestoreV2_14/shape_and_slicesConst*
dtype0* 
valueBB1 1 0,1:0,1*
_output_shapes
:
Ą
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
Ô
save_1/Assign_14Assignlinear/plurality/weight/part_0save_1/RestoreV2_14*
validate_shape(*1
_class'
%#loc:@linear/plurality/weight/part_0*
use_locking(*
T0*
_output_shapes

:
­
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8" 
global_step

global_step:0"Ś
trainable_variables
Ť
Ednn/input_from_feature_columns/mother_race_embedding/weights/part_0:0Jdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/AssignJdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/read:0"J
<dnn/input_from_feature_columns/mother_race_embedding/weights  "

"dnn/hiddenlayer_0/weights/part_0:0'dnn/hiddenlayer_0/weights/part_0/Assign'dnn/hiddenlayer_0/weights/part_0/read:0"'
dnn/hiddenlayer_0/weights@  "@

!dnn/hiddenlayer_0/biases/part_0:0&dnn/hiddenlayer_0/biases/part_0/Assign&dnn/hiddenlayer_0/biases/part_0/read:0"#
dnn/hiddenlayer_0/biases@ "@

"dnn/hiddenlayer_1/weights/part_0:0'dnn/hiddenlayer_1/weights/part_0/Assign'dnn/hiddenlayer_1/weights/part_0/read:0"'
dnn/hiddenlayer_1/weights@   "@ 

!dnn/hiddenlayer_1/biases/part_0:0&dnn/hiddenlayer_1/biases/part_0/Assign&dnn/hiddenlayer_1/biases/part_0/read:0"#
dnn/hiddenlayer_1/biases  " 

dnn/logits/weights/part_0:0 dnn/logits/weights/part_0/Assign dnn/logits/weights/part_0/read:0" 
dnn/logits/weights   " 
|
dnn/logits/biases/part_0:0dnn/logits/biases/part_0/Assigndnn/logits/biases/part_0/read:0"
dnn/logits/biases "

 linear/plurality/weight/part_0:0%linear/plurality/weight/part_0/Assign%linear/plurality/weight/part_0/read:0"%
linear/plurality/weight  "
Ł
#linear/alcohol_use/weights/part_0:0(linear/alcohol_use/weights/part_0/Assign(linear/alcohol_use/weights/part_0/read:0"(
linear/alcohol_use/weights  "
Ť
%linear/cigarette_use/weights/part_0:0*linear/cigarette_use/weights/part_0/Assign*linear/cigarette_use/weights/part_0/read:0"*
linear/cigarette_use/weights  "

linear/is_male/weights/part_0:0$linear/is_male/weights/part_0/Assign$linear/is_male/weights/part_0/read:0"$
linear/is_male/weights  "
Ż
&linear/mother_married/weights/part_0:0+linear/mother_married/weights/part_0/Assign+linear/mother_married/weights/part_0/read:0"+
linear/mother_married/weights  "
Ł
#linear/mother_race/weights/part_0:0(linear/mother_race/weights/part_0/Assign(linear/mother_race/weights/part_0/read:0"(
linear/mother_race/weights  "

linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight ""Ő
	variablesÇÄ
7
global_step:0global_step/Assignglobal_step/read:0
Ť
Ednn/input_from_feature_columns/mother_race_embedding/weights/part_0:0Jdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/AssignJdnn/input_from_feature_columns/mother_race_embedding/weights/part_0/read:0"J
<dnn/input_from_feature_columns/mother_race_embedding/weights  "

"dnn/hiddenlayer_0/weights/part_0:0'dnn/hiddenlayer_0/weights/part_0/Assign'dnn/hiddenlayer_0/weights/part_0/read:0"'
dnn/hiddenlayer_0/weights@  "@

!dnn/hiddenlayer_0/biases/part_0:0&dnn/hiddenlayer_0/biases/part_0/Assign&dnn/hiddenlayer_0/biases/part_0/read:0"#
dnn/hiddenlayer_0/biases@ "@

"dnn/hiddenlayer_1/weights/part_0:0'dnn/hiddenlayer_1/weights/part_0/Assign'dnn/hiddenlayer_1/weights/part_0/read:0"'
dnn/hiddenlayer_1/weights@   "@ 

!dnn/hiddenlayer_1/biases/part_0:0&dnn/hiddenlayer_1/biases/part_0/Assign&dnn/hiddenlayer_1/biases/part_0/read:0"#
dnn/hiddenlayer_1/biases  " 

dnn/logits/weights/part_0:0 dnn/logits/weights/part_0/Assign dnn/logits/weights/part_0/read:0" 
dnn/logits/weights   " 
|
dnn/logits/biases/part_0:0dnn/logits/biases/part_0/Assigndnn/logits/biases/part_0/read:0"
dnn/logits/biases "

 linear/plurality/weight/part_0:0%linear/plurality/weight/part_0/Assign%linear/plurality/weight/part_0/read:0"%
linear/plurality/weight  "
Ł
#linear/alcohol_use/weights/part_0:0(linear/alcohol_use/weights/part_0/Assign(linear/alcohol_use/weights/part_0/read:0"(
linear/alcohol_use/weights  "
Ť
%linear/cigarette_use/weights/part_0:0*linear/cigarette_use/weights/part_0/Assign*linear/cigarette_use/weights/part_0/read:0"*
linear/cigarette_use/weights  "

linear/is_male/weights/part_0:0$linear/is_male/weights/part_0/Assign$linear/is_male/weights/part_0/read:0"$
linear/is_male/weights  "
Ż
&linear/mother_married/weights/part_0:0+linear/mother_married/weights/part_0/Assign+linear/mother_married/weights/part_0/read:0"+
linear/mother_married/weights  "
Ł
#linear/mother_race/weights/part_0:0(linear/mother_race/weights/part_0/Assign(linear/mother_race/weights/part_0/read:0"(
linear/mother_race/weights  "

linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight ""
dnn

Ednn/input_from_feature_columns/mother_race_embedding/weights/part_0:0
"dnn/hiddenlayer_0/weights/part_0:0
!dnn/hiddenlayer_0/biases/part_0:0
"dnn/hiddenlayer_1/weights/part_0:0
!dnn/hiddenlayer_1/biases/part_0:0
dnn/logits/weights/part_0:0
dnn/logits/biases/part_0:0"˝
table_initializer§
¤
ldnn/input_from_feature_columns/input_from_feature_columns/mother_race_embedding/lookup/hash_table/table_init
*linear/linear/lookup/hash_table/table_init
,linear/linear/lookup_1/hash_table/table_init
,linear/linear/lookup_2/hash_table/table_init
,linear/linear/lookup_3/hash_table/table_init" 
legacy_init_op


group_deps"
	summariesy
w
ScalarSummary:0
HistogramSummary:0
ScalarSummary_1:0
HistogramSummary_1:0
ScalarSummary_2:0
HistogramSummary_2:0"
model_variables

Ednn/input_from_feature_columns/mother_race_embedding/weights/part_0:0
"dnn/hiddenlayer_0/weights/part_0:0
!dnn/hiddenlayer_0/biases/part_0:0
"dnn/hiddenlayer_1/weights/part_0:0
!dnn/hiddenlayer_1/biases/part_0:0
dnn/logits/weights/part_0:0
dnn/logits/biases/part_0:0
 linear/plurality/weight/part_0:0
#linear/alcohol_use/weights/part_0:0
%linear/cigarette_use/weights/part_0:0
linear/is_male/weights/part_0:0
&linear/mother_married/weights/part_0:0
#linear/mother_race/weights/part_0:0
linear/bias_weight/part_0:0"
linearü
ů
 linear/plurality/weight/part_0:0
#linear/alcohol_use/weights/part_0:0
%linear/cigarette_use/weights/part_0:0
linear/is_male/weights/part_0:0
&linear/mother_married/weights/part_0:0
#linear/mother_race/weights/part_0:0
linear/bias_weight/part_0:0*
default_input_alternative:Noneč
3
cigarette_use"
Placeholder_6:0˙˙˙˙˙˙˙˙˙
5
gestation_weeks"
Placeholder_4:0˙˙˙˙˙˙˙˙˙
+
is_male 
Placeholder:0˙˙˙˙˙˙˙˙˙
1
mother_race"
Placeholder_2:0˙˙˙˙˙˙˙˙˙
/
	plurality"
Placeholder_3:0˙˙˙˙˙˙˙˙˙
1
alcohol_use"
Placeholder_7:0˙˙˙˙˙˙˙˙˙
4
mother_married"
Placeholder_5:0˙˙˙˙˙˙˙˙˙
0

mother_age"
Placeholder_1:0˙˙˙˙˙˙˙˙˙2
outputs'
predictions/scores:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict*ü
serving_defaultč
3
cigarette_use"
Placeholder_6:0˙˙˙˙˙˙˙˙˙
5
gestation_weeks"
Placeholder_4:0˙˙˙˙˙˙˙˙˙
+
is_male 
Placeholder:0˙˙˙˙˙˙˙˙˙
1
mother_race"
Placeholder_2:0˙˙˙˙˙˙˙˙˙
/
	plurality"
Placeholder_3:0˙˙˙˙˙˙˙˙˙
1
alcohol_use"
Placeholder_7:0˙˙˙˙˙˙˙˙˙
4
mother_married"
Placeholder_5:0˙˙˙˙˙˙˙˙˙
0

mother_age"
Placeholder_1:0˙˙˙˙˙˙˙˙˙2
outputs'
predictions/scores:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict