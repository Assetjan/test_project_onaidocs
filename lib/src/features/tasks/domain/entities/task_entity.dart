import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'task_entity.freezed.dart';

@freezed
abstract class TaskEntity with _$TaskEntity {
  const factory TaskEntity({
    required String id,
    required String title,
    String? description,
    required TaskPriority priority,
    required DateTime createdAt,
  }) = _TaskEntity;
}

enum TaskPriority {
  low,
  medium,
  high,
}

class TaskPriorityAdapter extends TypeAdapter<TaskPriority> {
  @override
  final int typeId = 1;

  @override
  TaskPriority read(BinaryReader reader) {
    final value = reader.readInt();
    switch (value) {
      case 0:
        return TaskPriority.low;
      case 1:
        return TaskPriority.medium;
      case 2:
        return TaskPriority.high;
      default:
        return TaskPriority.medium;
    }
  }

  @override
  void write(BinaryWriter writer, TaskPriority obj) {
    switch (obj) {
      case TaskPriority.low:
        writer.writeInt(0);
        break;
      case TaskPriority.medium:
        writer.writeInt(1);
        break;
      case TaskPriority.high:
        writer.writeInt(2);
        break;
    }
  }
}

class TaskEntityAdapter extends TypeAdapter<TaskEntity> {
  @override
  final int typeId = 2;

  @override
  TaskEntity read(BinaryReader reader) {
    final id = reader.readString();
    final title = reader.readString();
    final hasDescription = reader.readBool();
    final description = hasDescription ? reader.readString() : null;
    final priority = reader.read() as TaskPriority;
    final createdAtMillis = reader.readInt();
    return TaskEntity(
      id: id,
      title: title,
      description: description,
      priority: priority,
      createdAt: DateTime.fromMillisecondsSinceEpoch(createdAtMillis),
    );
  }

  @override
  void write(BinaryWriter writer, TaskEntity obj) {
    writer.writeString(obj.id);
    writer.writeString(obj.title);
    if (obj.description == null) {
      writer.writeBool(false);
    } else {
      writer.writeBool(true);
      writer.writeString(obj.description!);
    }
    writer.write(obj.priority);
    writer.writeInt(obj.createdAt.millisecondsSinceEpoch);
  }
}
