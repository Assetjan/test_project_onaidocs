// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TasksPageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksPageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasksPageEvent()';
}


}

/// @nodoc
class $TasksPageEventCopyWith<$Res>  {
$TasksPageEventCopyWith(TasksPageEvent _, $Res Function(TasksPageEvent) __);
}


/// Adds pattern-matching-related methods to [TasksPageEvent].
extension TasksPageEventPatterns on TasksPageEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TasksPageEventStarted value)?  started,TResult Function( TasksPageEventQueryChanged value)?  queryChanged,TResult Function( TasksPageEventTaskSaved value)?  taskSaved,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TasksPageEventStarted() when started != null:
return started(_that);case TasksPageEventQueryChanged() when queryChanged != null:
return queryChanged(_that);case TasksPageEventTaskSaved() when taskSaved != null:
return taskSaved(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TasksPageEventStarted value)  started,required TResult Function( TasksPageEventQueryChanged value)  queryChanged,required TResult Function( TasksPageEventTaskSaved value)  taskSaved,}){
final _that = this;
switch (_that) {
case TasksPageEventStarted():
return started(_that);case TasksPageEventQueryChanged():
return queryChanged(_that);case TasksPageEventTaskSaved():
return taskSaved(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TasksPageEventStarted value)?  started,TResult? Function( TasksPageEventQueryChanged value)?  queryChanged,TResult? Function( TasksPageEventTaskSaved value)?  taskSaved,}){
final _that = this;
switch (_that) {
case TasksPageEventStarted() when started != null:
return started(_that);case TasksPageEventQueryChanged() when queryChanged != null:
return queryChanged(_that);case TasksPageEventTaskSaved() when taskSaved != null:
return taskSaved(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String query)?  queryChanged,TResult Function( TaskEntity task)?  taskSaved,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TasksPageEventStarted() when started != null:
return started();case TasksPageEventQueryChanged() when queryChanged != null:
return queryChanged(_that.query);case TasksPageEventTaskSaved() when taskSaved != null:
return taskSaved(_that.task);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String query)  queryChanged,required TResult Function( TaskEntity task)  taskSaved,}) {final _that = this;
switch (_that) {
case TasksPageEventStarted():
return started();case TasksPageEventQueryChanged():
return queryChanged(_that.query);case TasksPageEventTaskSaved():
return taskSaved(_that.task);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String query)?  queryChanged,TResult? Function( TaskEntity task)?  taskSaved,}) {final _that = this;
switch (_that) {
case TasksPageEventStarted() when started != null:
return started();case TasksPageEventQueryChanged() when queryChanged != null:
return queryChanged(_that.query);case TasksPageEventTaskSaved() when taskSaved != null:
return taskSaved(_that.task);case _:
  return null;

}
}

}

/// @nodoc


class TasksPageEventStarted implements TasksPageEvent {
  const TasksPageEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksPageEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasksPageEvent.started()';
}


}




/// @nodoc


class TasksPageEventQueryChanged implements TasksPageEvent {
  const TasksPageEventQueryChanged(this.query);
  

 final  String query;

/// Create a copy of TasksPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksPageEventQueryChangedCopyWith<TasksPageEventQueryChanged> get copyWith => _$TasksPageEventQueryChangedCopyWithImpl<TasksPageEventQueryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksPageEventQueryChanged&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'TasksPageEvent.queryChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class $TasksPageEventQueryChangedCopyWith<$Res> implements $TasksPageEventCopyWith<$Res> {
  factory $TasksPageEventQueryChangedCopyWith(TasksPageEventQueryChanged value, $Res Function(TasksPageEventQueryChanged) _then) = _$TasksPageEventQueryChangedCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$TasksPageEventQueryChangedCopyWithImpl<$Res>
    implements $TasksPageEventQueryChangedCopyWith<$Res> {
  _$TasksPageEventQueryChangedCopyWithImpl(this._self, this._then);

  final TasksPageEventQueryChanged _self;
  final $Res Function(TasksPageEventQueryChanged) _then;

/// Create a copy of TasksPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(TasksPageEventQueryChanged(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TasksPageEventTaskSaved implements TasksPageEvent {
  const TasksPageEventTaskSaved(this.task);
  

 final  TaskEntity task;

/// Create a copy of TasksPageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksPageEventTaskSavedCopyWith<TasksPageEventTaskSaved> get copyWith => _$TasksPageEventTaskSavedCopyWithImpl<TasksPageEventTaskSaved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksPageEventTaskSaved&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'TasksPageEvent.taskSaved(task: $task)';
}


}

