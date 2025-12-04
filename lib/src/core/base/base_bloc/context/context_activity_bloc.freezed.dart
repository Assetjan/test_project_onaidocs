// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'context_activity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContextActivityEvent {

 ContextCallback get callback;
/// Create a copy of ContextActivityEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContextActivityEventCopyWith<ContextActivityEvent> get copyWith => _$ContextActivityEventCopyWithImpl<ContextActivityEvent>(this as ContextActivityEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContextActivityEvent&&(identical(other.callback, callback) || other.callback == callback));
}


@override
int get hashCode => Object.hash(runtimeType,callback);

@override
String toString() {
  return 'ContextActivityEvent(callback: $callback)';
}


}

/// @nodoc
abstract mixin class $ContextActivityEventCopyWith<$Res>  {
  factory $ContextActivityEventCopyWith(ContextActivityEvent value, $Res Function(ContextActivityEvent) _then) = _$ContextActivityEventCopyWithImpl;
@useResult
$Res call({
 ContextCallback callback
});




}
/// @nodoc
class _$ContextActivityEventCopyWithImpl<$Res>
    implements $ContextActivityEventCopyWith<$Res> {
  _$ContextActivityEventCopyWithImpl(this._self, this._then);

  final ContextActivityEvent _self;
  final $Res Function(ContextActivityEvent) _then;

/// Create a copy of ContextActivityEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? callback = null,}) {
  return _then(_self.copyWith(
callback: null == callback ? _self.callback : callback // ignore: cast_nullable_to_non_nullable
as ContextCallback,
  ));
}

}


/// Adds pattern-matching-related methods to [ContextActivityEvent].
extension ContextActivityEventPatterns on ContextActivityEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HandleContextActivityEvent value)?  handleContextActivityEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HandleContextActivityEvent() when handleContextActivityEvent != null:
return handleContextActivityEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HandleContextActivityEvent value)  handleContextActivityEvent,}){
final _that = this;
switch (_that) {
case HandleContextActivityEvent():
return handleContextActivityEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HandleContextActivityEvent value)?  handleContextActivityEvent,}){
final _that = this;
switch (_that) {
case HandleContextActivityEvent() when handleContextActivityEvent != null:
return handleContextActivityEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ContextCallback callback)?  handleContextActivityEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HandleContextActivityEvent() when handleContextActivityEvent != null:
return handleContextActivityEvent(_that.callback);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ContextCallback callback)  handleContextActivityEvent,}) {final _that = this;
switch (_that) {
case HandleContextActivityEvent():
return handleContextActivityEvent(_that.callback);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ContextCallback callback)?  handleContextActivityEvent,}) {final _that = this;
switch (_that) {
case HandleContextActivityEvent() when handleContextActivityEvent != null:
return handleContextActivityEvent(_that.callback);case _:
  return null;

}
}

}

/// @nodoc


class HandleContextActivityEvent implements ContextActivityEvent {
  const HandleContextActivityEvent({required this.callback});
  

@override final  ContextCallback callback;

/// Create a copy of ContextActivityEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandleContextActivityEventCopyWith<HandleContextActivityEvent> get copyWith => _$HandleContextActivityEventCopyWithImpl<HandleContextActivityEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandleContextActivityEvent&&(identical(other.callback, callback) || other.callback == callback));
}


@override
int get hashCode => Object.hash(runtimeType,callback);

@override
String toString() {
  return 'ContextActivityEvent.handleContextActivityEvent(callback: $callback)';
}


}

/// @nodoc
abstract mixin class $HandleContextActivityEventCopyWith<$Res> implements $ContextActivityEventCopyWith<$Res> {
  factory $HandleContextActivityEventCopyWith(HandleContextActivityEvent value, $Res Function(HandleContextActivityEvent) _then) = _$HandleContextActivityEventCopyWithImpl;
@override @useResult
$Res call({
 ContextCallback callback
});




}
/// @nodoc
class _$HandleContextActivityEventCopyWithImpl<$Res>
    implements $HandleContextActivityEventCopyWith<$Res> {
  _$HandleContextActivityEventCopyWithImpl(this._self, this._then);

  final HandleContextActivityEvent _self;
  final $Res Function(HandleContextActivityEvent) _then;

/// Create a copy of ContextActivityEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? callback = null,}) {
  return _then(HandleContextActivityEvent(
callback: null == callback ? _self.callback : callback // ignore: cast_nullable_to_non_nullable
as ContextCallback,
  ));
}


}