/// @nodoc
abstract mixin class $TasksPageEventTaskSavedCopyWith<$Res> implements $TasksPageEventCopyWith<$Res> {
  factory $TasksPageEventTaskSavedCopyWith(TasksPageEventTaskSaved value, $Res Function(TasksPageEventTaskSaved) _then) = _$TasksPageEventTaskSavedCopyWithImpl;
@useResult
$Res call({
 TaskEntity task
});


$TaskEntityCopyWith<$Res> get task;

}
/// @nodoc
class _$TasksPageEventTaskSavedCopyWithImpl<$Res>
    implements $TasksPageEventTaskSavedCopyWith<$Res> {
  _$TasksPageEventTaskSavedCopyWithImpl(this._self, this._then);

  final TasksPageEventTaskSaved _self;
  final $Res Function(TasksPageEventTaskSaved) _then;

/// Create a copy of TasksPageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(TasksPageEventTaskSaved(
null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskEntity,
  ));
}

/// Create a copy of TasksPageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskEntityCopyWith<$Res> get task {
  
  return $TaskEntityCopyWith<$Res>(_self.task, (value) {
    return _then(_self.copyWith(task: value));
  });
}
}

/// @nodoc
mixin _$TasksPageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksPageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasksPageState()';
}


}

/// @nodoc
class $TasksPageStateCopyWith<$Res>  {
$TasksPageStateCopyWith(TasksPageState _, $Res Function(TasksPageState) __);
}


/// Adds pattern-matching-related methods to [TasksPageState].
extension TasksPageStatePatterns on TasksPageState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TasksPageStateLoading value)?  loading,TResult Function( TasksPageStateLoaded value)?  loaded,TResult Function( TasksPageStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TasksPageStateLoading() when loading != null:
return loading(_that);case TasksPageStateLoaded() when loaded != null:
return loaded(_that);case TasksPageStateError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TasksPageStateLoading value)  loading,required TResult Function( TasksPageStateLoaded value)  loaded,required TResult Function( TasksPageStateError value)  error,}){
final _that = this;
switch (_that) {
case TasksPageStateLoading():
return loading(_that);case TasksPageStateLoaded():
return loaded(_that);case TasksPageStateError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TasksPageStateLoading value)?  loading,TResult? Function( TasksPageStateLoaded value)?  loaded,TResult? Function( TasksPageStateError value)?  error,}){
final _that = this;
switch (_that) {
case TasksPageStateLoading() when loading != null:
return loading(_that);case TasksPageStateLoaded() when loaded != null:
return loaded(_that);case TasksPageStateError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( TasksPageViewModel viewModel)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TasksPageStateLoading() when loading != null:
return loading();case TasksPageStateLoaded() when loaded != null:
return loaded(_that.viewModel);case TasksPageStateError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( TasksPageViewModel viewModel)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case TasksPageStateLoading():
return loading();case TasksPageStateLoaded():
return loaded(_that.viewModel);case TasksPageStateError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( TasksPageViewModel viewModel)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case TasksPageStateLoading() when loading != null:
return loading();case TasksPageStateLoaded() when loaded != null:
return loaded(_that.viewModel);case TasksPageStateError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TasksPageStateLoading implements TasksPageState {
  const TasksPageStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksPageStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TasksPageState.loading()';
}


}




/// @nodoc


class TasksPageStateLoaded implements TasksPageState {
  const TasksPageStateLoaded({required this.viewModel});
  

 final  TasksPageViewModel viewModel;

/// Create a copy of TasksPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksPageStateLoadedCopyWith<TasksPageStateLoaded> get copyWith => _$TasksPageStateLoadedCopyWithImpl<TasksPageStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksPageStateLoaded&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'TasksPageState.loaded(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class $TasksPageStateLoadedCopyWith<$Res> implements $TasksPageStateCopyWith<$Res> {
  factory $TasksPageStateLoadedCopyWith(TasksPageStateLoaded value, $Res Function(TasksPageStateLoaded) _then) = _$TasksPageStateLoadedCopyWithImpl;
@useResult
$Res call({
 TasksPageViewModel viewModel
});


$TasksPageViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class _$TasksPageStateLoadedCopyWithImpl<$Res>
    implements $TasksPageStateLoadedCopyWith<$Res> {
  _$TasksPageStateLoadedCopyWithImpl(this._self, this._then);

  final TasksPageStateLoaded _self;
  final $Res Function(TasksPageStateLoaded) _then;

/// Create a copy of TasksPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(TasksPageStateLoaded(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as TasksPageViewModel,
  ));
}

/// Create a copy of TasksPageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TasksPageViewModelCopyWith<$Res> get viewModel {
  
  return $TasksPageViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

/// @nodoc


class TasksPageStateError implements TasksPageState {
  const TasksPageStateError(this.message);
  

 final  String message;

/// Create a copy of TasksPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksPageStateErrorCopyWith<TasksPageStateError> get copyWith => _$TasksPageStateErrorCopyWithImpl<TasksPageStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksPageStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TasksPageState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TasksPageStateErrorCopyWith<$Res> implements $TasksPageStateCopyWith<$Res> {
  factory $TasksPageStateErrorCopyWith(TasksPageStateError value, $Res Function(TasksPageStateError) _then) = _$TasksPageStateErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$TasksPageStateErrorCopyWithImpl<$Res>
    implements $TasksPageStateErrorCopyWith<$Res> {
  _$TasksPageStateErrorCopyWithImpl(this._self, this._then);

  final TasksPageStateError _self;
  final $Res Function(TasksPageStateError) _then;

/// Create a copy of TasksPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(TasksPageStateError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TasksPageViewModel {

 List<TaskEntity> get tasks; String get query;
/// Create a copy of TasksPageViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksPageViewModelCopyWith<TasksPageViewModel> get copyWith => _$TasksPageViewModelCopyWithImpl<TasksPageViewModel>(this as TasksPageViewModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksPageViewModel&&const DeepCollectionEquality().equals(other.tasks, tasks)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tasks),query);

@override
String toString() {
  return 'TasksPageViewModel(tasks: $tasks, query: $query)';
}


}

/// @nodoc
abstract mixin class $TasksPageViewModelCopyWith<$Res>  {
  factory $TasksPageViewModelCopyWith(TasksPageViewModel value, $Res Function(TasksPageViewModel) _then) = _$TasksPageViewModelCopyWithImpl;
@useResult
$Res call({
 List<TaskEntity> tasks, String query
});




}
/// @nodoc
class _$TasksPageViewModelCopyWithImpl<$Res>
    implements $TasksPageViewModelCopyWith<$Res> {
  _$TasksPageViewModelCopyWithImpl(this._self, this._then);

  final TasksPageViewModel _self;
  final $Res Function(TasksPageViewModel) _then;

/// Create a copy of TasksPageViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tasks = null,Object? query = null,}) {
  return _then(_self.copyWith(
tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<TaskEntity>,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TasksPageViewModel].
extension TasksPageViewModelPatterns on TasksPageViewModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TasksPageViewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TasksPageViewModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TasksPageViewModel value)  $default,){
final _that = this;
switch (_that) {
case _TasksPageViewModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TasksPageViewModel value)?  $default,){
final _that = this;
switch (_that) {
case _TasksPageViewModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TaskEntity> tasks,  String query)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TasksPageViewModel() when $default != null:
return $default(_that.tasks,_that.query);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TaskEntity> tasks,  String query)  $default,) {final _that = this;
switch (_that) {
case _TasksPageViewModel():
return $default(_that.tasks,_that.query);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TaskEntity> tasks,  String query)?  $default,) {final _that = this;
switch (_that) {
case _TasksPageViewModel() when $default != null:
return $default(_that.tasks,_that.query);case _:
  return null;

}
}

}

/// @nodoc


class _TasksPageViewModel implements TasksPageViewModel {
  const _TasksPageViewModel({required final  List<TaskEntity> tasks, required this.query}): _tasks = tasks;
  

 final  List<TaskEntity> _tasks;
@override List<TaskEntity> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}

@override final  String query;

/// Create a copy of TasksPageViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasksPageViewModelCopyWith<_TasksPageViewModel> get copyWith => __$TasksPageViewModelCopyWithImpl<_TasksPageViewModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksPageViewModel&&const DeepCollectionEquality().equals(other._tasks, _tasks)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tasks),query);

@override
String toString() {
  return 'TasksPageViewModel(tasks: $tasks, query: $query)';
}


}

/// @nodoc
abstract mixin class _$TasksPageViewModelCopyWith<$Res> implements $TasksPageViewModelCopyWith<$Res> {
  factory _$TasksPageViewModelCopyWith(_TasksPageViewModel value, $Res Function(_TasksPageViewModel) _then) = __$TasksPageViewModelCopyWithImpl;
@override @useResult
$Res call({
 List<TaskEntity> tasks, String query
});




}
/// @nodoc
class __$TasksPageViewModelCopyWithImpl<$Res>
    implements _$TasksPageViewModelCopyWith<$Res> {
  __$TasksPageViewModelCopyWithImpl(this._self, this._then);

  final _TasksPageViewModel _self;
  final $Res Function(_TasksPageViewModel) _then;

/// Create a copy of TasksPageViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tasks = null,Object? query = null,}) {
  return _then(_TasksPageViewModel(
tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<TaskEntity>,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