/// @nodoc
mixin _$ContextActivityState {

 ContextCallback? get callback;
/// Create a copy of ContextActivityState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContextActivityStateCopyWith<ContextActivityState> get copyWith => _$ContextActivityStateCopyWithImpl<ContextActivityState>(this as ContextActivityState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContextActivityState&&(identical(other.callback, callback) || other.callback == callback));
}


@override
int get hashCode => Object.hash(runtimeType,callback);

@override
String toString() {
  return 'ContextActivityState(callback: $callback)';
}


}

/// @nodoc
abstract mixin class $ContextActivityStateCopyWith<$Res>  {
  factory $ContextActivityStateCopyWith(ContextActivityState value, $Res Function(ContextActivityState) _then) = _$ContextActivityStateCopyWithImpl;
@useResult
$Res call({
 ContextCallback? callback
});




}
/// @nodoc
class _$ContextActivityStateCopyWithImpl<$Res>
    implements $ContextActivityStateCopyWith<$Res> {
  _$ContextActivityStateCopyWithImpl(this._self, this._then);

  final ContextActivityState _self;
  final $Res Function(ContextActivityState) _then;

/// Create a copy of ContextActivityState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? callback = freezed,}) {
  return _then(_self.copyWith(
callback: freezed == callback ? _self.callback : callback // ignore: cast_nullable_to_non_nullable
as ContextCallback?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContextActivityState].
extension ContextActivityStatePatterns on ContextActivityState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HandleActionWithContext value)?  handleActionWithContext,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HandleActionWithContext() when handleActionWithContext != null:
return handleActionWithContext(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HandleActionWithContext value)  handleActionWithContext,}){
final _that = this;
switch (_that) {
case HandleActionWithContext():
return handleActionWithContext(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HandleActionWithContext value)?  handleActionWithContext,}){
final _that = this;
switch (_that) {
case HandleActionWithContext() when handleActionWithContext != null:
return handleActionWithContext(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ContextCallback? callback)?  handleActionWithContext,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HandleActionWithContext() when handleActionWithContext != null:
return handleActionWithContext(_that.callback);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ContextCallback? callback)  handleActionWithContext,}) {final _that = this;
switch (_that) {
case HandleActionWithContext():
return handleActionWithContext(_that.callback);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ContextCallback? callback)?  handleActionWithContext,}) {final _that = this;
switch (_that) {
case HandleActionWithContext() when handleActionWithContext != null:
return handleActionWithContext(_that.callback);case _:
  return null;

}
}

}

/// @nodoc


class HandleActionWithContext implements ContextActivityState {
  const HandleActionWithContext(this.callback);
  

@override final  ContextCallback? callback;

/// Create a copy of ContextActivityState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandleActionWithContextCopyWith<HandleActionWithContext> get copyWith => _$HandleActionWithContextCopyWithImpl<HandleActionWithContext>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandleActionWithContext&&(identical(other.callback, callback) || other.callback == callback));
}


@override
int get hashCode => Object.hash(runtimeType,callback);

@override
String toString() {
  return 'ContextActivityState.handleActionWithContext(callback: $callback)';
}


}

/// @nodoc
abstract mixin class $HandleActionWithContextCopyWith<$Res> implements $ContextActivityStateCopyWith<$Res> {
  factory $HandleActionWithContextCopyWith(HandleActionWithContext value, $Res Function(HandleActionWithContext) _then) = _$HandleActionWithContextCopyWithImpl;
@override @useResult
$Res call({
 ContextCallback? callback
});




}
/// @nodoc
class _$HandleActionWithContextCopyWithImpl<$Res>
    implements $HandleActionWithContextCopyWith<$Res> {
  _$HandleActionWithContextCopyWithImpl(this._self, this._then);

  final HandleActionWithContext _self;
  final $Res Function(HandleActionWithContext) _then;

/// Create a copy of ContextActivityState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? callback = freezed,}) {
  return _then(HandleActionWithContext(
freezed == callback ? _self.callback : callback // ignore: cast_nullable_to_non_nullable
as ContextCallback?,
  ));
}


}

// dart format on
