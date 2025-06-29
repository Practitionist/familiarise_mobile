// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class UserDelegate {
  const UserDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.User?> findUnique({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'findUniqueUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.User> findUniqueOrThrow({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'findUniqueUserOrThrow',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User?> findFirst({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.UserOrderByWithRelationInput>,
      _i3.UserOrderByWithRelationInput
    >?
    orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'findFirstUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.User> findFirstOrThrow({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.UserOrderByWithRelationInput>,
      _i3.UserOrderByWithRelationInput
    >?
    orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'findFirstUserOrThrow',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.User>> findMany({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.UserOrderByWithRelationInput>,
      _i3.UserOrderByWithRelationInput
    >?
    orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.UserScalar, Iterable<_i3.UserScalar>>? distinct,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.User>>(
      action: 'findManyUser',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.User.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.User> create({
    _i1.PrismaUnion<_i3.UserCreateInput, _i3.UserUncheckedCreateInput>? data,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'createOneUser',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.UserCreateManyInput,
      Iterable<_i3.UserCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyUser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User?> update({
    required _i1.PrismaUnion<_i3.UserUpdateInput, _i3.UserUncheckedUpdateInput>
    data,
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'updateOneUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.UserUpdateManyMutationInput,
      _i3.UserUncheckedUpdateManyInput
    >
    data,
    _i3.UserWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyUser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User> upsert({
    required _i3.UserWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.UserCreateInput, _i3.UserUncheckedCreateInput>
    create,
    required _i1.PrismaUnion<_i3.UserUpdateInput, _i3.UserUncheckedUpdateInput>
    update,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User>(
      action: 'upsertOneUser',
      result: result,
      factory: (e) => _i2.User.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.User?> delete({
    required _i3.UserWhereUniqueInput where,
    _i3.UserSelect? select,
    _i3.UserInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.User?>(
      action: 'deleteOneUser',
      result: result,
      factory: (e) => e != null ? _i2.User.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.UserWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyUser',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.UserGroupByOutputType>> groupBy({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.UserOrderByWithAggregationInput>,
      _i3.UserOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.UserScalar>, _i3.UserScalar> by,
    _i3.UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.UserGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.UserGroupByOutputType>>(
      action: 'groupByUser',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.UserGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateUser> aggregate({
    _i3.UserWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.UserOrderByWithRelationInput>,
      _i3.UserOrderByWithRelationInput
    >?
    orderBy,
    _i3.UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateUserSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'User',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateUser>(
      action: 'aggregateUser',
      result: result,
      factory: (e) => _i3.AggregateUser.fromJson(e),
    );
  }
}

class FeedbackDelegate {
  const FeedbackDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Feedback?> findUnique({
    required _i3.FeedbackWhereUniqueInput where,
    _i3.FeedbackSelect? select,
    _i3.FeedbackInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feedback?>(
      action: 'findUniqueFeedback',
      result: result,
      factory: (e) => e != null ? _i2.Feedback.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Feedback> findUniqueOrThrow({
    required _i3.FeedbackWhereUniqueInput where,
    _i3.FeedbackSelect? select,
    _i3.FeedbackInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feedback>(
      action: 'findUniqueFeedbackOrThrow',
      result: result,
      factory: (e) => _i2.Feedback.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Feedback?> findFirst({
    _i3.FeedbackWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.FeedbackOrderByWithRelationInput>,
      _i3.FeedbackOrderByWithRelationInput
    >?
    orderBy,
    _i3.FeedbackWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FeedbackScalar, Iterable<_i3.FeedbackScalar>>? distinct,
    _i3.FeedbackSelect? select,
    _i3.FeedbackInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feedback?>(
      action: 'findFirstFeedback',
      result: result,
      factory: (e) => e != null ? _i2.Feedback.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Feedback> findFirstOrThrow({
    _i3.FeedbackWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.FeedbackOrderByWithRelationInput>,
      _i3.FeedbackOrderByWithRelationInput
    >?
    orderBy,
    _i3.FeedbackWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FeedbackScalar, Iterable<_i3.FeedbackScalar>>? distinct,
    _i3.FeedbackSelect? select,
    _i3.FeedbackInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feedback>(
      action: 'findFirstFeedbackOrThrow',
      result: result,
      factory: (e) => _i2.Feedback.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Feedback>> findMany({
    _i3.FeedbackWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.FeedbackOrderByWithRelationInput>,
      _i3.FeedbackOrderByWithRelationInput
    >?
    orderBy,
    _i3.FeedbackWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FeedbackScalar, Iterable<_i3.FeedbackScalar>>? distinct,
    _i3.FeedbackSelect? select,
    _i3.FeedbackInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Feedback>>(
      action: 'findManyFeedback',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Feedback.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Feedback> create({
    required _i1.PrismaUnion<
      _i3.FeedbackCreateInput,
      _i3.FeedbackUncheckedCreateInput
    >
    data,
    _i3.FeedbackSelect? select,
    _i3.FeedbackInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feedback>(
      action: 'createOneFeedback',
      result: result,
      factory: (e) => _i2.Feedback.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.FeedbackCreateManyInput,
      Iterable<_i3.FeedbackCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyFeedback',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Feedback?> update({
    required _i1.PrismaUnion<
      _i3.FeedbackUpdateInput,
      _i3.FeedbackUncheckedUpdateInput
    >
    data,
    required _i3.FeedbackWhereUniqueInput where,
    _i3.FeedbackSelect? select,
    _i3.FeedbackInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feedback?>(
      action: 'updateOneFeedback',
      result: result,
      factory: (e) => e != null ? _i2.Feedback.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.FeedbackUpdateManyMutationInput,
      _i3.FeedbackUncheckedUpdateManyInput
    >
    data,
    _i3.FeedbackWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyFeedback',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Feedback> upsert({
    required _i3.FeedbackWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.FeedbackCreateInput,
      _i3.FeedbackUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.FeedbackUpdateInput,
      _i3.FeedbackUncheckedUpdateInput
    >
    update,
    _i3.FeedbackSelect? select,
    _i3.FeedbackInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feedback>(
      action: 'upsertOneFeedback',
      result: result,
      factory: (e) => _i2.Feedback.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Feedback?> delete({
    required _i3.FeedbackWhereUniqueInput where,
    _i3.FeedbackSelect? select,
    _i3.FeedbackInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Feedback?>(
      action: 'deleteOneFeedback',
      result: result,
      factory: (e) => e != null ? _i2.Feedback.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.FeedbackWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyFeedback',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.FeedbackGroupByOutputType>> groupBy({
    _i3.FeedbackWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.FeedbackOrderByWithAggregationInput>,
      _i3.FeedbackOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.FeedbackScalar>, _i3.FeedbackScalar>
    by,
    _i3.FeedbackScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.FeedbackGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.FeedbackGroupByOutputType>>(
      action: 'groupByFeedback',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.FeedbackGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateFeedback> aggregate({
    _i3.FeedbackWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.FeedbackOrderByWithRelationInput>,
      _i3.FeedbackOrderByWithRelationInput
    >?
    orderBy,
    _i3.FeedbackWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateFeedbackSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Feedback',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateFeedback>(
      action: 'aggregateFeedback',
      result: result,
      factory: (e) => _i3.AggregateFeedback.fromJson(e),
    );
  }
}

class SupportTicketDelegate {
  const SupportTicketDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.SupportTicket?> findUnique({
    required _i3.SupportTicketWhereUniqueInput where,
    _i3.SupportTicketSelect? select,
    _i3.SupportTicketInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportTicket?>(
      action: 'findUniqueSupportTicket',
      result: result,
      factory: (e) => e != null ? _i2.SupportTicket.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SupportTicket> findUniqueOrThrow({
    required _i3.SupportTicketWhereUniqueInput where,
    _i3.SupportTicketSelect? select,
    _i3.SupportTicketInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportTicket>(
      action: 'findUniqueSupportTicketOrThrow',
      result: result,
      factory: (e) => _i2.SupportTicket.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SupportTicket?> findFirst({
    _i3.SupportTicketWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SupportTicketOrderByWithRelationInput>,
      _i3.SupportTicketOrderByWithRelationInput
    >?
    orderBy,
    _i3.SupportTicketWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.SupportTicketScalar, Iterable<_i3.SupportTicketScalar>>?
    distinct,
    _i3.SupportTicketSelect? select,
    _i3.SupportTicketInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportTicket?>(
      action: 'findFirstSupportTicket',
      result: result,
      factory: (e) => e != null ? _i2.SupportTicket.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SupportTicket> findFirstOrThrow({
    _i3.SupportTicketWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SupportTicketOrderByWithRelationInput>,
      _i3.SupportTicketOrderByWithRelationInput
    >?
    orderBy,
    _i3.SupportTicketWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.SupportTicketScalar, Iterable<_i3.SupportTicketScalar>>?
    distinct,
    _i3.SupportTicketSelect? select,
    _i3.SupportTicketInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportTicket>(
      action: 'findFirstSupportTicketOrThrow',
      result: result,
      factory: (e) => _i2.SupportTicket.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.SupportTicket>> findMany({
    _i3.SupportTicketWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SupportTicketOrderByWithRelationInput>,
      _i3.SupportTicketOrderByWithRelationInput
    >?
    orderBy,
    _i3.SupportTicketWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.SupportTicketScalar, Iterable<_i3.SupportTicketScalar>>?
    distinct,
    _i3.SupportTicketSelect? select,
    _i3.SupportTicketInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.SupportTicket>>(
      action: 'findManySupportTicket',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.SupportTicket.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.SupportTicket> create({
    required _i1.PrismaUnion<
      _i3.SupportTicketCreateInput,
      _i3.SupportTicketUncheckedCreateInput
    >
    data,
    _i3.SupportTicketSelect? select,
    _i3.SupportTicketInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportTicket>(
      action: 'createOneSupportTicket',
      result: result,
      factory: (e) => _i2.SupportTicket.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.SupportTicketCreateManyInput,
      Iterable<_i3.SupportTicketCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManySupportTicket',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SupportTicket?> update({
    required _i1.PrismaUnion<
      _i3.SupportTicketUpdateInput,
      _i3.SupportTicketUncheckedUpdateInput
    >
    data,
    required _i3.SupportTicketWhereUniqueInput where,
    _i3.SupportTicketSelect? select,
    _i3.SupportTicketInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportTicket?>(
      action: 'updateOneSupportTicket',
      result: result,
      factory: (e) => e != null ? _i2.SupportTicket.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.SupportTicketUpdateManyMutationInput,
      _i3.SupportTicketUncheckedUpdateManyInput
    >
    data,
    _i3.SupportTicketWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManySupportTicket',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SupportTicket> upsert({
    required _i3.SupportTicketWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.SupportTicketCreateInput,
      _i3.SupportTicketUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.SupportTicketUpdateInput,
      _i3.SupportTicketUncheckedUpdateInput
    >
    update,
    _i3.SupportTicketSelect? select,
    _i3.SupportTicketInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportTicket>(
      action: 'upsertOneSupportTicket',
      result: result,
      factory: (e) => _i2.SupportTicket.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SupportTicket?> delete({
    required _i3.SupportTicketWhereUniqueInput where,
    _i3.SupportTicketSelect? select,
    _i3.SupportTicketInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportTicket?>(
      action: 'deleteOneSupportTicket',
      result: result,
      factory: (e) => e != null ? _i2.SupportTicket.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.SupportTicketWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManySupportTicket',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.SupportTicketGroupByOutputType>> groupBy({
    _i3.SupportTicketWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SupportTicketOrderByWithAggregationInput>,
      _i3.SupportTicketOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.SupportTicketScalar>,
      _i3.SupportTicketScalar
    >
    by,
    _i3.SupportTicketScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.SupportTicketGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.SupportTicketGroupByOutputType>>(
      action: 'groupBySupportTicket',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.SupportTicketGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateSupportTicket> aggregate({
    _i3.SupportTicketWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SupportTicketOrderByWithRelationInput>,
      _i3.SupportTicketOrderByWithRelationInput
    >?
    orderBy,
    _i3.SupportTicketWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateSupportTicketSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportTicket',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateSupportTicket>(
      action: 'aggregateSupportTicket',
      result: result,
      factory: (e) => _i3.AggregateSupportTicket.fromJson(e),
    );
  }
}

class SupportResponseDelegate {
  const SupportResponseDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.SupportResponse?> findUnique({
    required _i3.SupportResponseWhereUniqueInput where,
    _i3.SupportResponseSelect? select,
    _i3.SupportResponseInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportResponse?>(
      action: 'findUniqueSupportResponse',
      result: result,
      factory: (e) => e != null ? _i2.SupportResponse.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SupportResponse> findUniqueOrThrow({
    required _i3.SupportResponseWhereUniqueInput where,
    _i3.SupportResponseSelect? select,
    _i3.SupportResponseInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportResponse>(
      action: 'findUniqueSupportResponseOrThrow',
      result: result,
      factory: (e) => _i2.SupportResponse.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SupportResponse?> findFirst({
    _i3.SupportResponseWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SupportResponseOrderByWithRelationInput>,
      _i3.SupportResponseOrderByWithRelationInput
    >?
    orderBy,
    _i3.SupportResponseWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SupportResponseScalar,
      Iterable<_i3.SupportResponseScalar>
    >?
    distinct,
    _i3.SupportResponseSelect? select,
    _i3.SupportResponseInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportResponse?>(
      action: 'findFirstSupportResponse',
      result: result,
      factory: (e) => e != null ? _i2.SupportResponse.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SupportResponse> findFirstOrThrow({
    _i3.SupportResponseWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SupportResponseOrderByWithRelationInput>,
      _i3.SupportResponseOrderByWithRelationInput
    >?
    orderBy,
    _i3.SupportResponseWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SupportResponseScalar,
      Iterable<_i3.SupportResponseScalar>
    >?
    distinct,
    _i3.SupportResponseSelect? select,
    _i3.SupportResponseInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportResponse>(
      action: 'findFirstSupportResponseOrThrow',
      result: result,
      factory: (e) => _i2.SupportResponse.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.SupportResponse>> findMany({
    _i3.SupportResponseWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SupportResponseOrderByWithRelationInput>,
      _i3.SupportResponseOrderByWithRelationInput
    >?
    orderBy,
    _i3.SupportResponseWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SupportResponseScalar,
      Iterable<_i3.SupportResponseScalar>
    >?
    distinct,
    _i3.SupportResponseSelect? select,
    _i3.SupportResponseInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.SupportResponse>>(
      action: 'findManySupportResponse',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.SupportResponse.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.SupportResponse> create({
    required _i1.PrismaUnion<
      _i3.SupportResponseCreateInput,
      _i3.SupportResponseUncheckedCreateInput
    >
    data,
    _i3.SupportResponseSelect? select,
    _i3.SupportResponseInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportResponse>(
      action: 'createOneSupportResponse',
      result: result,
      factory: (e) => _i2.SupportResponse.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.SupportResponseCreateManyInput,
      Iterable<_i3.SupportResponseCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManySupportResponse',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SupportResponse?> update({
    required _i1.PrismaUnion<
      _i3.SupportResponseUpdateInput,
      _i3.SupportResponseUncheckedUpdateInput
    >
    data,
    required _i3.SupportResponseWhereUniqueInput where,
    _i3.SupportResponseSelect? select,
    _i3.SupportResponseInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportResponse?>(
      action: 'updateOneSupportResponse',
      result: result,
      factory: (e) => e != null ? _i2.SupportResponse.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.SupportResponseUpdateManyMutationInput,
      _i3.SupportResponseUncheckedUpdateManyInput
    >
    data,
    _i3.SupportResponseWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManySupportResponse',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SupportResponse> upsert({
    required _i3.SupportResponseWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.SupportResponseCreateInput,
      _i3.SupportResponseUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.SupportResponseUpdateInput,
      _i3.SupportResponseUncheckedUpdateInput
    >
    update,
    _i3.SupportResponseSelect? select,
    _i3.SupportResponseInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportResponse>(
      action: 'upsertOneSupportResponse',
      result: result,
      factory: (e) => _i2.SupportResponse.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SupportResponse?> delete({
    required _i3.SupportResponseWhereUniqueInput where,
    _i3.SupportResponseSelect? select,
    _i3.SupportResponseInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SupportResponse?>(
      action: 'deleteOneSupportResponse',
      result: result,
      factory: (e) => e != null ? _i2.SupportResponse.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.SupportResponseWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManySupportResponse',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.SupportResponseGroupByOutputType>> groupBy({
    _i3.SupportResponseWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SupportResponseOrderByWithAggregationInput>,
      _i3.SupportResponseOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.SupportResponseScalar>,
      _i3.SupportResponseScalar
    >
    by,
    _i3.SupportResponseScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.SupportResponseGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.SupportResponseGroupByOutputType>>(
      action: 'groupBySupportResponse',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.SupportResponseGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateSupportResponse> aggregate({
    _i3.SupportResponseWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SupportResponseOrderByWithRelationInput>,
      _i3.SupportResponseOrderByWithRelationInput
    >?
    orderBy,
    _i3.SupportResponseWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateSupportResponseSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SupportResponse',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateSupportResponse>(
      action: 'aggregateSupportResponse',
      result: result,
      factory: (e) => _i3.AggregateSupportResponse.fromJson(e),
    );
  }
}

class CookiePreferenceDelegate {
  const CookiePreferenceDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.CookiePreference?> findUnique({
    required _i3.CookiePreferenceWhereUniqueInput where,
    _i3.CookiePreferenceSelect? select,
    _i3.CookiePreferenceInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CookiePreference?>(
      action: 'findUniqueCookiePreference',
      result: result,
      factory: (e) => e != null ? _i2.CookiePreference.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.CookiePreference> findUniqueOrThrow({
    required _i3.CookiePreferenceWhereUniqueInput where,
    _i3.CookiePreferenceSelect? select,
    _i3.CookiePreferenceInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CookiePreference>(
      action: 'findUniqueCookiePreferenceOrThrow',
      result: result,
      factory: (e) => _i2.CookiePreference.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CookiePreference?> findFirst({
    _i3.CookiePreferenceWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.CookiePreferenceOrderByWithRelationInput>,
      _i3.CookiePreferenceOrderByWithRelationInput
    >?
    orderBy,
    _i3.CookiePreferenceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.CookiePreferenceScalar,
      Iterable<_i3.CookiePreferenceScalar>
    >?
    distinct,
    _i3.CookiePreferenceSelect? select,
    _i3.CookiePreferenceInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CookiePreference?>(
      action: 'findFirstCookiePreference',
      result: result,
      factory: (e) => e != null ? _i2.CookiePreference.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.CookiePreference> findFirstOrThrow({
    _i3.CookiePreferenceWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.CookiePreferenceOrderByWithRelationInput>,
      _i3.CookiePreferenceOrderByWithRelationInput
    >?
    orderBy,
    _i3.CookiePreferenceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.CookiePreferenceScalar,
      Iterable<_i3.CookiePreferenceScalar>
    >?
    distinct,
    _i3.CookiePreferenceSelect? select,
    _i3.CookiePreferenceInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CookiePreference>(
      action: 'findFirstCookiePreferenceOrThrow',
      result: result,
      factory: (e) => _i2.CookiePreference.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CookiePreference>> findMany({
    _i3.CookiePreferenceWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.CookiePreferenceOrderByWithRelationInput>,
      _i3.CookiePreferenceOrderByWithRelationInput
    >?
    orderBy,
    _i3.CookiePreferenceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.CookiePreferenceScalar,
      Iterable<_i3.CookiePreferenceScalar>
    >?
    distinct,
    _i3.CookiePreferenceSelect? select,
    _i3.CookiePreferenceInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CookiePreference>>(
      action: 'findManyCookiePreference',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.CookiePreference.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.CookiePreference> create({
    required _i1.PrismaUnion<
      _i3.CookiePreferenceCreateInput,
      _i3.CookiePreferenceUncheckedCreateInput
    >
    data,
    _i3.CookiePreferenceSelect? select,
    _i3.CookiePreferenceInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CookiePreference>(
      action: 'createOneCookiePreference',
      result: result,
      factory: (e) => _i2.CookiePreference.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.CookiePreferenceCreateManyInput,
      Iterable<_i3.CookiePreferenceCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyCookiePreference',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CookiePreference?> update({
    required _i1.PrismaUnion<
      _i3.CookiePreferenceUpdateInput,
      _i3.CookiePreferenceUncheckedUpdateInput
    >
    data,
    required _i3.CookiePreferenceWhereUniqueInput where,
    _i3.CookiePreferenceSelect? select,
    _i3.CookiePreferenceInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CookiePreference?>(
      action: 'updateOneCookiePreference',
      result: result,
      factory: (e) => e != null ? _i2.CookiePreference.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.CookiePreferenceUpdateManyMutationInput,
      _i3.CookiePreferenceUncheckedUpdateManyInput
    >
    data,
    _i3.CookiePreferenceWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyCookiePreference',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CookiePreference> upsert({
    required _i3.CookiePreferenceWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.CookiePreferenceCreateInput,
      _i3.CookiePreferenceUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.CookiePreferenceUpdateInput,
      _i3.CookiePreferenceUncheckedUpdateInput
    >
    update,
    _i3.CookiePreferenceSelect? select,
    _i3.CookiePreferenceInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CookiePreference>(
      action: 'upsertOneCookiePreference',
      result: result,
      factory: (e) => _i2.CookiePreference.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CookiePreference?> delete({
    required _i3.CookiePreferenceWhereUniqueInput where,
    _i3.CookiePreferenceSelect? select,
    _i3.CookiePreferenceInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CookiePreference?>(
      action: 'deleteOneCookiePreference',
      result: result,
      factory: (e) => e != null ? _i2.CookiePreference.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.CookiePreferenceWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyCookiePreference',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.CookiePreferenceGroupByOutputType>> groupBy({
    _i3.CookiePreferenceWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.CookiePreferenceOrderByWithAggregationInput>,
      _i3.CookiePreferenceOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.CookiePreferenceScalar>,
      _i3.CookiePreferenceScalar
    >
    by,
    _i3.CookiePreferenceScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.CookiePreferenceGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.CookiePreferenceGroupByOutputType>>(
      action: 'groupByCookiePreference',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.CookiePreferenceGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateCookiePreference> aggregate({
    _i3.CookiePreferenceWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.CookiePreferenceOrderByWithRelationInput>,
      _i3.CookiePreferenceOrderByWithRelationInput
    >?
    orderBy,
    _i3.CookiePreferenceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateCookiePreferenceSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CookiePreference',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateCookiePreference>(
      action: 'aggregateCookiePreference',
      result: result,
      factory: (e) => _i3.AggregateCookiePreference.fromJson(e),
    );
  }
}

class NotificationPreferenceDelegate {
  const NotificationPreferenceDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.NotificationPreference?> findUnique({
    required _i3.NotificationPreferenceWhereUniqueInput where,
    _i3.NotificationPreferenceSelect? select,
    _i3.NotificationPreferenceInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.NotificationPreference?>(
      action: 'findUniqueNotificationPreference',
      result: result,
      factory: (e) => e != null ? _i2.NotificationPreference.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.NotificationPreference> findUniqueOrThrow({
    required _i3.NotificationPreferenceWhereUniqueInput where,
    _i3.NotificationPreferenceSelect? select,
    _i3.NotificationPreferenceInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.NotificationPreference>(
      action: 'findUniqueNotificationPreferenceOrThrow',
      result: result,
      factory: (e) => _i2.NotificationPreference.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.NotificationPreference?> findFirst({
    _i3.NotificationPreferenceWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.NotificationPreferenceOrderByWithRelationInput>,
      _i3.NotificationPreferenceOrderByWithRelationInput
    >?
    orderBy,
    _i3.NotificationPreferenceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.NotificationPreferenceScalar,
      Iterable<_i3.NotificationPreferenceScalar>
    >?
    distinct,
    _i3.NotificationPreferenceSelect? select,
    _i3.NotificationPreferenceInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.NotificationPreference?>(
      action: 'findFirstNotificationPreference',
      result: result,
      factory: (e) => e != null ? _i2.NotificationPreference.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.NotificationPreference> findFirstOrThrow({
    _i3.NotificationPreferenceWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.NotificationPreferenceOrderByWithRelationInput>,
      _i3.NotificationPreferenceOrderByWithRelationInput
    >?
    orderBy,
    _i3.NotificationPreferenceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.NotificationPreferenceScalar,
      Iterable<_i3.NotificationPreferenceScalar>
    >?
    distinct,
    _i3.NotificationPreferenceSelect? select,
    _i3.NotificationPreferenceInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.NotificationPreference>(
      action: 'findFirstNotificationPreferenceOrThrow',
      result: result,
      factory: (e) => _i2.NotificationPreference.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.NotificationPreference>> findMany({
    _i3.NotificationPreferenceWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.NotificationPreferenceOrderByWithRelationInput>,
      _i3.NotificationPreferenceOrderByWithRelationInput
    >?
    orderBy,
    _i3.NotificationPreferenceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.NotificationPreferenceScalar,
      Iterable<_i3.NotificationPreferenceScalar>
    >?
    distinct,
    _i3.NotificationPreferenceSelect? select,
    _i3.NotificationPreferenceInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.NotificationPreference>>(
      action: 'findManyNotificationPreference',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i2.NotificationPreference.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i2.NotificationPreference> create({
    required _i1.PrismaUnion<
      _i3.NotificationPreferenceCreateInput,
      _i3.NotificationPreferenceUncheckedCreateInput
    >
    data,
    _i3.NotificationPreferenceSelect? select,
    _i3.NotificationPreferenceInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.NotificationPreference>(
      action: 'createOneNotificationPreference',
      result: result,
      factory: (e) => _i2.NotificationPreference.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.NotificationPreferenceCreateManyInput,
      Iterable<_i3.NotificationPreferenceCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyNotificationPreference',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.NotificationPreference?> update({
    required _i1.PrismaUnion<
      _i3.NotificationPreferenceUpdateInput,
      _i3.NotificationPreferenceUncheckedUpdateInput
    >
    data,
    required _i3.NotificationPreferenceWhereUniqueInput where,
    _i3.NotificationPreferenceSelect? select,
    _i3.NotificationPreferenceInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.NotificationPreference?>(
      action: 'updateOneNotificationPreference',
      result: result,
      factory: (e) => e != null ? _i2.NotificationPreference.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.NotificationPreferenceUpdateManyMutationInput,
      _i3.NotificationPreferenceUncheckedUpdateManyInput
    >
    data,
    _i3.NotificationPreferenceWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyNotificationPreference',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.NotificationPreference> upsert({
    required _i3.NotificationPreferenceWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.NotificationPreferenceCreateInput,
      _i3.NotificationPreferenceUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.NotificationPreferenceUpdateInput,
      _i3.NotificationPreferenceUncheckedUpdateInput
    >
    update,
    _i3.NotificationPreferenceSelect? select,
    _i3.NotificationPreferenceInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.NotificationPreference>(
      action: 'upsertOneNotificationPreference',
      result: result,
      factory: (e) => _i2.NotificationPreference.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.NotificationPreference?> delete({
    required _i3.NotificationPreferenceWhereUniqueInput where,
    _i3.NotificationPreferenceSelect? select,
    _i3.NotificationPreferenceInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.NotificationPreference?>(
      action: 'deleteOneNotificationPreference',
      result: result,
      factory: (e) => e != null ? _i2.NotificationPreference.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.NotificationPreferenceWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyNotificationPreference',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.NotificationPreferenceGroupByOutputType>>
  groupBy({
    _i3.NotificationPreferenceWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.NotificationPreferenceOrderByWithAggregationInput>,
      _i3.NotificationPreferenceOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.NotificationPreferenceScalar>,
      _i3.NotificationPreferenceScalar
    >
    by,
    _i3.NotificationPreferenceScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.NotificationPreferenceGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
      Iterable<_i3.NotificationPreferenceGroupByOutputType>
    >(
      action: 'groupByNotificationPreference',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.NotificationPreferenceGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateNotificationPreference> aggregate({
    _i3.NotificationPreferenceWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.NotificationPreferenceOrderByWithRelationInput>,
      _i3.NotificationPreferenceOrderByWithRelationInput
    >?
    orderBy,
    _i3.NotificationPreferenceWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateNotificationPreferenceSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'NotificationPreference',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateNotificationPreference>(
      action: 'aggregateNotificationPreference',
      result: result,
      factory: (e) => _i3.AggregateNotificationPreference.fromJson(e),
    );
  }
}

class AccountDelegate {
  const AccountDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Account?> findUnique({
    required _i3.AccountWhereUniqueInput where,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account?>(
      action: 'findUniqueAccount',
      result: result,
      factory: (e) => e != null ? _i2.Account.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Account> findUniqueOrThrow({
    required _i3.AccountWhereUniqueInput where,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account>(
      action: 'findUniqueAccountOrThrow',
      result: result,
      factory: (e) => _i2.Account.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Account?> findFirst({
    _i3.AccountWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.AccountOrderByWithRelationInput>,
      _i3.AccountOrderByWithRelationInput
    >?
    orderBy,
    _i3.AccountWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AccountScalar, Iterable<_i3.AccountScalar>>? distinct,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account?>(
      action: 'findFirstAccount',
      result: result,
      factory: (e) => e != null ? _i2.Account.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Account> findFirstOrThrow({
    _i3.AccountWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.AccountOrderByWithRelationInput>,
      _i3.AccountOrderByWithRelationInput
    >?
    orderBy,
    _i3.AccountWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AccountScalar, Iterable<_i3.AccountScalar>>? distinct,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account>(
      action: 'findFirstAccountOrThrow',
      result: result,
      factory: (e) => _i2.Account.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Account>> findMany({
    _i3.AccountWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.AccountOrderByWithRelationInput>,
      _i3.AccountOrderByWithRelationInput
    >?
    orderBy,
    _i3.AccountWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AccountScalar, Iterable<_i3.AccountScalar>>? distinct,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Account>>(
      action: 'findManyAccount',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Account.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Account> create({
    required _i1.PrismaUnion<
      _i3.AccountCreateInput,
      _i3.AccountUncheckedCreateInput
    >
    data,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account>(
      action: 'createOneAccount',
      result: result,
      factory: (e) => _i2.Account.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.AccountCreateManyInput,
      Iterable<_i3.AccountCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyAccount',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Account?> update({
    required _i1.PrismaUnion<
      _i3.AccountUpdateInput,
      _i3.AccountUncheckedUpdateInput
    >
    data,
    required _i3.AccountWhereUniqueInput where,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account?>(
      action: 'updateOneAccount',
      result: result,
      factory: (e) => e != null ? _i2.Account.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.AccountUpdateManyMutationInput,
      _i3.AccountUncheckedUpdateManyInput
    >
    data,
    _i3.AccountWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyAccount',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Account> upsert({
    required _i3.AccountWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.AccountCreateInput,
      _i3.AccountUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.AccountUpdateInput,
      _i3.AccountUncheckedUpdateInput
    >
    update,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account>(
      action: 'upsertOneAccount',
      result: result,
      factory: (e) => _i2.Account.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Account?> delete({
    required _i3.AccountWhereUniqueInput where,
    _i3.AccountSelect? select,
    _i3.AccountInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Account?>(
      action: 'deleteOneAccount',
      result: result,
      factory: (e) => e != null ? _i2.Account.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.AccountWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyAccount',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.AccountGroupByOutputType>> groupBy({
    _i3.AccountWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.AccountOrderByWithAggregationInput>,
      _i3.AccountOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.AccountScalar>, _i3.AccountScalar> by,
    _i3.AccountScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.AccountGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.AccountGroupByOutputType>>(
      action: 'groupByAccount',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.AccountGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateAccount> aggregate({
    _i3.AccountWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.AccountOrderByWithRelationInput>,
      _i3.AccountOrderByWithRelationInput
    >?
    orderBy,
    _i3.AccountWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateAccountSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Account',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateAccount>(
      action: 'aggregateAccount',
      result: result,
      factory: (e) => _i3.AggregateAccount.fromJson(e),
    );
  }
}

class SessionDelegate {
  const SessionDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Session?> findUnique({
    required _i3.SessionWhereUniqueInput where,
    _i3.SessionSelect? select,
    _i3.SessionInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Session?>(
      action: 'findUniqueSession',
      result: result,
      factory: (e) => e != null ? _i2.Session.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Session> findUniqueOrThrow({
    required _i3.SessionWhereUniqueInput where,
    _i3.SessionSelect? select,
    _i3.SessionInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Session>(
      action: 'findUniqueSessionOrThrow',
      result: result,
      factory: (e) => _i2.Session.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Session?> findFirst({
    _i3.SessionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SessionOrderByWithRelationInput>,
      _i3.SessionOrderByWithRelationInput
    >?
    orderBy,
    _i3.SessionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.SessionScalar, Iterable<_i3.SessionScalar>>? distinct,
    _i3.SessionSelect? select,
    _i3.SessionInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Session?>(
      action: 'findFirstSession',
      result: result,
      factory: (e) => e != null ? _i2.Session.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Session> findFirstOrThrow({
    _i3.SessionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SessionOrderByWithRelationInput>,
      _i3.SessionOrderByWithRelationInput
    >?
    orderBy,
    _i3.SessionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.SessionScalar, Iterable<_i3.SessionScalar>>? distinct,
    _i3.SessionSelect? select,
    _i3.SessionInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Session>(
      action: 'findFirstSessionOrThrow',
      result: result,
      factory: (e) => _i2.Session.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Session>> findMany({
    _i3.SessionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SessionOrderByWithRelationInput>,
      _i3.SessionOrderByWithRelationInput
    >?
    orderBy,
    _i3.SessionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.SessionScalar, Iterable<_i3.SessionScalar>>? distinct,
    _i3.SessionSelect? select,
    _i3.SessionInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Session>>(
      action: 'findManySession',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Session.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Session> create({
    required _i1.PrismaUnion<
      _i3.SessionCreateInput,
      _i3.SessionUncheckedCreateInput
    >
    data,
    _i3.SessionSelect? select,
    _i3.SessionInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Session>(
      action: 'createOneSession',
      result: result,
      factory: (e) => _i2.Session.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.SessionCreateManyInput,
      Iterable<_i3.SessionCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManySession',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Session?> update({
    required _i1.PrismaUnion<
      _i3.SessionUpdateInput,
      _i3.SessionUncheckedUpdateInput
    >
    data,
    required _i3.SessionWhereUniqueInput where,
    _i3.SessionSelect? select,
    _i3.SessionInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Session?>(
      action: 'updateOneSession',
      result: result,
      factory: (e) => e != null ? _i2.Session.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.SessionUpdateManyMutationInput,
      _i3.SessionUncheckedUpdateManyInput
    >
    data,
    _i3.SessionWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManySession',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Session> upsert({
    required _i3.SessionWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.SessionCreateInput,
      _i3.SessionUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.SessionUpdateInput,
      _i3.SessionUncheckedUpdateInput
    >
    update,
    _i3.SessionSelect? select,
    _i3.SessionInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Session>(
      action: 'upsertOneSession',
      result: result,
      factory: (e) => _i2.Session.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Session?> delete({
    required _i3.SessionWhereUniqueInput where,
    _i3.SessionSelect? select,
    _i3.SessionInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Session?>(
      action: 'deleteOneSession',
      result: result,
      factory: (e) => e != null ? _i2.Session.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.SessionWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManySession',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.SessionGroupByOutputType>> groupBy({
    _i3.SessionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SessionOrderByWithAggregationInput>,
      _i3.SessionOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.SessionScalar>, _i3.SessionScalar> by,
    _i3.SessionScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.SessionGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.SessionGroupByOutputType>>(
      action: 'groupBySession',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.SessionGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateSession> aggregate({
    _i3.SessionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SessionOrderByWithRelationInput>,
      _i3.SessionOrderByWithRelationInput
    >?
    orderBy,
    _i3.SessionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateSessionSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Session',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateSession>(
      action: 'aggregateSession',
      result: result,
      factory: (e) => _i3.AggregateSession.fromJson(e),
    );
  }
}

class VerificationTokenDelegate {
  const VerificationTokenDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.VerificationToken?> findUnique({
    required _i3.VerificationTokenWhereUniqueInput where,
    _i3.VerificationTokenSelect? select,
  }) {
    final args = {'where': where, 'select': select};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VerificationToken?>(
      action: 'findUniqueVerificationToken',
      result: result,
      factory: (e) => e != null ? _i2.VerificationToken.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.VerificationToken> findUniqueOrThrow({
    required _i3.VerificationTokenWhereUniqueInput where,
    _i3.VerificationTokenSelect? select,
  }) {
    final args = {'where': where, 'select': select};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VerificationToken>(
      action: 'findUniqueVerificationTokenOrThrow',
      result: result,
      factory: (e) => _i2.VerificationToken.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.VerificationToken?> findFirst({
    _i3.VerificationTokenWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.VerificationTokenOrderByWithRelationInput>,
      _i3.VerificationTokenOrderByWithRelationInput
    >?
    orderBy,
    _i3.VerificationTokenWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.VerificationTokenScalar,
      Iterable<_i3.VerificationTokenScalar>
    >?
    distinct,
    _i3.VerificationTokenSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VerificationToken?>(
      action: 'findFirstVerificationToken',
      result: result,
      factory: (e) => e != null ? _i2.VerificationToken.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.VerificationToken> findFirstOrThrow({
    _i3.VerificationTokenWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.VerificationTokenOrderByWithRelationInput>,
      _i3.VerificationTokenOrderByWithRelationInput
    >?
    orderBy,
    _i3.VerificationTokenWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.VerificationTokenScalar,
      Iterable<_i3.VerificationTokenScalar>
    >?
    distinct,
    _i3.VerificationTokenSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VerificationToken>(
      action: 'findFirstVerificationTokenOrThrow',
      result: result,
      factory: (e) => _i2.VerificationToken.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.VerificationToken>> findMany({
    _i3.VerificationTokenWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.VerificationTokenOrderByWithRelationInput>,
      _i3.VerificationTokenOrderByWithRelationInput
    >?
    orderBy,
    _i3.VerificationTokenWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.VerificationTokenScalar,
      Iterable<_i3.VerificationTokenScalar>
    >?
    distinct,
    _i3.VerificationTokenSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.VerificationToken>>(
      action: 'findManyVerificationToken',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.VerificationToken.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.VerificationToken> create({
    required _i1.PrismaUnion<
      _i3.VerificationTokenCreateInput,
      _i3.VerificationTokenUncheckedCreateInput
    >
    data,
    _i3.VerificationTokenSelect? select,
  }) {
    final args = {'data': data, 'select': select};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VerificationToken>(
      action: 'createOneVerificationToken',
      result: result,
      factory: (e) => _i2.VerificationToken.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.VerificationTokenCreateManyInput,
      Iterable<_i3.VerificationTokenCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyVerificationToken',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.VerificationToken?> update({
    required _i1.PrismaUnion<
      _i3.VerificationTokenUpdateInput,
      _i3.VerificationTokenUncheckedUpdateInput
    >
    data,
    required _i3.VerificationTokenWhereUniqueInput where,
    _i3.VerificationTokenSelect? select,
  }) {
    final args = {'data': data, 'where': where, 'select': select};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VerificationToken?>(
      action: 'updateOneVerificationToken',
      result: result,
      factory: (e) => e != null ? _i2.VerificationToken.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.VerificationTokenUpdateManyMutationInput,
      _i3.VerificationTokenUncheckedUpdateManyInput
    >
    data,
    _i3.VerificationTokenWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyVerificationToken',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.VerificationToken> upsert({
    required _i3.VerificationTokenWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.VerificationTokenCreateInput,
      _i3.VerificationTokenUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.VerificationTokenUpdateInput,
      _i3.VerificationTokenUncheckedUpdateInput
    >
    update,
    _i3.VerificationTokenSelect? select,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VerificationToken>(
      action: 'upsertOneVerificationToken',
      result: result,
      factory: (e) => _i2.VerificationToken.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.VerificationToken?> delete({
    required _i3.VerificationTokenWhereUniqueInput where,
    _i3.VerificationTokenSelect? select,
  }) {
    final args = {'where': where, 'select': select};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.VerificationToken?>(
      action: 'deleteOneVerificationToken',
      result: result,
      factory: (e) => e != null ? _i2.VerificationToken.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.VerificationTokenWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyVerificationToken',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.VerificationTokenGroupByOutputType>> groupBy({
    _i3.VerificationTokenWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.VerificationTokenOrderByWithAggregationInput>,
      _i3.VerificationTokenOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.VerificationTokenScalar>,
      _i3.VerificationTokenScalar
    >
    by,
    _i3.VerificationTokenScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.VerificationTokenGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.VerificationTokenGroupByOutputType>>(
      action: 'groupByVerificationToken',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.VerificationTokenGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateVerificationToken> aggregate({
    _i3.VerificationTokenWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.VerificationTokenOrderByWithRelationInput>,
      _i3.VerificationTokenOrderByWithRelationInput
    >?
    orderBy,
    _i3.VerificationTokenWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateVerificationTokenSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'VerificationToken',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateVerificationToken>(
      action: 'aggregateVerificationToken',
      result: result,
      factory: (e) => _i3.AggregateVerificationToken.fromJson(e),
    );
  }
}

class ConsultantProfileDelegate {
  const ConsultantProfileDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.ConsultantProfile?> findUnique({
    required _i3.ConsultantProfileWhereUniqueInput where,
    _i3.ConsultantProfileSelect? select,
    _i3.ConsultantProfileInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantProfile?>(
      action: 'findUniqueConsultantProfile',
      result: result,
      factory: (e) => e != null ? _i2.ConsultantProfile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ConsultantProfile> findUniqueOrThrow({
    required _i3.ConsultantProfileWhereUniqueInput where,
    _i3.ConsultantProfileSelect? select,
    _i3.ConsultantProfileInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantProfile>(
      action: 'findUniqueConsultantProfileOrThrow',
      result: result,
      factory: (e) => _i2.ConsultantProfile.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsultantProfile?> findFirst({
    _i3.ConsultantProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultantProfileOrderByWithRelationInput>,
      _i3.ConsultantProfileOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultantProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.ConsultantProfileScalar,
      Iterable<_i3.ConsultantProfileScalar>
    >?
    distinct,
    _i3.ConsultantProfileSelect? select,
    _i3.ConsultantProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantProfile?>(
      action: 'findFirstConsultantProfile',
      result: result,
      factory: (e) => e != null ? _i2.ConsultantProfile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ConsultantProfile> findFirstOrThrow({
    _i3.ConsultantProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultantProfileOrderByWithRelationInput>,
      _i3.ConsultantProfileOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultantProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.ConsultantProfileScalar,
      Iterable<_i3.ConsultantProfileScalar>
    >?
    distinct,
    _i3.ConsultantProfileSelect? select,
    _i3.ConsultantProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantProfile>(
      action: 'findFirstConsultantProfileOrThrow',
      result: result,
      factory: (e) => _i2.ConsultantProfile.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.ConsultantProfile>> findMany({
    _i3.ConsultantProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultantProfileOrderByWithRelationInput>,
      _i3.ConsultantProfileOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultantProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.ConsultantProfileScalar,
      Iterable<_i3.ConsultantProfileScalar>
    >?
    distinct,
    _i3.ConsultantProfileSelect? select,
    _i3.ConsultantProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.ConsultantProfile>>(
      action: 'findManyConsultantProfile',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.ConsultantProfile.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ConsultantProfile> create({
    required _i1.PrismaUnion<
      _i3.ConsultantProfileCreateInput,
      _i3.ConsultantProfileUncheckedCreateInput
    >
    data,
    _i3.ConsultantProfileSelect? select,
    _i3.ConsultantProfileInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantProfile>(
      action: 'createOneConsultantProfile',
      result: result,
      factory: (e) => _i2.ConsultantProfile.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.ConsultantProfileCreateManyInput,
      Iterable<_i3.ConsultantProfileCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyConsultantProfile',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsultantProfile?> update({
    required _i1.PrismaUnion<
      _i3.ConsultantProfileUpdateInput,
      _i3.ConsultantProfileUncheckedUpdateInput
    >
    data,
    required _i3.ConsultantProfileWhereUniqueInput where,
    _i3.ConsultantProfileSelect? select,
    _i3.ConsultantProfileInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantProfile?>(
      action: 'updateOneConsultantProfile',
      result: result,
      factory: (e) => e != null ? _i2.ConsultantProfile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.ConsultantProfileUpdateManyMutationInput,
      _i3.ConsultantProfileUncheckedUpdateManyInput
    >
    data,
    _i3.ConsultantProfileWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyConsultantProfile',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsultantProfile> upsert({
    required _i3.ConsultantProfileWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.ConsultantProfileCreateInput,
      _i3.ConsultantProfileUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.ConsultantProfileUpdateInput,
      _i3.ConsultantProfileUncheckedUpdateInput
    >
    update,
    _i3.ConsultantProfileSelect? select,
    _i3.ConsultantProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantProfile>(
      action: 'upsertOneConsultantProfile',
      result: result,
      factory: (e) => _i2.ConsultantProfile.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsultantProfile?> delete({
    required _i3.ConsultantProfileWhereUniqueInput where,
    _i3.ConsultantProfileSelect? select,
    _i3.ConsultantProfileInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantProfile?>(
      action: 'deleteOneConsultantProfile',
      result: result,
      factory: (e) => e != null ? _i2.ConsultantProfile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.ConsultantProfileWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyConsultantProfile',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ConsultantProfileGroupByOutputType>> groupBy({
    _i3.ConsultantProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultantProfileOrderByWithAggregationInput>,
      _i3.ConsultantProfileOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.ConsultantProfileScalar>,
      _i3.ConsultantProfileScalar
    >
    by,
    _i3.ConsultantProfileScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ConsultantProfileGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ConsultantProfileGroupByOutputType>>(
      action: 'groupByConsultantProfile',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.ConsultantProfileGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateConsultantProfile> aggregate({
    _i3.ConsultantProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultantProfileOrderByWithRelationInput>,
      _i3.ConsultantProfileOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultantProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateConsultantProfileSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantProfile',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateConsultantProfile>(
      action: 'aggregateConsultantProfile',
      result: result,
      factory: (e) => _i3.AggregateConsultantProfile.fromJson(e),
    );
  }
}

class DomainDelegate {
  const DomainDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Domain?> findUnique({
    required _i3.DomainWhereUniqueInput where,
    _i3.DomainSelect? select,
    _i3.DomainInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Domain?>(
      action: 'findUniqueDomain',
      result: result,
      factory: (e) => e != null ? _i2.Domain.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Domain> findUniqueOrThrow({
    required _i3.DomainWhereUniqueInput where,
    _i3.DomainSelect? select,
    _i3.DomainInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Domain>(
      action: 'findUniqueDomainOrThrow',
      result: result,
      factory: (e) => _i2.Domain.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Domain?> findFirst({
    _i3.DomainWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.DomainOrderByWithRelationInput>,
      _i3.DomainOrderByWithRelationInput
    >?
    orderBy,
    _i3.DomainWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DomainScalar, Iterable<_i3.DomainScalar>>? distinct,
    _i3.DomainSelect? select,
    _i3.DomainInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Domain?>(
      action: 'findFirstDomain',
      result: result,
      factory: (e) => e != null ? _i2.Domain.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Domain> findFirstOrThrow({
    _i3.DomainWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.DomainOrderByWithRelationInput>,
      _i3.DomainOrderByWithRelationInput
    >?
    orderBy,
    _i3.DomainWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DomainScalar, Iterable<_i3.DomainScalar>>? distinct,
    _i3.DomainSelect? select,
    _i3.DomainInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Domain>(
      action: 'findFirstDomainOrThrow',
      result: result,
      factory: (e) => _i2.Domain.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Domain>> findMany({
    _i3.DomainWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.DomainOrderByWithRelationInput>,
      _i3.DomainOrderByWithRelationInput
    >?
    orderBy,
    _i3.DomainWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DomainScalar, Iterable<_i3.DomainScalar>>? distinct,
    _i3.DomainSelect? select,
    _i3.DomainInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Domain>>(
      action: 'findManyDomain',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Domain.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Domain> create({
    required _i1.PrismaUnion<
      _i3.DomainCreateInput,
      _i3.DomainUncheckedCreateInput
    >
    data,
    _i3.DomainSelect? select,
    _i3.DomainInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Domain>(
      action: 'createOneDomain',
      result: result,
      factory: (e) => _i2.Domain.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.DomainCreateManyInput,
      Iterable<_i3.DomainCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyDomain',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Domain?> update({
    required _i1.PrismaUnion<
      _i3.DomainUpdateInput,
      _i3.DomainUncheckedUpdateInput
    >
    data,
    required _i3.DomainWhereUniqueInput where,
    _i3.DomainSelect? select,
    _i3.DomainInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Domain?>(
      action: 'updateOneDomain',
      result: result,
      factory: (e) => e != null ? _i2.Domain.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.DomainUpdateManyMutationInput,
      _i3.DomainUncheckedUpdateManyInput
    >
    data,
    _i3.DomainWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyDomain',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Domain> upsert({
    required _i3.DomainWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.DomainCreateInput,
      _i3.DomainUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.DomainUpdateInput,
      _i3.DomainUncheckedUpdateInput
    >
    update,
    _i3.DomainSelect? select,
    _i3.DomainInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Domain>(
      action: 'upsertOneDomain',
      result: result,
      factory: (e) => _i2.Domain.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Domain?> delete({
    required _i3.DomainWhereUniqueInput where,
    _i3.DomainSelect? select,
    _i3.DomainInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Domain?>(
      action: 'deleteOneDomain',
      result: result,
      factory: (e) => e != null ? _i2.Domain.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.DomainWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyDomain',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.DomainGroupByOutputType>> groupBy({
    _i3.DomainWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.DomainOrderByWithAggregationInput>,
      _i3.DomainOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.DomainScalar>, _i3.DomainScalar> by,
    _i3.DomainScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.DomainGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.DomainGroupByOutputType>>(
      action: 'groupByDomain',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.DomainGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateDomain> aggregate({
    _i3.DomainWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.DomainOrderByWithRelationInput>,
      _i3.DomainOrderByWithRelationInput
    >?
    orderBy,
    _i3.DomainWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateDomainSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Domain',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateDomain>(
      action: 'aggregateDomain',
      result: result,
      factory: (e) => _i3.AggregateDomain.fromJson(e),
    );
  }
}

class SubDomainDelegate {
  const SubDomainDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.SubDomain?> findUnique({
    required _i3.SubDomainWhereUniqueInput where,
    _i3.SubDomainSelect? select,
    _i3.SubDomainInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubDomain?>(
      action: 'findUniqueSubDomain',
      result: result,
      factory: (e) => e != null ? _i2.SubDomain.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SubDomain> findUniqueOrThrow({
    required _i3.SubDomainWhereUniqueInput where,
    _i3.SubDomainSelect? select,
    _i3.SubDomainInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubDomain>(
      action: 'findUniqueSubDomainOrThrow',
      result: result,
      factory: (e) => _i2.SubDomain.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SubDomain?> findFirst({
    _i3.SubDomainWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubDomainOrderByWithRelationInput>,
      _i3.SubDomainOrderByWithRelationInput
    >?
    orderBy,
    _i3.SubDomainWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.SubDomainScalar, Iterable<_i3.SubDomainScalar>>?
    distinct,
    _i3.SubDomainSelect? select,
    _i3.SubDomainInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubDomain?>(
      action: 'findFirstSubDomain',
      result: result,
      factory: (e) => e != null ? _i2.SubDomain.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SubDomain> findFirstOrThrow({
    _i3.SubDomainWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubDomainOrderByWithRelationInput>,
      _i3.SubDomainOrderByWithRelationInput
    >?
    orderBy,
    _i3.SubDomainWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.SubDomainScalar, Iterable<_i3.SubDomainScalar>>?
    distinct,
    _i3.SubDomainSelect? select,
    _i3.SubDomainInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubDomain>(
      action: 'findFirstSubDomainOrThrow',
      result: result,
      factory: (e) => _i2.SubDomain.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.SubDomain>> findMany({
    _i3.SubDomainWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubDomainOrderByWithRelationInput>,
      _i3.SubDomainOrderByWithRelationInput
    >?
    orderBy,
    _i3.SubDomainWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.SubDomainScalar, Iterable<_i3.SubDomainScalar>>?
    distinct,
    _i3.SubDomainSelect? select,
    _i3.SubDomainInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.SubDomain>>(
      action: 'findManySubDomain',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.SubDomain.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.SubDomain> create({
    required _i1.PrismaUnion<
      _i3.SubDomainCreateInput,
      _i3.SubDomainUncheckedCreateInput
    >
    data,
    _i3.SubDomainSelect? select,
    _i3.SubDomainInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubDomain>(
      action: 'createOneSubDomain',
      result: result,
      factory: (e) => _i2.SubDomain.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.SubDomainCreateManyInput,
      Iterable<_i3.SubDomainCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManySubDomain',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SubDomain?> update({
    required _i1.PrismaUnion<
      _i3.SubDomainUpdateInput,
      _i3.SubDomainUncheckedUpdateInput
    >
    data,
    required _i3.SubDomainWhereUniqueInput where,
    _i3.SubDomainSelect? select,
    _i3.SubDomainInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubDomain?>(
      action: 'updateOneSubDomain',
      result: result,
      factory: (e) => e != null ? _i2.SubDomain.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.SubDomainUpdateManyMutationInput,
      _i3.SubDomainUncheckedUpdateManyInput
    >
    data,
    _i3.SubDomainWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManySubDomain',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SubDomain> upsert({
    required _i3.SubDomainWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.SubDomainCreateInput,
      _i3.SubDomainUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.SubDomainUpdateInput,
      _i3.SubDomainUncheckedUpdateInput
    >
    update,
    _i3.SubDomainSelect? select,
    _i3.SubDomainInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubDomain>(
      action: 'upsertOneSubDomain',
      result: result,
      factory: (e) => _i2.SubDomain.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SubDomain?> delete({
    required _i3.SubDomainWhereUniqueInput where,
    _i3.SubDomainSelect? select,
    _i3.SubDomainInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubDomain?>(
      action: 'deleteOneSubDomain',
      result: result,
      factory: (e) => e != null ? _i2.SubDomain.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.SubDomainWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManySubDomain',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.SubDomainGroupByOutputType>> groupBy({
    _i3.SubDomainWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubDomainOrderByWithAggregationInput>,
      _i3.SubDomainOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.SubDomainScalar>, _i3.SubDomainScalar>
    by,
    _i3.SubDomainScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.SubDomainGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.SubDomainGroupByOutputType>>(
      action: 'groupBySubDomain',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.SubDomainGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateSubDomain> aggregate({
    _i3.SubDomainWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubDomainOrderByWithRelationInput>,
      _i3.SubDomainOrderByWithRelationInput
    >?
    orderBy,
    _i3.SubDomainWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateSubDomainSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubDomain',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateSubDomain>(
      action: 'aggregateSubDomain',
      result: result,
      factory: (e) => _i3.AggregateSubDomain.fromJson(e),
    );
  }
}

class TagDelegate {
  const TagDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Tag?> findUnique({
    required _i3.TagWhereUniqueInput where,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag?>(
      action: 'findUniqueTag',
      result: result,
      factory: (e) => e != null ? _i2.Tag.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Tag> findUniqueOrThrow({
    required _i3.TagWhereUniqueInput where,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag>(
      action: 'findUniqueTagOrThrow',
      result: result,
      factory: (e) => _i2.Tag.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Tag?> findFirst({
    _i3.TagWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.TagOrderByWithRelationInput>,
      _i3.TagOrderByWithRelationInput
    >?
    orderBy,
    _i3.TagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TagScalar, Iterable<_i3.TagScalar>>? distinct,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag?>(
      action: 'findFirstTag',
      result: result,
      factory: (e) => e != null ? _i2.Tag.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Tag> findFirstOrThrow({
    _i3.TagWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.TagOrderByWithRelationInput>,
      _i3.TagOrderByWithRelationInput
    >?
    orderBy,
    _i3.TagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TagScalar, Iterable<_i3.TagScalar>>? distinct,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag>(
      action: 'findFirstTagOrThrow',
      result: result,
      factory: (e) => _i2.Tag.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Tag>> findMany({
    _i3.TagWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.TagOrderByWithRelationInput>,
      _i3.TagOrderByWithRelationInput
    >?
    orderBy,
    _i3.TagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TagScalar, Iterable<_i3.TagScalar>>? distinct,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Tag>>(
      action: 'findManyTag',
      result: result,
      factory: (values) => (values as Iterable).map((e) => _i2.Tag.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Tag> create({
    required _i1.PrismaUnion<_i3.TagCreateInput, _i3.TagUncheckedCreateInput>
    data,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag>(
      action: 'createOneTag',
      result: result,
      factory: (e) => _i2.Tag.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.TagCreateManyInput,
      Iterable<_i3.TagCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyTag',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Tag?> update({
    required _i1.PrismaUnion<_i3.TagUpdateInput, _i3.TagUncheckedUpdateInput>
    data,
    required _i3.TagWhereUniqueInput where,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag?>(
      action: 'updateOneTag',
      result: result,
      factory: (e) => e != null ? _i2.Tag.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.TagUpdateManyMutationInput,
      _i3.TagUncheckedUpdateManyInput
    >
    data,
    _i3.TagWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyTag',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Tag> upsert({
    required _i3.TagWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.TagCreateInput, _i3.TagUncheckedCreateInput>
    create,
    required _i1.PrismaUnion<_i3.TagUpdateInput, _i3.TagUncheckedUpdateInput>
    update,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag>(
      action: 'upsertOneTag',
      result: result,
      factory: (e) => _i2.Tag.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Tag?> delete({
    required _i3.TagWhereUniqueInput where,
    _i3.TagSelect? select,
    _i3.TagInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Tag?>(
      action: 'deleteOneTag',
      result: result,
      factory: (e) => e != null ? _i2.Tag.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.TagWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyTag',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.TagGroupByOutputType>> groupBy({
    _i3.TagWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.TagOrderByWithAggregationInput>,
      _i3.TagOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.TagScalar>, _i3.TagScalar> by,
    _i3.TagScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.TagGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.TagGroupByOutputType>>(
      action: 'groupByTag',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i3.TagGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateTag> aggregate({
    _i3.TagWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.TagOrderByWithRelationInput>,
      _i3.TagOrderByWithRelationInput
    >?
    orderBy,
    _i3.TagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateTagSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Tag',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateTag>(
      action: 'aggregateTag',
      result: result,
      factory: (e) => _i3.AggregateTag.fromJson(e),
    );
  }
}

class ConsultantReviewDelegate {
  const ConsultantReviewDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.ConsultantReview?> findUnique({
    required _i3.ConsultantReviewWhereUniqueInput where,
    _i3.ConsultantReviewSelect? select,
    _i3.ConsultantReviewInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantReview?>(
      action: 'findUniqueConsultantReview',
      result: result,
      factory: (e) => e != null ? _i2.ConsultantReview.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ConsultantReview> findUniqueOrThrow({
    required _i3.ConsultantReviewWhereUniqueInput where,
    _i3.ConsultantReviewSelect? select,
    _i3.ConsultantReviewInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantReview>(
      action: 'findUniqueConsultantReviewOrThrow',
      result: result,
      factory: (e) => _i2.ConsultantReview.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsultantReview?> findFirst({
    _i3.ConsultantReviewWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultantReviewOrderByWithRelationInput>,
      _i3.ConsultantReviewOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultantReviewWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.ConsultantReviewScalar,
      Iterable<_i3.ConsultantReviewScalar>
    >?
    distinct,
    _i3.ConsultantReviewSelect? select,
    _i3.ConsultantReviewInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantReview?>(
      action: 'findFirstConsultantReview',
      result: result,
      factory: (e) => e != null ? _i2.ConsultantReview.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ConsultantReview> findFirstOrThrow({
    _i3.ConsultantReviewWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultantReviewOrderByWithRelationInput>,
      _i3.ConsultantReviewOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultantReviewWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.ConsultantReviewScalar,
      Iterable<_i3.ConsultantReviewScalar>
    >?
    distinct,
    _i3.ConsultantReviewSelect? select,
    _i3.ConsultantReviewInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantReview>(
      action: 'findFirstConsultantReviewOrThrow',
      result: result,
      factory: (e) => _i2.ConsultantReview.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.ConsultantReview>> findMany({
    _i3.ConsultantReviewWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultantReviewOrderByWithRelationInput>,
      _i3.ConsultantReviewOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultantReviewWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.ConsultantReviewScalar,
      Iterable<_i3.ConsultantReviewScalar>
    >?
    distinct,
    _i3.ConsultantReviewSelect? select,
    _i3.ConsultantReviewInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.ConsultantReview>>(
      action: 'findManyConsultantReview',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.ConsultantReview.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ConsultantReview> create({
    required _i1.PrismaUnion<
      _i3.ConsultantReviewCreateInput,
      _i3.ConsultantReviewUncheckedCreateInput
    >
    data,
    _i3.ConsultantReviewSelect? select,
    _i3.ConsultantReviewInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantReview>(
      action: 'createOneConsultantReview',
      result: result,
      factory: (e) => _i2.ConsultantReview.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.ConsultantReviewCreateManyInput,
      Iterable<_i3.ConsultantReviewCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyConsultantReview',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsultantReview?> update({
    required _i1.PrismaUnion<
      _i3.ConsultantReviewUpdateInput,
      _i3.ConsultantReviewUncheckedUpdateInput
    >
    data,
    required _i3.ConsultantReviewWhereUniqueInput where,
    _i3.ConsultantReviewSelect? select,
    _i3.ConsultantReviewInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantReview?>(
      action: 'updateOneConsultantReview',
      result: result,
      factory: (e) => e != null ? _i2.ConsultantReview.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.ConsultantReviewUpdateManyMutationInput,
      _i3.ConsultantReviewUncheckedUpdateManyInput
    >
    data,
    _i3.ConsultantReviewWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyConsultantReview',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsultantReview> upsert({
    required _i3.ConsultantReviewWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.ConsultantReviewCreateInput,
      _i3.ConsultantReviewUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.ConsultantReviewUpdateInput,
      _i3.ConsultantReviewUncheckedUpdateInput
    >
    update,
    _i3.ConsultantReviewSelect? select,
    _i3.ConsultantReviewInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantReview>(
      action: 'upsertOneConsultantReview',
      result: result,
      factory: (e) => _i2.ConsultantReview.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsultantReview?> delete({
    required _i3.ConsultantReviewWhereUniqueInput where,
    _i3.ConsultantReviewSelect? select,
    _i3.ConsultantReviewInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultantReview?>(
      action: 'deleteOneConsultantReview',
      result: result,
      factory: (e) => e != null ? _i2.ConsultantReview.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.ConsultantReviewWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyConsultantReview',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ConsultantReviewGroupByOutputType>> groupBy({
    _i3.ConsultantReviewWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultantReviewOrderByWithAggregationInput>,
      _i3.ConsultantReviewOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.ConsultantReviewScalar>,
      _i3.ConsultantReviewScalar
    >
    by,
    _i3.ConsultantReviewScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ConsultantReviewGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ConsultantReviewGroupByOutputType>>(
      action: 'groupByConsultantReview',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.ConsultantReviewGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateConsultantReview> aggregate({
    _i3.ConsultantReviewWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultantReviewOrderByWithRelationInput>,
      _i3.ConsultantReviewOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultantReviewWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateConsultantReviewSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultantReview',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateConsultantReview>(
      action: 'aggregateConsultantReview',
      result: result,
      factory: (e) => _i3.AggregateConsultantReview.fromJson(e),
    );
  }
}

class ConsulteeProfileDelegate {
  const ConsulteeProfileDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.ConsulteeProfile?> findUnique({
    required _i3.ConsulteeProfileWhereUniqueInput where,
    _i3.ConsulteeProfileSelect? select,
    _i3.ConsulteeProfileInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsulteeProfile?>(
      action: 'findUniqueConsulteeProfile',
      result: result,
      factory: (e) => e != null ? _i2.ConsulteeProfile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ConsulteeProfile> findUniqueOrThrow({
    required _i3.ConsulteeProfileWhereUniqueInput where,
    _i3.ConsulteeProfileSelect? select,
    _i3.ConsulteeProfileInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsulteeProfile>(
      action: 'findUniqueConsulteeProfileOrThrow',
      result: result,
      factory: (e) => _i2.ConsulteeProfile.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsulteeProfile?> findFirst({
    _i3.ConsulteeProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsulteeProfileOrderByWithRelationInput>,
      _i3.ConsulteeProfileOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsulteeProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.ConsulteeProfileScalar,
      Iterable<_i3.ConsulteeProfileScalar>
    >?
    distinct,
    _i3.ConsulteeProfileSelect? select,
    _i3.ConsulteeProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsulteeProfile?>(
      action: 'findFirstConsulteeProfile',
      result: result,
      factory: (e) => e != null ? _i2.ConsulteeProfile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ConsulteeProfile> findFirstOrThrow({
    _i3.ConsulteeProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsulteeProfileOrderByWithRelationInput>,
      _i3.ConsulteeProfileOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsulteeProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.ConsulteeProfileScalar,
      Iterable<_i3.ConsulteeProfileScalar>
    >?
    distinct,
    _i3.ConsulteeProfileSelect? select,
    _i3.ConsulteeProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsulteeProfile>(
      action: 'findFirstConsulteeProfileOrThrow',
      result: result,
      factory: (e) => _i2.ConsulteeProfile.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.ConsulteeProfile>> findMany({
    _i3.ConsulteeProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsulteeProfileOrderByWithRelationInput>,
      _i3.ConsulteeProfileOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsulteeProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.ConsulteeProfileScalar,
      Iterable<_i3.ConsulteeProfileScalar>
    >?
    distinct,
    _i3.ConsulteeProfileSelect? select,
    _i3.ConsulteeProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.ConsulteeProfile>>(
      action: 'findManyConsulteeProfile',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.ConsulteeProfile.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ConsulteeProfile> create({
    required _i1.PrismaUnion<
      _i3.ConsulteeProfileCreateInput,
      _i3.ConsulteeProfileUncheckedCreateInput
    >
    data,
    _i3.ConsulteeProfileSelect? select,
    _i3.ConsulteeProfileInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsulteeProfile>(
      action: 'createOneConsulteeProfile',
      result: result,
      factory: (e) => _i2.ConsulteeProfile.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.ConsulteeProfileCreateManyInput,
      Iterable<_i3.ConsulteeProfileCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyConsulteeProfile',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsulteeProfile?> update({
    required _i1.PrismaUnion<
      _i3.ConsulteeProfileUpdateInput,
      _i3.ConsulteeProfileUncheckedUpdateInput
    >
    data,
    required _i3.ConsulteeProfileWhereUniqueInput where,
    _i3.ConsulteeProfileSelect? select,
    _i3.ConsulteeProfileInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsulteeProfile?>(
      action: 'updateOneConsulteeProfile',
      result: result,
      factory: (e) => e != null ? _i2.ConsulteeProfile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.ConsulteeProfileUpdateManyMutationInput,
      _i3.ConsulteeProfileUncheckedUpdateManyInput
    >
    data,
    _i3.ConsulteeProfileWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyConsulteeProfile',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsulteeProfile> upsert({
    required _i3.ConsulteeProfileWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.ConsulteeProfileCreateInput,
      _i3.ConsulteeProfileUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.ConsulteeProfileUpdateInput,
      _i3.ConsulteeProfileUncheckedUpdateInput
    >
    update,
    _i3.ConsulteeProfileSelect? select,
    _i3.ConsulteeProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsulteeProfile>(
      action: 'upsertOneConsulteeProfile',
      result: result,
      factory: (e) => _i2.ConsulteeProfile.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsulteeProfile?> delete({
    required _i3.ConsulteeProfileWhereUniqueInput where,
    _i3.ConsulteeProfileSelect? select,
    _i3.ConsulteeProfileInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsulteeProfile?>(
      action: 'deleteOneConsulteeProfile',
      result: result,
      factory: (e) => e != null ? _i2.ConsulteeProfile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.ConsulteeProfileWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyConsulteeProfile',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ConsulteeProfileGroupByOutputType>> groupBy({
    _i3.ConsulteeProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsulteeProfileOrderByWithAggregationInput>,
      _i3.ConsulteeProfileOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.ConsulteeProfileScalar>,
      _i3.ConsulteeProfileScalar
    >
    by,
    _i3.ConsulteeProfileScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ConsulteeProfileGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ConsulteeProfileGroupByOutputType>>(
      action: 'groupByConsulteeProfile',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.ConsulteeProfileGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateConsulteeProfile> aggregate({
    _i3.ConsulteeProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsulteeProfileOrderByWithRelationInput>,
      _i3.ConsulteeProfileOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsulteeProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateConsulteeProfileSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsulteeProfile',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateConsulteeProfile>(
      action: 'aggregateConsulteeProfile',
      result: result,
      factory: (e) => _i3.AggregateConsulteeProfile.fromJson(e),
    );
  }
}

class StaffProfileDelegate {
  const StaffProfileDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.StaffProfile?> findUnique({
    required _i3.StaffProfileWhereUniqueInput where,
    _i3.StaffProfileSelect? select,
    _i3.StaffProfileInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StaffProfile?>(
      action: 'findUniqueStaffProfile',
      result: result,
      factory: (e) => e != null ? _i2.StaffProfile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.StaffProfile> findUniqueOrThrow({
    required _i3.StaffProfileWhereUniqueInput where,
    _i3.StaffProfileSelect? select,
    _i3.StaffProfileInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StaffProfile>(
      action: 'findUniqueStaffProfileOrThrow',
      result: result,
      factory: (e) => _i2.StaffProfile.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.StaffProfile?> findFirst({
    _i3.StaffProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.StaffProfileOrderByWithRelationInput>,
      _i3.StaffProfileOrderByWithRelationInput
    >?
    orderBy,
    _i3.StaffProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StaffProfileScalar, Iterable<_i3.StaffProfileScalar>>?
    distinct,
    _i3.StaffProfileSelect? select,
    _i3.StaffProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StaffProfile?>(
      action: 'findFirstStaffProfile',
      result: result,
      factory: (e) => e != null ? _i2.StaffProfile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.StaffProfile> findFirstOrThrow({
    _i3.StaffProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.StaffProfileOrderByWithRelationInput>,
      _i3.StaffProfileOrderByWithRelationInput
    >?
    orderBy,
    _i3.StaffProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StaffProfileScalar, Iterable<_i3.StaffProfileScalar>>?
    distinct,
    _i3.StaffProfileSelect? select,
    _i3.StaffProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StaffProfile>(
      action: 'findFirstStaffProfileOrThrow',
      result: result,
      factory: (e) => _i2.StaffProfile.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.StaffProfile>> findMany({
    _i3.StaffProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.StaffProfileOrderByWithRelationInput>,
      _i3.StaffProfileOrderByWithRelationInput
    >?
    orderBy,
    _i3.StaffProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StaffProfileScalar, Iterable<_i3.StaffProfileScalar>>?
    distinct,
    _i3.StaffProfileSelect? select,
    _i3.StaffProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.StaffProfile>>(
      action: 'findManyStaffProfile',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.StaffProfile.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.StaffProfile> create({
    required _i1.PrismaUnion<
      _i3.StaffProfileCreateInput,
      _i3.StaffProfileUncheckedCreateInput
    >
    data,
    _i3.StaffProfileSelect? select,
    _i3.StaffProfileInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StaffProfile>(
      action: 'createOneStaffProfile',
      result: result,
      factory: (e) => _i2.StaffProfile.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.StaffProfileCreateManyInput,
      Iterable<_i3.StaffProfileCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyStaffProfile',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.StaffProfile?> update({
    required _i1.PrismaUnion<
      _i3.StaffProfileUpdateInput,
      _i3.StaffProfileUncheckedUpdateInput
    >
    data,
    required _i3.StaffProfileWhereUniqueInput where,
    _i3.StaffProfileSelect? select,
    _i3.StaffProfileInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StaffProfile?>(
      action: 'updateOneStaffProfile',
      result: result,
      factory: (e) => e != null ? _i2.StaffProfile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.StaffProfileUpdateManyMutationInput,
      _i3.StaffProfileUncheckedUpdateManyInput
    >
    data,
    _i3.StaffProfileWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyStaffProfile',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.StaffProfile> upsert({
    required _i3.StaffProfileWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.StaffProfileCreateInput,
      _i3.StaffProfileUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.StaffProfileUpdateInput,
      _i3.StaffProfileUncheckedUpdateInput
    >
    update,
    _i3.StaffProfileSelect? select,
    _i3.StaffProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StaffProfile>(
      action: 'upsertOneStaffProfile',
      result: result,
      factory: (e) => _i2.StaffProfile.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.StaffProfile?> delete({
    required _i3.StaffProfileWhereUniqueInput where,
    _i3.StaffProfileSelect? select,
    _i3.StaffProfileInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StaffProfile?>(
      action: 'deleteOneStaffProfile',
      result: result,
      factory: (e) => e != null ? _i2.StaffProfile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.StaffProfileWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyStaffProfile',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.StaffProfileGroupByOutputType>> groupBy({
    _i3.StaffProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.StaffProfileOrderByWithAggregationInput>,
      _i3.StaffProfileOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.StaffProfileScalar>,
      _i3.StaffProfileScalar
    >
    by,
    _i3.StaffProfileScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.StaffProfileGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.StaffProfileGroupByOutputType>>(
      action: 'groupByStaffProfile',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.StaffProfileGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateStaffProfile> aggregate({
    _i3.StaffProfileWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.StaffProfileOrderByWithRelationInput>,
      _i3.StaffProfileOrderByWithRelationInput
    >?
    orderBy,
    _i3.StaffProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateStaffProfileSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StaffProfile',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateStaffProfile>(
      action: 'aggregateStaffProfile',
      result: result,
      factory: (e) => _i3.AggregateStaffProfile.fromJson(e),
    );
  }
}

class SlotOfAvailabilityWeeklyDelegate {
  const SlotOfAvailabilityWeeklyDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.SlotOfAvailabilityWeekly?> findUnique({
    required _i3.SlotOfAvailabilityWeeklyWhereUniqueInput where,
    _i3.SlotOfAvailabilityWeeklySelect? select,
    _i3.SlotOfAvailabilityWeeklyInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityWeekly?>(
      action: 'findUniqueSlotOfAvailabilityWeekly',
      result: result,
      factory: (e) =>
          e != null ? _i2.SlotOfAvailabilityWeekly.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityWeekly> findUniqueOrThrow({
    required _i3.SlotOfAvailabilityWeeklyWhereUniqueInput where,
    _i3.SlotOfAvailabilityWeeklySelect? select,
    _i3.SlotOfAvailabilityWeeklyInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityWeekly>(
      action: 'findUniqueSlotOfAvailabilityWeeklyOrThrow',
      result: result,
      factory: (e) => _i2.SlotOfAvailabilityWeekly.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityWeekly?> findFirst({
    _i3.SlotOfAvailabilityWeeklyWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAvailabilityWeeklyOrderByWithRelationInput>,
      _i3.SlotOfAvailabilityWeeklyOrderByWithRelationInput
    >?
    orderBy,
    _i3.SlotOfAvailabilityWeeklyWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SlotOfAvailabilityWeeklyScalar,
      Iterable<_i3.SlotOfAvailabilityWeeklyScalar>
    >?
    distinct,
    _i3.SlotOfAvailabilityWeeklySelect? select,
    _i3.SlotOfAvailabilityWeeklyInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityWeekly?>(
      action: 'findFirstSlotOfAvailabilityWeekly',
      result: result,
      factory: (e) =>
          e != null ? _i2.SlotOfAvailabilityWeekly.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityWeekly> findFirstOrThrow({
    _i3.SlotOfAvailabilityWeeklyWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAvailabilityWeeklyOrderByWithRelationInput>,
      _i3.SlotOfAvailabilityWeeklyOrderByWithRelationInput
    >?
    orderBy,
    _i3.SlotOfAvailabilityWeeklyWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SlotOfAvailabilityWeeklyScalar,
      Iterable<_i3.SlotOfAvailabilityWeeklyScalar>
    >?
    distinct,
    _i3.SlotOfAvailabilityWeeklySelect? select,
    _i3.SlotOfAvailabilityWeeklyInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityWeekly>(
      action: 'findFirstSlotOfAvailabilityWeeklyOrThrow',
      result: result,
      factory: (e) => _i2.SlotOfAvailabilityWeekly.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.SlotOfAvailabilityWeekly>> findMany({
    _i3.SlotOfAvailabilityWeeklyWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAvailabilityWeeklyOrderByWithRelationInput>,
      _i3.SlotOfAvailabilityWeeklyOrderByWithRelationInput
    >?
    orderBy,
    _i3.SlotOfAvailabilityWeeklyWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SlotOfAvailabilityWeeklyScalar,
      Iterable<_i3.SlotOfAvailabilityWeeklyScalar>
    >?
    distinct,
    _i3.SlotOfAvailabilityWeeklySelect? select,
    _i3.SlotOfAvailabilityWeeklyInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.SlotOfAvailabilityWeekly>>(
      action: 'findManySlotOfAvailabilityWeekly',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i2.SlotOfAvailabilityWeekly.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityWeekly> create({
    required _i1.PrismaUnion<
      _i3.SlotOfAvailabilityWeeklyCreateInput,
      _i3.SlotOfAvailabilityWeeklyUncheckedCreateInput
    >
    data,
    _i3.SlotOfAvailabilityWeeklySelect? select,
    _i3.SlotOfAvailabilityWeeklyInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityWeekly>(
      action: 'createOneSlotOfAvailabilityWeekly',
      result: result,
      factory: (e) => _i2.SlotOfAvailabilityWeekly.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.SlotOfAvailabilityWeeklyCreateManyInput,
      Iterable<_i3.SlotOfAvailabilityWeeklyCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManySlotOfAvailabilityWeekly',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityWeekly?> update({
    required _i1.PrismaUnion<
      _i3.SlotOfAvailabilityWeeklyUpdateInput,
      _i3.SlotOfAvailabilityWeeklyUncheckedUpdateInput
    >
    data,
    required _i3.SlotOfAvailabilityWeeklyWhereUniqueInput where,
    _i3.SlotOfAvailabilityWeeklySelect? select,
    _i3.SlotOfAvailabilityWeeklyInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityWeekly?>(
      action: 'updateOneSlotOfAvailabilityWeekly',
      result: result,
      factory: (e) =>
          e != null ? _i2.SlotOfAvailabilityWeekly.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.SlotOfAvailabilityWeeklyUpdateManyMutationInput,
      _i3.SlotOfAvailabilityWeeklyUncheckedUpdateManyInput
    >
    data,
    _i3.SlotOfAvailabilityWeeklyWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManySlotOfAvailabilityWeekly',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityWeekly> upsert({
    required _i3.SlotOfAvailabilityWeeklyWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.SlotOfAvailabilityWeeklyCreateInput,
      _i3.SlotOfAvailabilityWeeklyUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.SlotOfAvailabilityWeeklyUpdateInput,
      _i3.SlotOfAvailabilityWeeklyUncheckedUpdateInput
    >
    update,
    _i3.SlotOfAvailabilityWeeklySelect? select,
    _i3.SlotOfAvailabilityWeeklyInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityWeekly>(
      action: 'upsertOneSlotOfAvailabilityWeekly',
      result: result,
      factory: (e) => _i2.SlotOfAvailabilityWeekly.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityWeekly?> delete({
    required _i3.SlotOfAvailabilityWeeklyWhereUniqueInput where,
    _i3.SlotOfAvailabilityWeeklySelect? select,
    _i3.SlotOfAvailabilityWeeklyInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityWeekly?>(
      action: 'deleteOneSlotOfAvailabilityWeekly',
      result: result,
      factory: (e) =>
          e != null ? _i2.SlotOfAvailabilityWeekly.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.SlotOfAvailabilityWeeklyWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManySlotOfAvailabilityWeekly',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.SlotOfAvailabilityWeeklyGroupByOutputType>>
  groupBy({
    _i3.SlotOfAvailabilityWeeklyWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAvailabilityWeeklyOrderByWithAggregationInput>,
      _i3.SlotOfAvailabilityWeeklyOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.SlotOfAvailabilityWeeklyScalar>,
      _i3.SlotOfAvailabilityWeeklyScalar
    >
    by,
    _i3.SlotOfAvailabilityWeeklyScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.SlotOfAvailabilityWeeklyGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
      Iterable<_i3.SlotOfAvailabilityWeeklyGroupByOutputType>
    >(
      action: 'groupBySlotOfAvailabilityWeekly',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.SlotOfAvailabilityWeeklyGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateSlotOfAvailabilityWeekly> aggregate({
    _i3.SlotOfAvailabilityWeeklyWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAvailabilityWeeklyOrderByWithRelationInput>,
      _i3.SlotOfAvailabilityWeeklyOrderByWithRelationInput
    >?
    orderBy,
    _i3.SlotOfAvailabilityWeeklyWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateSlotOfAvailabilityWeeklySelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityWeekly',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateSlotOfAvailabilityWeekly>(
      action: 'aggregateSlotOfAvailabilityWeekly',
      result: result,
      factory: (e) => _i3.AggregateSlotOfAvailabilityWeekly.fromJson(e),
    );
  }
}

class SlotOfAvailabilityCustomDelegate {
  const SlotOfAvailabilityCustomDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.SlotOfAvailabilityCustom?> findUnique({
    required _i3.SlotOfAvailabilityCustomWhereUniqueInput where,
    _i3.SlotOfAvailabilityCustomSelect? select,
    _i3.SlotOfAvailabilityCustomInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityCustom?>(
      action: 'findUniqueSlotOfAvailabilityCustom',
      result: result,
      factory: (e) =>
          e != null ? _i2.SlotOfAvailabilityCustom.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityCustom> findUniqueOrThrow({
    required _i3.SlotOfAvailabilityCustomWhereUniqueInput where,
    _i3.SlotOfAvailabilityCustomSelect? select,
    _i3.SlotOfAvailabilityCustomInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityCustom>(
      action: 'findUniqueSlotOfAvailabilityCustomOrThrow',
      result: result,
      factory: (e) => _i2.SlotOfAvailabilityCustom.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityCustom?> findFirst({
    _i3.SlotOfAvailabilityCustomWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAvailabilityCustomOrderByWithRelationInput>,
      _i3.SlotOfAvailabilityCustomOrderByWithRelationInput
    >?
    orderBy,
    _i3.SlotOfAvailabilityCustomWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SlotOfAvailabilityCustomScalar,
      Iterable<_i3.SlotOfAvailabilityCustomScalar>
    >?
    distinct,
    _i3.SlotOfAvailabilityCustomSelect? select,
    _i3.SlotOfAvailabilityCustomInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityCustom?>(
      action: 'findFirstSlotOfAvailabilityCustom',
      result: result,
      factory: (e) =>
          e != null ? _i2.SlotOfAvailabilityCustom.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityCustom> findFirstOrThrow({
    _i3.SlotOfAvailabilityCustomWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAvailabilityCustomOrderByWithRelationInput>,
      _i3.SlotOfAvailabilityCustomOrderByWithRelationInput
    >?
    orderBy,
    _i3.SlotOfAvailabilityCustomWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SlotOfAvailabilityCustomScalar,
      Iterable<_i3.SlotOfAvailabilityCustomScalar>
    >?
    distinct,
    _i3.SlotOfAvailabilityCustomSelect? select,
    _i3.SlotOfAvailabilityCustomInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityCustom>(
      action: 'findFirstSlotOfAvailabilityCustomOrThrow',
      result: result,
      factory: (e) => _i2.SlotOfAvailabilityCustom.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.SlotOfAvailabilityCustom>> findMany({
    _i3.SlotOfAvailabilityCustomWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAvailabilityCustomOrderByWithRelationInput>,
      _i3.SlotOfAvailabilityCustomOrderByWithRelationInput
    >?
    orderBy,
    _i3.SlotOfAvailabilityCustomWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SlotOfAvailabilityCustomScalar,
      Iterable<_i3.SlotOfAvailabilityCustomScalar>
    >?
    distinct,
    _i3.SlotOfAvailabilityCustomSelect? select,
    _i3.SlotOfAvailabilityCustomInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.SlotOfAvailabilityCustom>>(
      action: 'findManySlotOfAvailabilityCustom',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i2.SlotOfAvailabilityCustom.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityCustom> create({
    required _i1.PrismaUnion<
      _i3.SlotOfAvailabilityCustomCreateInput,
      _i3.SlotOfAvailabilityCustomUncheckedCreateInput
    >
    data,
    _i3.SlotOfAvailabilityCustomSelect? select,
    _i3.SlotOfAvailabilityCustomInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityCustom>(
      action: 'createOneSlotOfAvailabilityCustom',
      result: result,
      factory: (e) => _i2.SlotOfAvailabilityCustom.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.SlotOfAvailabilityCustomCreateManyInput,
      Iterable<_i3.SlotOfAvailabilityCustomCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManySlotOfAvailabilityCustom',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityCustom?> update({
    required _i1.PrismaUnion<
      _i3.SlotOfAvailabilityCustomUpdateInput,
      _i3.SlotOfAvailabilityCustomUncheckedUpdateInput
    >
    data,
    required _i3.SlotOfAvailabilityCustomWhereUniqueInput where,
    _i3.SlotOfAvailabilityCustomSelect? select,
    _i3.SlotOfAvailabilityCustomInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityCustom?>(
      action: 'updateOneSlotOfAvailabilityCustom',
      result: result,
      factory: (e) =>
          e != null ? _i2.SlotOfAvailabilityCustom.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.SlotOfAvailabilityCustomUpdateManyMutationInput,
      _i3.SlotOfAvailabilityCustomUncheckedUpdateManyInput
    >
    data,
    _i3.SlotOfAvailabilityCustomWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManySlotOfAvailabilityCustom',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityCustom> upsert({
    required _i3.SlotOfAvailabilityCustomWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.SlotOfAvailabilityCustomCreateInput,
      _i3.SlotOfAvailabilityCustomUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.SlotOfAvailabilityCustomUpdateInput,
      _i3.SlotOfAvailabilityCustomUncheckedUpdateInput
    >
    update,
    _i3.SlotOfAvailabilityCustomSelect? select,
    _i3.SlotOfAvailabilityCustomInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityCustom>(
      action: 'upsertOneSlotOfAvailabilityCustom',
      result: result,
      factory: (e) => _i2.SlotOfAvailabilityCustom.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SlotOfAvailabilityCustom?> delete({
    required _i3.SlotOfAvailabilityCustomWhereUniqueInput where,
    _i3.SlotOfAvailabilityCustomSelect? select,
    _i3.SlotOfAvailabilityCustomInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAvailabilityCustom?>(
      action: 'deleteOneSlotOfAvailabilityCustom',
      result: result,
      factory: (e) =>
          e != null ? _i2.SlotOfAvailabilityCustom.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.SlotOfAvailabilityCustomWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManySlotOfAvailabilityCustom',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.SlotOfAvailabilityCustomGroupByOutputType>>
  groupBy({
    _i3.SlotOfAvailabilityCustomWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAvailabilityCustomOrderByWithAggregationInput>,
      _i3.SlotOfAvailabilityCustomOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.SlotOfAvailabilityCustomScalar>,
      _i3.SlotOfAvailabilityCustomScalar
    >
    by,
    _i3.SlotOfAvailabilityCustomScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.SlotOfAvailabilityCustomGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
      Iterable<_i3.SlotOfAvailabilityCustomGroupByOutputType>
    >(
      action: 'groupBySlotOfAvailabilityCustom',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.SlotOfAvailabilityCustomGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateSlotOfAvailabilityCustom> aggregate({
    _i3.SlotOfAvailabilityCustomWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAvailabilityCustomOrderByWithRelationInput>,
      _i3.SlotOfAvailabilityCustomOrderByWithRelationInput
    >?
    orderBy,
    _i3.SlotOfAvailabilityCustomWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateSlotOfAvailabilityCustomSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAvailabilityCustom',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateSlotOfAvailabilityCustom>(
      action: 'aggregateSlotOfAvailabilityCustom',
      result: result,
      factory: (e) => _i3.AggregateSlotOfAvailabilityCustom.fromJson(e),
    );
  }
}

class SlotOfAppointmentDelegate {
  const SlotOfAppointmentDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.SlotOfAppointment?> findUnique({
    required _i3.SlotOfAppointmentWhereUniqueInput where,
    _i3.SlotOfAppointmentSelect? select,
    _i3.SlotOfAppointmentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAppointment?>(
      action: 'findUniqueSlotOfAppointment',
      result: result,
      factory: (e) => e != null ? _i2.SlotOfAppointment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SlotOfAppointment> findUniqueOrThrow({
    required _i3.SlotOfAppointmentWhereUniqueInput where,
    _i3.SlotOfAppointmentSelect? select,
    _i3.SlotOfAppointmentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAppointment>(
      action: 'findUniqueSlotOfAppointmentOrThrow',
      result: result,
      factory: (e) => _i2.SlotOfAppointment.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SlotOfAppointment?> findFirst({
    _i3.SlotOfAppointmentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAppointmentOrderByWithRelationInput>,
      _i3.SlotOfAppointmentOrderByWithRelationInput
    >?
    orderBy,
    _i3.SlotOfAppointmentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SlotOfAppointmentScalar,
      Iterable<_i3.SlotOfAppointmentScalar>
    >?
    distinct,
    _i3.SlotOfAppointmentSelect? select,
    _i3.SlotOfAppointmentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAppointment?>(
      action: 'findFirstSlotOfAppointment',
      result: result,
      factory: (e) => e != null ? _i2.SlotOfAppointment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SlotOfAppointment> findFirstOrThrow({
    _i3.SlotOfAppointmentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAppointmentOrderByWithRelationInput>,
      _i3.SlotOfAppointmentOrderByWithRelationInput
    >?
    orderBy,
    _i3.SlotOfAppointmentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SlotOfAppointmentScalar,
      Iterable<_i3.SlotOfAppointmentScalar>
    >?
    distinct,
    _i3.SlotOfAppointmentSelect? select,
    _i3.SlotOfAppointmentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAppointment>(
      action: 'findFirstSlotOfAppointmentOrThrow',
      result: result,
      factory: (e) => _i2.SlotOfAppointment.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.SlotOfAppointment>> findMany({
    _i3.SlotOfAppointmentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAppointmentOrderByWithRelationInput>,
      _i3.SlotOfAppointmentOrderByWithRelationInput
    >?
    orderBy,
    _i3.SlotOfAppointmentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SlotOfAppointmentScalar,
      Iterable<_i3.SlotOfAppointmentScalar>
    >?
    distinct,
    _i3.SlotOfAppointmentSelect? select,
    _i3.SlotOfAppointmentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.SlotOfAppointment>>(
      action: 'findManySlotOfAppointment',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.SlotOfAppointment.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.SlotOfAppointment> create({
    required _i1.PrismaUnion<
      _i3.SlotOfAppointmentCreateInput,
      _i3.SlotOfAppointmentUncheckedCreateInput
    >
    data,
    _i3.SlotOfAppointmentSelect? select,
    _i3.SlotOfAppointmentInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAppointment>(
      action: 'createOneSlotOfAppointment',
      result: result,
      factory: (e) => _i2.SlotOfAppointment.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.SlotOfAppointmentCreateManyInput,
      Iterable<_i3.SlotOfAppointmentCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManySlotOfAppointment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SlotOfAppointment?> update({
    required _i1.PrismaUnion<
      _i3.SlotOfAppointmentUpdateInput,
      _i3.SlotOfAppointmentUncheckedUpdateInput
    >
    data,
    required _i3.SlotOfAppointmentWhereUniqueInput where,
    _i3.SlotOfAppointmentSelect? select,
    _i3.SlotOfAppointmentInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAppointment?>(
      action: 'updateOneSlotOfAppointment',
      result: result,
      factory: (e) => e != null ? _i2.SlotOfAppointment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.SlotOfAppointmentUpdateManyMutationInput,
      _i3.SlotOfAppointmentUncheckedUpdateManyInput
    >
    data,
    _i3.SlotOfAppointmentWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManySlotOfAppointment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SlotOfAppointment> upsert({
    required _i3.SlotOfAppointmentWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.SlotOfAppointmentCreateInput,
      _i3.SlotOfAppointmentUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.SlotOfAppointmentUpdateInput,
      _i3.SlotOfAppointmentUncheckedUpdateInput
    >
    update,
    _i3.SlotOfAppointmentSelect? select,
    _i3.SlotOfAppointmentInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAppointment>(
      action: 'upsertOneSlotOfAppointment',
      result: result,
      factory: (e) => _i2.SlotOfAppointment.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SlotOfAppointment?> delete({
    required _i3.SlotOfAppointmentWhereUniqueInput where,
    _i3.SlotOfAppointmentSelect? select,
    _i3.SlotOfAppointmentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SlotOfAppointment?>(
      action: 'deleteOneSlotOfAppointment',
      result: result,
      factory: (e) => e != null ? _i2.SlotOfAppointment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.SlotOfAppointmentWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManySlotOfAppointment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.SlotOfAppointmentGroupByOutputType>> groupBy({
    _i3.SlotOfAppointmentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAppointmentOrderByWithAggregationInput>,
      _i3.SlotOfAppointmentOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.SlotOfAppointmentScalar>,
      _i3.SlotOfAppointmentScalar
    >
    by,
    _i3.SlotOfAppointmentScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.SlotOfAppointmentGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.SlotOfAppointmentGroupByOutputType>>(
      action: 'groupBySlotOfAppointment',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.SlotOfAppointmentGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateSlotOfAppointment> aggregate({
    _i3.SlotOfAppointmentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SlotOfAppointmentOrderByWithRelationInput>,
      _i3.SlotOfAppointmentOrderByWithRelationInput
    >?
    orderBy,
    _i3.SlotOfAppointmentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateSlotOfAppointmentSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SlotOfAppointment',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateSlotOfAppointment>(
      action: 'aggregateSlotOfAppointment',
      result: result,
      factory: (e) => _i3.AggregateSlotOfAppointment.fromJson(e),
    );
  }
}

class ConsultationPlanDelegate {
  const ConsultationPlanDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.ConsultationPlan?> findUnique({
    required _i3.ConsultationPlanWhereUniqueInput where,
    _i3.ConsultationPlanSelect? select,
    _i3.ConsultationPlanInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultationPlan?>(
      action: 'findUniqueConsultationPlan',
      result: result,
      factory: (e) => e != null ? _i2.ConsultationPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ConsultationPlan> findUniqueOrThrow({
    required _i3.ConsultationPlanWhereUniqueInput where,
    _i3.ConsultationPlanSelect? select,
    _i3.ConsultationPlanInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultationPlan>(
      action: 'findUniqueConsultationPlanOrThrow',
      result: result,
      factory: (e) => _i2.ConsultationPlan.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsultationPlan?> findFirst({
    _i3.ConsultationPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultationPlanOrderByWithRelationInput>,
      _i3.ConsultationPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultationPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.ConsultationPlanScalar,
      Iterable<_i3.ConsultationPlanScalar>
    >?
    distinct,
    _i3.ConsultationPlanSelect? select,
    _i3.ConsultationPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultationPlan?>(
      action: 'findFirstConsultationPlan',
      result: result,
      factory: (e) => e != null ? _i2.ConsultationPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ConsultationPlan> findFirstOrThrow({
    _i3.ConsultationPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultationPlanOrderByWithRelationInput>,
      _i3.ConsultationPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultationPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.ConsultationPlanScalar,
      Iterable<_i3.ConsultationPlanScalar>
    >?
    distinct,
    _i3.ConsultationPlanSelect? select,
    _i3.ConsultationPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultationPlan>(
      action: 'findFirstConsultationPlanOrThrow',
      result: result,
      factory: (e) => _i2.ConsultationPlan.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.ConsultationPlan>> findMany({
    _i3.ConsultationPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultationPlanOrderByWithRelationInput>,
      _i3.ConsultationPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultationPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.ConsultationPlanScalar,
      Iterable<_i3.ConsultationPlanScalar>
    >?
    distinct,
    _i3.ConsultationPlanSelect? select,
    _i3.ConsultationPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.ConsultationPlan>>(
      action: 'findManyConsultationPlan',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.ConsultationPlan.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ConsultationPlan> create({
    required _i1.PrismaUnion<
      _i3.ConsultationPlanCreateInput,
      _i3.ConsultationPlanUncheckedCreateInput
    >
    data,
    _i3.ConsultationPlanSelect? select,
    _i3.ConsultationPlanInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultationPlan>(
      action: 'createOneConsultationPlan',
      result: result,
      factory: (e) => _i2.ConsultationPlan.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.ConsultationPlanCreateManyInput,
      Iterable<_i3.ConsultationPlanCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyConsultationPlan',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsultationPlan?> update({
    required _i1.PrismaUnion<
      _i3.ConsultationPlanUpdateInput,
      _i3.ConsultationPlanUncheckedUpdateInput
    >
    data,
    required _i3.ConsultationPlanWhereUniqueInput where,
    _i3.ConsultationPlanSelect? select,
    _i3.ConsultationPlanInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultationPlan?>(
      action: 'updateOneConsultationPlan',
      result: result,
      factory: (e) => e != null ? _i2.ConsultationPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.ConsultationPlanUpdateManyMutationInput,
      _i3.ConsultationPlanUncheckedUpdateManyInput
    >
    data,
    _i3.ConsultationPlanWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyConsultationPlan',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsultationPlan> upsert({
    required _i3.ConsultationPlanWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.ConsultationPlanCreateInput,
      _i3.ConsultationPlanUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.ConsultationPlanUpdateInput,
      _i3.ConsultationPlanUncheckedUpdateInput
    >
    update,
    _i3.ConsultationPlanSelect? select,
    _i3.ConsultationPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultationPlan>(
      action: 'upsertOneConsultationPlan',
      result: result,
      factory: (e) => _i2.ConsultationPlan.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ConsultationPlan?> delete({
    required _i3.ConsultationPlanWhereUniqueInput where,
    _i3.ConsultationPlanSelect? select,
    _i3.ConsultationPlanInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ConsultationPlan?>(
      action: 'deleteOneConsultationPlan',
      result: result,
      factory: (e) => e != null ? _i2.ConsultationPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.ConsultationPlanWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyConsultationPlan',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ConsultationPlanGroupByOutputType>> groupBy({
    _i3.ConsultationPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultationPlanOrderByWithAggregationInput>,
      _i3.ConsultationPlanOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.ConsultationPlanScalar>,
      _i3.ConsultationPlanScalar
    >
    by,
    _i3.ConsultationPlanScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ConsultationPlanGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ConsultationPlanGroupByOutputType>>(
      action: 'groupByConsultationPlan',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.ConsultationPlanGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateConsultationPlan> aggregate({
    _i3.ConsultationPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultationPlanOrderByWithRelationInput>,
      _i3.ConsultationPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultationPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateConsultationPlanSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ConsultationPlan',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateConsultationPlan>(
      action: 'aggregateConsultationPlan',
      result: result,
      factory: (e) => _i3.AggregateConsultationPlan.fromJson(e),
    );
  }
}

class ConsultationDelegate {
  const ConsultationDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Consultation?> findUnique({
    required _i3.ConsultationWhereUniqueInput where,
    _i3.ConsultationSelect? select,
    _i3.ConsultationInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Consultation?>(
      action: 'findUniqueConsultation',
      result: result,
      factory: (e) => e != null ? _i2.Consultation.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Consultation> findUniqueOrThrow({
    required _i3.ConsultationWhereUniqueInput where,
    _i3.ConsultationSelect? select,
    _i3.ConsultationInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Consultation>(
      action: 'findUniqueConsultationOrThrow',
      result: result,
      factory: (e) => _i2.Consultation.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Consultation?> findFirst({
    _i3.ConsultationWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultationOrderByWithRelationInput>,
      _i3.ConsultationOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultationWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ConsultationScalar, Iterable<_i3.ConsultationScalar>>?
    distinct,
    _i3.ConsultationSelect? select,
    _i3.ConsultationInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Consultation?>(
      action: 'findFirstConsultation',
      result: result,
      factory: (e) => e != null ? _i2.Consultation.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Consultation> findFirstOrThrow({
    _i3.ConsultationWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultationOrderByWithRelationInput>,
      _i3.ConsultationOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultationWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ConsultationScalar, Iterable<_i3.ConsultationScalar>>?
    distinct,
    _i3.ConsultationSelect? select,
    _i3.ConsultationInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Consultation>(
      action: 'findFirstConsultationOrThrow',
      result: result,
      factory: (e) => _i2.Consultation.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Consultation>> findMany({
    _i3.ConsultationWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultationOrderByWithRelationInput>,
      _i3.ConsultationOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultationWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ConsultationScalar, Iterable<_i3.ConsultationScalar>>?
    distinct,
    _i3.ConsultationSelect? select,
    _i3.ConsultationInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Consultation>>(
      action: 'findManyConsultation',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Consultation.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Consultation> create({
    required _i1.PrismaUnion<
      _i3.ConsultationCreateInput,
      _i3.ConsultationUncheckedCreateInput
    >
    data,
    _i3.ConsultationSelect? select,
    _i3.ConsultationInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Consultation>(
      action: 'createOneConsultation',
      result: result,
      factory: (e) => _i2.Consultation.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.ConsultationCreateManyInput,
      Iterable<_i3.ConsultationCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyConsultation',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Consultation?> update({
    required _i1.PrismaUnion<
      _i3.ConsultationUpdateInput,
      _i3.ConsultationUncheckedUpdateInput
    >
    data,
    required _i3.ConsultationWhereUniqueInput where,
    _i3.ConsultationSelect? select,
    _i3.ConsultationInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Consultation?>(
      action: 'updateOneConsultation',
      result: result,
      factory: (e) => e != null ? _i2.Consultation.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.ConsultationUpdateManyMutationInput,
      _i3.ConsultationUncheckedUpdateManyInput
    >
    data,
    _i3.ConsultationWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyConsultation',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Consultation> upsert({
    required _i3.ConsultationWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.ConsultationCreateInput,
      _i3.ConsultationUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.ConsultationUpdateInput,
      _i3.ConsultationUncheckedUpdateInput
    >
    update,
    _i3.ConsultationSelect? select,
    _i3.ConsultationInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Consultation>(
      action: 'upsertOneConsultation',
      result: result,
      factory: (e) => _i2.Consultation.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Consultation?> delete({
    required _i3.ConsultationWhereUniqueInput where,
    _i3.ConsultationSelect? select,
    _i3.ConsultationInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Consultation?>(
      action: 'deleteOneConsultation',
      result: result,
      factory: (e) => e != null ? _i2.Consultation.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.ConsultationWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyConsultation',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ConsultationGroupByOutputType>> groupBy({
    _i3.ConsultationWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultationOrderByWithAggregationInput>,
      _i3.ConsultationOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.ConsultationScalar>,
      _i3.ConsultationScalar
    >
    by,
    _i3.ConsultationScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ConsultationGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ConsultationGroupByOutputType>>(
      action: 'groupByConsultation',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.ConsultationGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateConsultation> aggregate({
    _i3.ConsultationWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ConsultationOrderByWithRelationInput>,
      _i3.ConsultationOrderByWithRelationInput
    >?
    orderBy,
    _i3.ConsultationWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateConsultationSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Consultation',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateConsultation>(
      action: 'aggregateConsultation',
      result: result,
      factory: (e) => _i3.AggregateConsultation.fromJson(e),
    );
  }
}

class SubscriptionPlanDelegate {
  const SubscriptionPlanDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.SubscriptionPlan?> findUnique({
    required _i3.SubscriptionPlanWhereUniqueInput where,
    _i3.SubscriptionPlanSelect? select,
    _i3.SubscriptionPlanInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubscriptionPlan?>(
      action: 'findUniqueSubscriptionPlan',
      result: result,
      factory: (e) => e != null ? _i2.SubscriptionPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SubscriptionPlan> findUniqueOrThrow({
    required _i3.SubscriptionPlanWhereUniqueInput where,
    _i3.SubscriptionPlanSelect? select,
    _i3.SubscriptionPlanInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubscriptionPlan>(
      action: 'findUniqueSubscriptionPlanOrThrow',
      result: result,
      factory: (e) => _i2.SubscriptionPlan.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SubscriptionPlan?> findFirst({
    _i3.SubscriptionPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubscriptionPlanOrderByWithRelationInput>,
      _i3.SubscriptionPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.SubscriptionPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SubscriptionPlanScalar,
      Iterable<_i3.SubscriptionPlanScalar>
    >?
    distinct,
    _i3.SubscriptionPlanSelect? select,
    _i3.SubscriptionPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubscriptionPlan?>(
      action: 'findFirstSubscriptionPlan',
      result: result,
      factory: (e) => e != null ? _i2.SubscriptionPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.SubscriptionPlan> findFirstOrThrow({
    _i3.SubscriptionPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubscriptionPlanOrderByWithRelationInput>,
      _i3.SubscriptionPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.SubscriptionPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SubscriptionPlanScalar,
      Iterable<_i3.SubscriptionPlanScalar>
    >?
    distinct,
    _i3.SubscriptionPlanSelect? select,
    _i3.SubscriptionPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubscriptionPlan>(
      action: 'findFirstSubscriptionPlanOrThrow',
      result: result,
      factory: (e) => _i2.SubscriptionPlan.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.SubscriptionPlan>> findMany({
    _i3.SubscriptionPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubscriptionPlanOrderByWithRelationInput>,
      _i3.SubscriptionPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.SubscriptionPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.SubscriptionPlanScalar,
      Iterable<_i3.SubscriptionPlanScalar>
    >?
    distinct,
    _i3.SubscriptionPlanSelect? select,
    _i3.SubscriptionPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.SubscriptionPlan>>(
      action: 'findManySubscriptionPlan',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.SubscriptionPlan.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.SubscriptionPlan> create({
    required _i1.PrismaUnion<
      _i3.SubscriptionPlanCreateInput,
      _i3.SubscriptionPlanUncheckedCreateInput
    >
    data,
    _i3.SubscriptionPlanSelect? select,
    _i3.SubscriptionPlanInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubscriptionPlan>(
      action: 'createOneSubscriptionPlan',
      result: result,
      factory: (e) => _i2.SubscriptionPlan.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.SubscriptionPlanCreateManyInput,
      Iterable<_i3.SubscriptionPlanCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManySubscriptionPlan',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SubscriptionPlan?> update({
    required _i1.PrismaUnion<
      _i3.SubscriptionPlanUpdateInput,
      _i3.SubscriptionPlanUncheckedUpdateInput
    >
    data,
    required _i3.SubscriptionPlanWhereUniqueInput where,
    _i3.SubscriptionPlanSelect? select,
    _i3.SubscriptionPlanInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubscriptionPlan?>(
      action: 'updateOneSubscriptionPlan',
      result: result,
      factory: (e) => e != null ? _i2.SubscriptionPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.SubscriptionPlanUpdateManyMutationInput,
      _i3.SubscriptionPlanUncheckedUpdateManyInput
    >
    data,
    _i3.SubscriptionPlanWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManySubscriptionPlan',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SubscriptionPlan> upsert({
    required _i3.SubscriptionPlanWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.SubscriptionPlanCreateInput,
      _i3.SubscriptionPlanUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.SubscriptionPlanUpdateInput,
      _i3.SubscriptionPlanUncheckedUpdateInput
    >
    update,
    _i3.SubscriptionPlanSelect? select,
    _i3.SubscriptionPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubscriptionPlan>(
      action: 'upsertOneSubscriptionPlan',
      result: result,
      factory: (e) => _i2.SubscriptionPlan.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.SubscriptionPlan?> delete({
    required _i3.SubscriptionPlanWhereUniqueInput where,
    _i3.SubscriptionPlanSelect? select,
    _i3.SubscriptionPlanInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.SubscriptionPlan?>(
      action: 'deleteOneSubscriptionPlan',
      result: result,
      factory: (e) => e != null ? _i2.SubscriptionPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.SubscriptionPlanWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManySubscriptionPlan',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.SubscriptionPlanGroupByOutputType>> groupBy({
    _i3.SubscriptionPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubscriptionPlanOrderByWithAggregationInput>,
      _i3.SubscriptionPlanOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.SubscriptionPlanScalar>,
      _i3.SubscriptionPlanScalar
    >
    by,
    _i3.SubscriptionPlanScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.SubscriptionPlanGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.SubscriptionPlanGroupByOutputType>>(
      action: 'groupBySubscriptionPlan',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.SubscriptionPlanGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateSubscriptionPlan> aggregate({
    _i3.SubscriptionPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubscriptionPlanOrderByWithRelationInput>,
      _i3.SubscriptionPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.SubscriptionPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateSubscriptionPlanSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'SubscriptionPlan',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateSubscriptionPlan>(
      action: 'aggregateSubscriptionPlan',
      result: result,
      factory: (e) => _i3.AggregateSubscriptionPlan.fromJson(e),
    );
  }
}

class SubscriptionDelegate {
  const SubscriptionDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Subscription?> findUnique({
    required _i3.SubscriptionWhereUniqueInput where,
    _i3.SubscriptionSelect? select,
    _i3.SubscriptionInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Subscription?>(
      action: 'findUniqueSubscription',
      result: result,
      factory: (e) => e != null ? _i2.Subscription.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Subscription> findUniqueOrThrow({
    required _i3.SubscriptionWhereUniqueInput where,
    _i3.SubscriptionSelect? select,
    _i3.SubscriptionInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Subscription>(
      action: 'findUniqueSubscriptionOrThrow',
      result: result,
      factory: (e) => _i2.Subscription.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Subscription?> findFirst({
    _i3.SubscriptionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubscriptionOrderByWithRelationInput>,
      _i3.SubscriptionOrderByWithRelationInput
    >?
    orderBy,
    _i3.SubscriptionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.SubscriptionScalar, Iterable<_i3.SubscriptionScalar>>?
    distinct,
    _i3.SubscriptionSelect? select,
    _i3.SubscriptionInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Subscription?>(
      action: 'findFirstSubscription',
      result: result,
      factory: (e) => e != null ? _i2.Subscription.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Subscription> findFirstOrThrow({
    _i3.SubscriptionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubscriptionOrderByWithRelationInput>,
      _i3.SubscriptionOrderByWithRelationInput
    >?
    orderBy,
    _i3.SubscriptionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.SubscriptionScalar, Iterable<_i3.SubscriptionScalar>>?
    distinct,
    _i3.SubscriptionSelect? select,
    _i3.SubscriptionInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Subscription>(
      action: 'findFirstSubscriptionOrThrow',
      result: result,
      factory: (e) => _i2.Subscription.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Subscription>> findMany({
    _i3.SubscriptionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubscriptionOrderByWithRelationInput>,
      _i3.SubscriptionOrderByWithRelationInput
    >?
    orderBy,
    _i3.SubscriptionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.SubscriptionScalar, Iterable<_i3.SubscriptionScalar>>?
    distinct,
    _i3.SubscriptionSelect? select,
    _i3.SubscriptionInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Subscription>>(
      action: 'findManySubscription',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Subscription.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Subscription> create({
    required _i1.PrismaUnion<
      _i3.SubscriptionCreateInput,
      _i3.SubscriptionUncheckedCreateInput
    >
    data,
    _i3.SubscriptionSelect? select,
    _i3.SubscriptionInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Subscription>(
      action: 'createOneSubscription',
      result: result,
      factory: (e) => _i2.Subscription.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.SubscriptionCreateManyInput,
      Iterable<_i3.SubscriptionCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManySubscription',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Subscription?> update({
    required _i1.PrismaUnion<
      _i3.SubscriptionUpdateInput,
      _i3.SubscriptionUncheckedUpdateInput
    >
    data,
    required _i3.SubscriptionWhereUniqueInput where,
    _i3.SubscriptionSelect? select,
    _i3.SubscriptionInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Subscription?>(
      action: 'updateOneSubscription',
      result: result,
      factory: (e) => e != null ? _i2.Subscription.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.SubscriptionUpdateManyMutationInput,
      _i3.SubscriptionUncheckedUpdateManyInput
    >
    data,
    _i3.SubscriptionWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManySubscription',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Subscription> upsert({
    required _i3.SubscriptionWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.SubscriptionCreateInput,
      _i3.SubscriptionUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.SubscriptionUpdateInput,
      _i3.SubscriptionUncheckedUpdateInput
    >
    update,
    _i3.SubscriptionSelect? select,
    _i3.SubscriptionInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Subscription>(
      action: 'upsertOneSubscription',
      result: result,
      factory: (e) => _i2.Subscription.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Subscription?> delete({
    required _i3.SubscriptionWhereUniqueInput where,
    _i3.SubscriptionSelect? select,
    _i3.SubscriptionInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Subscription?>(
      action: 'deleteOneSubscription',
      result: result,
      factory: (e) => e != null ? _i2.Subscription.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.SubscriptionWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManySubscription',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.SubscriptionGroupByOutputType>> groupBy({
    _i3.SubscriptionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubscriptionOrderByWithAggregationInput>,
      _i3.SubscriptionOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.SubscriptionScalar>,
      _i3.SubscriptionScalar
    >
    by,
    _i3.SubscriptionScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.SubscriptionGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.SubscriptionGroupByOutputType>>(
      action: 'groupBySubscription',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.SubscriptionGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateSubscription> aggregate({
    _i3.SubscriptionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.SubscriptionOrderByWithRelationInput>,
      _i3.SubscriptionOrderByWithRelationInput
    >?
    orderBy,
    _i3.SubscriptionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateSubscriptionSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Subscription',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateSubscription>(
      action: 'aggregateSubscription',
      result: result,
      factory: (e) => _i3.AggregateSubscription.fromJson(e),
    );
  }
}

class WebinarPlanDelegate {
  const WebinarPlanDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.WebinarPlan?> findUnique({
    required _i3.WebinarPlanWhereUniqueInput where,
    _i3.WebinarPlanSelect? select,
    _i3.WebinarPlanInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.WebinarPlan?>(
      action: 'findUniqueWebinarPlan',
      result: result,
      factory: (e) => e != null ? _i2.WebinarPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.WebinarPlan> findUniqueOrThrow({
    required _i3.WebinarPlanWhereUniqueInput where,
    _i3.WebinarPlanSelect? select,
    _i3.WebinarPlanInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.WebinarPlan>(
      action: 'findUniqueWebinarPlanOrThrow',
      result: result,
      factory: (e) => _i2.WebinarPlan.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.WebinarPlan?> findFirst({
    _i3.WebinarPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WebinarPlanOrderByWithRelationInput>,
      _i3.WebinarPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.WebinarPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.WebinarPlanScalar, Iterable<_i3.WebinarPlanScalar>>?
    distinct,
    _i3.WebinarPlanSelect? select,
    _i3.WebinarPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.WebinarPlan?>(
      action: 'findFirstWebinarPlan',
      result: result,
      factory: (e) => e != null ? _i2.WebinarPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.WebinarPlan> findFirstOrThrow({
    _i3.WebinarPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WebinarPlanOrderByWithRelationInput>,
      _i3.WebinarPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.WebinarPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.WebinarPlanScalar, Iterable<_i3.WebinarPlanScalar>>?
    distinct,
    _i3.WebinarPlanSelect? select,
    _i3.WebinarPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.WebinarPlan>(
      action: 'findFirstWebinarPlanOrThrow',
      result: result,
      factory: (e) => _i2.WebinarPlan.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.WebinarPlan>> findMany({
    _i3.WebinarPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WebinarPlanOrderByWithRelationInput>,
      _i3.WebinarPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.WebinarPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.WebinarPlanScalar, Iterable<_i3.WebinarPlanScalar>>?
    distinct,
    _i3.WebinarPlanSelect? select,
    _i3.WebinarPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.WebinarPlan>>(
      action: 'findManyWebinarPlan',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.WebinarPlan.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.WebinarPlan> create({
    required _i1.PrismaUnion<
      _i3.WebinarPlanCreateInput,
      _i3.WebinarPlanUncheckedCreateInput
    >
    data,
    _i3.WebinarPlanSelect? select,
    _i3.WebinarPlanInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.WebinarPlan>(
      action: 'createOneWebinarPlan',
      result: result,
      factory: (e) => _i2.WebinarPlan.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.WebinarPlanCreateManyInput,
      Iterable<_i3.WebinarPlanCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyWebinarPlan',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.WebinarPlan?> update({
    required _i1.PrismaUnion<
      _i3.WebinarPlanUpdateInput,
      _i3.WebinarPlanUncheckedUpdateInput
    >
    data,
    required _i3.WebinarPlanWhereUniqueInput where,
    _i3.WebinarPlanSelect? select,
    _i3.WebinarPlanInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.WebinarPlan?>(
      action: 'updateOneWebinarPlan',
      result: result,
      factory: (e) => e != null ? _i2.WebinarPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.WebinarPlanUpdateManyMutationInput,
      _i3.WebinarPlanUncheckedUpdateManyInput
    >
    data,
    _i3.WebinarPlanWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyWebinarPlan',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.WebinarPlan> upsert({
    required _i3.WebinarPlanWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.WebinarPlanCreateInput,
      _i3.WebinarPlanUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.WebinarPlanUpdateInput,
      _i3.WebinarPlanUncheckedUpdateInput
    >
    update,
    _i3.WebinarPlanSelect? select,
    _i3.WebinarPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.WebinarPlan>(
      action: 'upsertOneWebinarPlan',
      result: result,
      factory: (e) => _i2.WebinarPlan.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.WebinarPlan?> delete({
    required _i3.WebinarPlanWhereUniqueInput where,
    _i3.WebinarPlanSelect? select,
    _i3.WebinarPlanInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.WebinarPlan?>(
      action: 'deleteOneWebinarPlan',
      result: result,
      factory: (e) => e != null ? _i2.WebinarPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.WebinarPlanWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyWebinarPlan',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.WebinarPlanGroupByOutputType>> groupBy({
    _i3.WebinarPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WebinarPlanOrderByWithAggregationInput>,
      _i3.WebinarPlanOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.WebinarPlanScalar>,
      _i3.WebinarPlanScalar
    >
    by,
    _i3.WebinarPlanScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.WebinarPlanGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.WebinarPlanGroupByOutputType>>(
      action: 'groupByWebinarPlan',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.WebinarPlanGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateWebinarPlan> aggregate({
    _i3.WebinarPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WebinarPlanOrderByWithRelationInput>,
      _i3.WebinarPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.WebinarPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateWebinarPlanSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'WebinarPlan',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateWebinarPlan>(
      action: 'aggregateWebinarPlan',
      result: result,
      factory: (e) => _i3.AggregateWebinarPlan.fromJson(e),
    );
  }
}

class WebinarDelegate {
  const WebinarDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Webinar?> findUnique({
    required _i3.WebinarWhereUniqueInput where,
    _i3.WebinarSelect? select,
    _i3.WebinarInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Webinar?>(
      action: 'findUniqueWebinar',
      result: result,
      factory: (e) => e != null ? _i2.Webinar.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Webinar> findUniqueOrThrow({
    required _i3.WebinarWhereUniqueInput where,
    _i3.WebinarSelect? select,
    _i3.WebinarInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Webinar>(
      action: 'findUniqueWebinarOrThrow',
      result: result,
      factory: (e) => _i2.Webinar.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Webinar?> findFirst({
    _i3.WebinarWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WebinarOrderByWithRelationInput>,
      _i3.WebinarOrderByWithRelationInput
    >?
    orderBy,
    _i3.WebinarWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.WebinarScalar, Iterable<_i3.WebinarScalar>>? distinct,
    _i3.WebinarSelect? select,
    _i3.WebinarInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Webinar?>(
      action: 'findFirstWebinar',
      result: result,
      factory: (e) => e != null ? _i2.Webinar.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Webinar> findFirstOrThrow({
    _i3.WebinarWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WebinarOrderByWithRelationInput>,
      _i3.WebinarOrderByWithRelationInput
    >?
    orderBy,
    _i3.WebinarWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.WebinarScalar, Iterable<_i3.WebinarScalar>>? distinct,
    _i3.WebinarSelect? select,
    _i3.WebinarInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Webinar>(
      action: 'findFirstWebinarOrThrow',
      result: result,
      factory: (e) => _i2.Webinar.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Webinar>> findMany({
    _i3.WebinarWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WebinarOrderByWithRelationInput>,
      _i3.WebinarOrderByWithRelationInput
    >?
    orderBy,
    _i3.WebinarWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.WebinarScalar, Iterable<_i3.WebinarScalar>>? distinct,
    _i3.WebinarSelect? select,
    _i3.WebinarInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Webinar>>(
      action: 'findManyWebinar',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Webinar.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Webinar> create({
    required _i1.PrismaUnion<
      _i3.WebinarCreateInput,
      _i3.WebinarUncheckedCreateInput
    >
    data,
    _i3.WebinarSelect? select,
    _i3.WebinarInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Webinar>(
      action: 'createOneWebinar',
      result: result,
      factory: (e) => _i2.Webinar.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.WebinarCreateManyInput,
      Iterable<_i3.WebinarCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyWebinar',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Webinar?> update({
    required _i1.PrismaUnion<
      _i3.WebinarUpdateInput,
      _i3.WebinarUncheckedUpdateInput
    >
    data,
    required _i3.WebinarWhereUniqueInput where,
    _i3.WebinarSelect? select,
    _i3.WebinarInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Webinar?>(
      action: 'updateOneWebinar',
      result: result,
      factory: (e) => e != null ? _i2.Webinar.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.WebinarUpdateManyMutationInput,
      _i3.WebinarUncheckedUpdateManyInput
    >
    data,
    _i3.WebinarWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyWebinar',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Webinar> upsert({
    required _i3.WebinarWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.WebinarCreateInput,
      _i3.WebinarUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.WebinarUpdateInput,
      _i3.WebinarUncheckedUpdateInput
    >
    update,
    _i3.WebinarSelect? select,
    _i3.WebinarInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Webinar>(
      action: 'upsertOneWebinar',
      result: result,
      factory: (e) => _i2.Webinar.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Webinar?> delete({
    required _i3.WebinarWhereUniqueInput where,
    _i3.WebinarSelect? select,
    _i3.WebinarInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Webinar?>(
      action: 'deleteOneWebinar',
      result: result,
      factory: (e) => e != null ? _i2.Webinar.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.WebinarWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyWebinar',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.WebinarGroupByOutputType>> groupBy({
    _i3.WebinarWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WebinarOrderByWithAggregationInput>,
      _i3.WebinarOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.WebinarScalar>, _i3.WebinarScalar> by,
    _i3.WebinarScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.WebinarGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.WebinarGroupByOutputType>>(
      action: 'groupByWebinar',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.WebinarGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateWebinar> aggregate({
    _i3.WebinarWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WebinarOrderByWithRelationInput>,
      _i3.WebinarOrderByWithRelationInput
    >?
    orderBy,
    _i3.WebinarWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateWebinarSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Webinar',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateWebinar>(
      action: 'aggregateWebinar',
      result: result,
      factory: (e) => _i3.AggregateWebinar.fromJson(e),
    );
  }
}

class ClassPlanDelegate {
  const ClassPlanDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.ClassPlan?> findUnique({
    required _i3.ClassPlanWhereUniqueInput where,
    _i3.ClassPlanSelect? select,
    _i3.ClassPlanInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassPlan?>(
      action: 'findUniqueClassPlan',
      result: result,
      factory: (e) => e != null ? _i2.ClassPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ClassPlan> findUniqueOrThrow({
    required _i3.ClassPlanWhereUniqueInput where,
    _i3.ClassPlanSelect? select,
    _i3.ClassPlanInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassPlan>(
      action: 'findUniqueClassPlanOrThrow',
      result: result,
      factory: (e) => _i2.ClassPlan.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ClassPlan?> findFirst({
    _i3.ClassPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassPlanOrderByWithRelationInput>,
      _i3.ClassPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.ClassPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ClassPlanScalar, Iterable<_i3.ClassPlanScalar>>?
    distinct,
    _i3.ClassPlanSelect? select,
    _i3.ClassPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassPlan?>(
      action: 'findFirstClassPlan',
      result: result,
      factory: (e) => e != null ? _i2.ClassPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ClassPlan> findFirstOrThrow({
    _i3.ClassPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassPlanOrderByWithRelationInput>,
      _i3.ClassPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.ClassPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ClassPlanScalar, Iterable<_i3.ClassPlanScalar>>?
    distinct,
    _i3.ClassPlanSelect? select,
    _i3.ClassPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassPlan>(
      action: 'findFirstClassPlanOrThrow',
      result: result,
      factory: (e) => _i2.ClassPlan.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.ClassPlan>> findMany({
    _i3.ClassPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassPlanOrderByWithRelationInput>,
      _i3.ClassPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.ClassPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ClassPlanScalar, Iterable<_i3.ClassPlanScalar>>?
    distinct,
    _i3.ClassPlanSelect? select,
    _i3.ClassPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.ClassPlan>>(
      action: 'findManyClassPlan',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.ClassPlan.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ClassPlan> create({
    required _i1.PrismaUnion<
      _i3.ClassPlanCreateInput,
      _i3.ClassPlanUncheckedCreateInput
    >
    data,
    _i3.ClassPlanSelect? select,
    _i3.ClassPlanInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassPlan>(
      action: 'createOneClassPlan',
      result: result,
      factory: (e) => _i2.ClassPlan.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.ClassPlanCreateManyInput,
      Iterable<_i3.ClassPlanCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyClassPlan',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ClassPlan?> update({
    required _i1.PrismaUnion<
      _i3.ClassPlanUpdateInput,
      _i3.ClassPlanUncheckedUpdateInput
    >
    data,
    required _i3.ClassPlanWhereUniqueInput where,
    _i3.ClassPlanSelect? select,
    _i3.ClassPlanInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassPlan?>(
      action: 'updateOneClassPlan',
      result: result,
      factory: (e) => e != null ? _i2.ClassPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.ClassPlanUpdateManyMutationInput,
      _i3.ClassPlanUncheckedUpdateManyInput
    >
    data,
    _i3.ClassPlanWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyClassPlan',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ClassPlan> upsert({
    required _i3.ClassPlanWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.ClassPlanCreateInput,
      _i3.ClassPlanUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.ClassPlanUpdateInput,
      _i3.ClassPlanUncheckedUpdateInput
    >
    update,
    _i3.ClassPlanSelect? select,
    _i3.ClassPlanInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassPlan>(
      action: 'upsertOneClassPlan',
      result: result,
      factory: (e) => _i2.ClassPlan.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ClassPlan?> delete({
    required _i3.ClassPlanWhereUniqueInput where,
    _i3.ClassPlanSelect? select,
    _i3.ClassPlanInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassPlan?>(
      action: 'deleteOneClassPlan',
      result: result,
      factory: (e) => e != null ? _i2.ClassPlan.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.ClassPlanWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyClassPlan',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ClassPlanGroupByOutputType>> groupBy({
    _i3.ClassPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassPlanOrderByWithAggregationInput>,
      _i3.ClassPlanOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.ClassPlanScalar>, _i3.ClassPlanScalar>
    by,
    _i3.ClassPlanScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ClassPlanGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ClassPlanGroupByOutputType>>(
      action: 'groupByClassPlan',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.ClassPlanGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateClassPlan> aggregate({
    _i3.ClassPlanWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassPlanOrderByWithRelationInput>,
      _i3.ClassPlanOrderByWithRelationInput
    >?
    orderBy,
    _i3.ClassPlanWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateClassPlanSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassPlan',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateClassPlan>(
      action: 'aggregateClassPlan',
      result: result,
      factory: (e) => _i3.AggregateClassPlan.fromJson(e),
    );
  }
}

class ClassDelegate {
  const ClassDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Class?> findUnique({
    required _i3.ClassWhereUniqueInput where,
    _i3.ClassSelect? select,
    _i3.ClassInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Class?>(
      action: 'findUniqueClass',
      result: result,
      factory: (e) => e != null ? _i2.Class.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Class> findUniqueOrThrow({
    required _i3.ClassWhereUniqueInput where,
    _i3.ClassSelect? select,
    _i3.ClassInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Class>(
      action: 'findUniqueClassOrThrow',
      result: result,
      factory: (e) => _i2.Class.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Class?> findFirst({
    _i3.ClassWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassOrderByWithRelationInput>,
      _i3.ClassOrderByWithRelationInput
    >?
    orderBy,
    _i3.ClassWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ClassScalar, Iterable<_i3.ClassScalar>>? distinct,
    _i3.ClassSelect? select,
    _i3.ClassInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Class?>(
      action: 'findFirstClass',
      result: result,
      factory: (e) => e != null ? _i2.Class.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Class> findFirstOrThrow({
    _i3.ClassWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassOrderByWithRelationInput>,
      _i3.ClassOrderByWithRelationInput
    >?
    orderBy,
    _i3.ClassWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ClassScalar, Iterable<_i3.ClassScalar>>? distinct,
    _i3.ClassSelect? select,
    _i3.ClassInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Class>(
      action: 'findFirstClassOrThrow',
      result: result,
      factory: (e) => _i2.Class.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Class>> findMany({
    _i3.ClassWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassOrderByWithRelationInput>,
      _i3.ClassOrderByWithRelationInput
    >?
    orderBy,
    _i3.ClassWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ClassScalar, Iterable<_i3.ClassScalar>>? distinct,
    _i3.ClassSelect? select,
    _i3.ClassInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Class>>(
      action: 'findManyClass',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Class.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Class> create({
    required _i1.PrismaUnion<
      _i3.ClassCreateInput,
      _i3.ClassUncheckedCreateInput
    >
    data,
    _i3.ClassSelect? select,
    _i3.ClassInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Class>(
      action: 'createOneClass',
      result: result,
      factory: (e) => _i2.Class.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.ClassCreateManyInput,
      Iterable<_i3.ClassCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyClass',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Class?> update({
    required _i1.PrismaUnion<
      _i3.ClassUpdateInput,
      _i3.ClassUncheckedUpdateInput
    >
    data,
    required _i3.ClassWhereUniqueInput where,
    _i3.ClassSelect? select,
    _i3.ClassInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Class?>(
      action: 'updateOneClass',
      result: result,
      factory: (e) => e != null ? _i2.Class.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.ClassUpdateManyMutationInput,
      _i3.ClassUncheckedUpdateManyInput
    >
    data,
    _i3.ClassWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyClass',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Class> upsert({
    required _i3.ClassWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.ClassCreateInput,
      _i3.ClassUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.ClassUpdateInput,
      _i3.ClassUncheckedUpdateInput
    >
    update,
    _i3.ClassSelect? select,
    _i3.ClassInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Class>(
      action: 'upsertOneClass',
      result: result,
      factory: (e) => _i2.Class.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Class?> delete({
    required _i3.ClassWhereUniqueInput where,
    _i3.ClassSelect? select,
    _i3.ClassInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Class?>(
      action: 'deleteOneClass',
      result: result,
      factory: (e) => e != null ? _i2.Class.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.ClassWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyClass',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ClassGroupByOutputType>> groupBy({
    _i3.ClassWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassOrderByWithAggregationInput>,
      _i3.ClassOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.ClassScalar>, _i3.ClassScalar> by,
    _i3.ClassScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ClassGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ClassGroupByOutputType>>(
      action: 'groupByClass',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.ClassGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateClass> aggregate({
    _i3.ClassWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassOrderByWithRelationInput>,
      _i3.ClassOrderByWithRelationInput
    >?
    orderBy,
    _i3.ClassWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateClassSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Class',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateClass>(
      action: 'aggregateClass',
      result: result,
      factory: (e) => _i3.AggregateClass.fromJson(e),
    );
  }
}

class ClassContentDelegate {
  const ClassContentDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.ClassContent?> findUnique({
    required _i3.ClassContentWhereUniqueInput where,
    _i3.ClassContentSelect? select,
    _i3.ClassContentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassContent?>(
      action: 'findUniqueClassContent',
      result: result,
      factory: (e) => e != null ? _i2.ClassContent.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ClassContent> findUniqueOrThrow({
    required _i3.ClassContentWhereUniqueInput where,
    _i3.ClassContentSelect? select,
    _i3.ClassContentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassContent>(
      action: 'findUniqueClassContentOrThrow',
      result: result,
      factory: (e) => _i2.ClassContent.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ClassContent?> findFirst({
    _i3.ClassContentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassContentOrderByWithRelationInput>,
      _i3.ClassContentOrderByWithRelationInput
    >?
    orderBy,
    _i3.ClassContentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ClassContentScalar, Iterable<_i3.ClassContentScalar>>?
    distinct,
    _i3.ClassContentSelect? select,
    _i3.ClassContentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassContent?>(
      action: 'findFirstClassContent',
      result: result,
      factory: (e) => e != null ? _i2.ClassContent.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.ClassContent> findFirstOrThrow({
    _i3.ClassContentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassContentOrderByWithRelationInput>,
      _i3.ClassContentOrderByWithRelationInput
    >?
    orderBy,
    _i3.ClassContentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ClassContentScalar, Iterable<_i3.ClassContentScalar>>?
    distinct,
    _i3.ClassContentSelect? select,
    _i3.ClassContentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassContent>(
      action: 'findFirstClassContentOrThrow',
      result: result,
      factory: (e) => _i2.ClassContent.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.ClassContent>> findMany({
    _i3.ClassContentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassContentOrderByWithRelationInput>,
      _i3.ClassContentOrderByWithRelationInput
    >?
    orderBy,
    _i3.ClassContentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ClassContentScalar, Iterable<_i3.ClassContentScalar>>?
    distinct,
    _i3.ClassContentSelect? select,
    _i3.ClassContentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.ClassContent>>(
      action: 'findManyClassContent',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.ClassContent.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.ClassContent> create({
    required _i1.PrismaUnion<
      _i3.ClassContentCreateInput,
      _i3.ClassContentUncheckedCreateInput
    >
    data,
    _i3.ClassContentSelect? select,
    _i3.ClassContentInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassContent>(
      action: 'createOneClassContent',
      result: result,
      factory: (e) => _i2.ClassContent.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.ClassContentCreateManyInput,
      Iterable<_i3.ClassContentCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyClassContent',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ClassContent?> update({
    required _i1.PrismaUnion<
      _i3.ClassContentUpdateInput,
      _i3.ClassContentUncheckedUpdateInput
    >
    data,
    required _i3.ClassContentWhereUniqueInput where,
    _i3.ClassContentSelect? select,
    _i3.ClassContentInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassContent?>(
      action: 'updateOneClassContent',
      result: result,
      factory: (e) => e != null ? _i2.ClassContent.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.ClassContentUpdateManyMutationInput,
      _i3.ClassContentUncheckedUpdateManyInput
    >
    data,
    _i3.ClassContentWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyClassContent',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ClassContent> upsert({
    required _i3.ClassContentWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.ClassContentCreateInput,
      _i3.ClassContentUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.ClassContentUpdateInput,
      _i3.ClassContentUncheckedUpdateInput
    >
    update,
    _i3.ClassContentSelect? select,
    _i3.ClassContentInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassContent>(
      action: 'upsertOneClassContent',
      result: result,
      factory: (e) => _i2.ClassContent.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.ClassContent?> delete({
    required _i3.ClassContentWhereUniqueInput where,
    _i3.ClassContentSelect? select,
    _i3.ClassContentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.ClassContent?>(
      action: 'deleteOneClassContent',
      result: result,
      factory: (e) => e != null ? _i2.ClassContent.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.ClassContentWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyClassContent',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ClassContentGroupByOutputType>> groupBy({
    _i3.ClassContentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassContentOrderByWithAggregationInput>,
      _i3.ClassContentOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.ClassContentScalar>,
      _i3.ClassContentScalar
    >
    by,
    _i3.ClassContentScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ClassContentGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ClassContentGroupByOutputType>>(
      action: 'groupByClassContent',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.ClassContentGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateClassContent> aggregate({
    _i3.ClassContentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.ClassContentOrderByWithRelationInput>,
      _i3.ClassContentOrderByWithRelationInput
    >?
    orderBy,
    _i3.ClassContentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateClassContentSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'ClassContent',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateClassContent>(
      action: 'aggregateClassContent',
      result: result,
      factory: (e) => _i3.AggregateClassContent.fromJson(e),
    );
  }
}

class AppointmentDelegate {
  const AppointmentDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Appointment?> findUnique({
    required _i3.AppointmentWhereUniqueInput where,
    _i3.AppointmentSelect? select,
    _i3.AppointmentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Appointment?>(
      action: 'findUniqueAppointment',
      result: result,
      factory: (e) => e != null ? _i2.Appointment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Appointment> findUniqueOrThrow({
    required _i3.AppointmentWhereUniqueInput where,
    _i3.AppointmentSelect? select,
    _i3.AppointmentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Appointment>(
      action: 'findUniqueAppointmentOrThrow',
      result: result,
      factory: (e) => _i2.Appointment.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Appointment?> findFirst({
    _i3.AppointmentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.AppointmentOrderByWithRelationInput>,
      _i3.AppointmentOrderByWithRelationInput
    >?
    orderBy,
    _i3.AppointmentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AppointmentScalar, Iterable<_i3.AppointmentScalar>>?
    distinct,
    _i3.AppointmentSelect? select,
    _i3.AppointmentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Appointment?>(
      action: 'findFirstAppointment',
      result: result,
      factory: (e) => e != null ? _i2.Appointment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Appointment> findFirstOrThrow({
    _i3.AppointmentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.AppointmentOrderByWithRelationInput>,
      _i3.AppointmentOrderByWithRelationInput
    >?
    orderBy,
    _i3.AppointmentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AppointmentScalar, Iterable<_i3.AppointmentScalar>>?
    distinct,
    _i3.AppointmentSelect? select,
    _i3.AppointmentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Appointment>(
      action: 'findFirstAppointmentOrThrow',
      result: result,
      factory: (e) => _i2.Appointment.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Appointment>> findMany({
    _i3.AppointmentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.AppointmentOrderByWithRelationInput>,
      _i3.AppointmentOrderByWithRelationInput
    >?
    orderBy,
    _i3.AppointmentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.AppointmentScalar, Iterable<_i3.AppointmentScalar>>?
    distinct,
    _i3.AppointmentSelect? select,
    _i3.AppointmentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Appointment>>(
      action: 'findManyAppointment',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Appointment.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Appointment> create({
    required _i1.PrismaUnion<
      _i3.AppointmentCreateInput,
      _i3.AppointmentUncheckedCreateInput
    >
    data,
    _i3.AppointmentSelect? select,
    _i3.AppointmentInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Appointment>(
      action: 'createOneAppointment',
      result: result,
      factory: (e) => _i2.Appointment.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.AppointmentCreateManyInput,
      Iterable<_i3.AppointmentCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyAppointment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Appointment?> update({
    required _i1.PrismaUnion<
      _i3.AppointmentUpdateInput,
      _i3.AppointmentUncheckedUpdateInput
    >
    data,
    required _i3.AppointmentWhereUniqueInput where,
    _i3.AppointmentSelect? select,
    _i3.AppointmentInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Appointment?>(
      action: 'updateOneAppointment',
      result: result,
      factory: (e) => e != null ? _i2.Appointment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.AppointmentUpdateManyMutationInput,
      _i3.AppointmentUncheckedUpdateManyInput
    >
    data,
    _i3.AppointmentWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyAppointment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Appointment> upsert({
    required _i3.AppointmentWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.AppointmentCreateInput,
      _i3.AppointmentUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.AppointmentUpdateInput,
      _i3.AppointmentUncheckedUpdateInput
    >
    update,
    _i3.AppointmentSelect? select,
    _i3.AppointmentInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Appointment>(
      action: 'upsertOneAppointment',
      result: result,
      factory: (e) => _i2.Appointment.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Appointment?> delete({
    required _i3.AppointmentWhereUniqueInput where,
    _i3.AppointmentSelect? select,
    _i3.AppointmentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Appointment?>(
      action: 'deleteOneAppointment',
      result: result,
      factory: (e) => e != null ? _i2.Appointment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.AppointmentWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyAppointment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.AppointmentGroupByOutputType>> groupBy({
    _i3.AppointmentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.AppointmentOrderByWithAggregationInput>,
      _i3.AppointmentOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.AppointmentScalar>,
      _i3.AppointmentScalar
    >
    by,
    _i3.AppointmentScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.AppointmentGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.AppointmentGroupByOutputType>>(
      action: 'groupByAppointment',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.AppointmentGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateAppointment> aggregate({
    _i3.AppointmentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.AppointmentOrderByWithRelationInput>,
      _i3.AppointmentOrderByWithRelationInput
    >?
    orderBy,
    _i3.AppointmentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateAppointmentSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Appointment',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateAppointment>(
      action: 'aggregateAppointment',
      result: result,
      factory: (e) => _i3.AggregateAppointment.fromJson(e),
    );
  }
}

class TopicDelegate {
  const TopicDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Topic?> findUnique({
    required _i3.TopicWhereUniqueInput where,
    _i3.TopicSelect? select,
    _i3.TopicInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Topic?>(
      action: 'findUniqueTopic',
      result: result,
      factory: (e) => e != null ? _i2.Topic.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Topic> findUniqueOrThrow({
    required _i3.TopicWhereUniqueInput where,
    _i3.TopicSelect? select,
    _i3.TopicInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Topic>(
      action: 'findUniqueTopicOrThrow',
      result: result,
      factory: (e) => _i2.Topic.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Topic?> findFirst({
    _i3.TopicWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.TopicOrderByWithRelationInput>,
      _i3.TopicOrderByWithRelationInput
    >?
    orderBy,
    _i3.TopicWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TopicScalar, Iterable<_i3.TopicScalar>>? distinct,
    _i3.TopicSelect? select,
    _i3.TopicInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Topic?>(
      action: 'findFirstTopic',
      result: result,
      factory: (e) => e != null ? _i2.Topic.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Topic> findFirstOrThrow({
    _i3.TopicWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.TopicOrderByWithRelationInput>,
      _i3.TopicOrderByWithRelationInput
    >?
    orderBy,
    _i3.TopicWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TopicScalar, Iterable<_i3.TopicScalar>>? distinct,
    _i3.TopicSelect? select,
    _i3.TopicInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Topic>(
      action: 'findFirstTopicOrThrow',
      result: result,
      factory: (e) => _i2.Topic.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Topic>> findMany({
    _i3.TopicWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.TopicOrderByWithRelationInput>,
      _i3.TopicOrderByWithRelationInput
    >?
    orderBy,
    _i3.TopicWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.TopicScalar, Iterable<_i3.TopicScalar>>? distinct,
    _i3.TopicSelect? select,
    _i3.TopicInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Topic>>(
      action: 'findManyTopic',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Topic.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Topic> create({
    required _i1.PrismaUnion<
      _i3.TopicCreateInput,
      _i3.TopicUncheckedCreateInput
    >
    data,
    _i3.TopicSelect? select,
    _i3.TopicInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Topic>(
      action: 'createOneTopic',
      result: result,
      factory: (e) => _i2.Topic.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.TopicCreateManyInput,
      Iterable<_i3.TopicCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyTopic',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Topic?> update({
    required _i1.PrismaUnion<
      _i3.TopicUpdateInput,
      _i3.TopicUncheckedUpdateInput
    >
    data,
    required _i3.TopicWhereUniqueInput where,
    _i3.TopicSelect? select,
    _i3.TopicInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Topic?>(
      action: 'updateOneTopic',
      result: result,
      factory: (e) => e != null ? _i2.Topic.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.TopicUpdateManyMutationInput,
      _i3.TopicUncheckedUpdateManyInput
    >
    data,
    _i3.TopicWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyTopic',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Topic> upsert({
    required _i3.TopicWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.TopicCreateInput,
      _i3.TopicUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.TopicUpdateInput,
      _i3.TopicUncheckedUpdateInput
    >
    update,
    _i3.TopicSelect? select,
    _i3.TopicInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Topic>(
      action: 'upsertOneTopic',
      result: result,
      factory: (e) => _i2.Topic.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Topic?> delete({
    required _i3.TopicWhereUniqueInput where,
    _i3.TopicSelect? select,
    _i3.TopicInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Topic?>(
      action: 'deleteOneTopic',
      result: result,
      factory: (e) => e != null ? _i2.Topic.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.TopicWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyTopic',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.TopicGroupByOutputType>> groupBy({
    _i3.TopicWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.TopicOrderByWithAggregationInput>,
      _i3.TopicOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.TopicScalar>, _i3.TopicScalar> by,
    _i3.TopicScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.TopicGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.TopicGroupByOutputType>>(
      action: 'groupByTopic',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.TopicGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateTopic> aggregate({
    _i3.TopicWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.TopicOrderByWithRelationInput>,
      _i3.TopicOrderByWithRelationInput
    >?
    orderBy,
    _i3.TopicWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateTopicSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Topic',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateTopic>(
      action: 'aggregateTopic',
      result: result,
      factory: (e) => _i3.AggregateTopic.fromJson(e),
    );
  }
}

class NewsletterDelegate {
  const NewsletterDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Newsletter?> findUnique({
    required _i3.NewsletterWhereUniqueInput where,
    _i3.NewsletterSelect? select,
  }) {
    final args = {'where': where, 'select': select};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Newsletter?>(
      action: 'findUniqueNewsletter',
      result: result,
      factory: (e) => e != null ? _i2.Newsletter.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Newsletter> findUniqueOrThrow({
    required _i3.NewsletterWhereUniqueInput where,
    _i3.NewsletterSelect? select,
  }) {
    final args = {'where': where, 'select': select};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Newsletter>(
      action: 'findUniqueNewsletterOrThrow',
      result: result,
      factory: (e) => _i2.Newsletter.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Newsletter?> findFirst({
    _i3.NewsletterWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.NewsletterOrderByWithRelationInput>,
      _i3.NewsletterOrderByWithRelationInput
    >?
    orderBy,
    _i3.NewsletterWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.NewsletterScalar, Iterable<_i3.NewsletterScalar>>?
    distinct,
    _i3.NewsletterSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Newsletter?>(
      action: 'findFirstNewsletter',
      result: result,
      factory: (e) => e != null ? _i2.Newsletter.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Newsletter> findFirstOrThrow({
    _i3.NewsletterWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.NewsletterOrderByWithRelationInput>,
      _i3.NewsletterOrderByWithRelationInput
    >?
    orderBy,
    _i3.NewsletterWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.NewsletterScalar, Iterable<_i3.NewsletterScalar>>?
    distinct,
    _i3.NewsletterSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Newsletter>(
      action: 'findFirstNewsletterOrThrow',
      result: result,
      factory: (e) => _i2.Newsletter.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Newsletter>> findMany({
    _i3.NewsletterWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.NewsletterOrderByWithRelationInput>,
      _i3.NewsletterOrderByWithRelationInput
    >?
    orderBy,
    _i3.NewsletterWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.NewsletterScalar, Iterable<_i3.NewsletterScalar>>?
    distinct,
    _i3.NewsletterSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Newsletter>>(
      action: 'findManyNewsletter',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Newsletter.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Newsletter> create({
    required _i1.PrismaUnion<
      _i3.NewsletterCreateInput,
      _i3.NewsletterUncheckedCreateInput
    >
    data,
    _i3.NewsletterSelect? select,
  }) {
    final args = {'data': data, 'select': select};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Newsletter>(
      action: 'createOneNewsletter',
      result: result,
      factory: (e) => _i2.Newsletter.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.NewsletterCreateManyInput,
      Iterable<_i3.NewsletterCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyNewsletter',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Newsletter?> update({
    required _i1.PrismaUnion<
      _i3.NewsletterUpdateInput,
      _i3.NewsletterUncheckedUpdateInput
    >
    data,
    required _i3.NewsletterWhereUniqueInput where,
    _i3.NewsletterSelect? select,
  }) {
    final args = {'data': data, 'where': where, 'select': select};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Newsletter?>(
      action: 'updateOneNewsletter',
      result: result,
      factory: (e) => e != null ? _i2.Newsletter.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.NewsletterUpdateManyMutationInput,
      _i3.NewsletterUncheckedUpdateManyInput
    >
    data,
    _i3.NewsletterWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyNewsletter',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Newsletter> upsert({
    required _i3.NewsletterWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.NewsletterCreateInput,
      _i3.NewsletterUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.NewsletterUpdateInput,
      _i3.NewsletterUncheckedUpdateInput
    >
    update,
    _i3.NewsletterSelect? select,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Newsletter>(
      action: 'upsertOneNewsletter',
      result: result,
      factory: (e) => _i2.Newsletter.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Newsletter?> delete({
    required _i3.NewsletterWhereUniqueInput where,
    _i3.NewsletterSelect? select,
  }) {
    final args = {'where': where, 'select': select};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Newsletter?>(
      action: 'deleteOneNewsletter',
      result: result,
      factory: (e) => e != null ? _i2.Newsletter.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.NewsletterWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyNewsletter',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.NewsletterGroupByOutputType>> groupBy({
    _i3.NewsletterWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.NewsletterOrderByWithAggregationInput>,
      _i3.NewsletterOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.NewsletterScalar>,
      _i3.NewsletterScalar
    >
    by,
    _i3.NewsletterScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.NewsletterGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.NewsletterGroupByOutputType>>(
      action: 'groupByNewsletter',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.NewsletterGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateNewsletter> aggregate({
    _i3.NewsletterWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.NewsletterOrderByWithRelationInput>,
      _i3.NewsletterOrderByWithRelationInput
    >?
    orderBy,
    _i3.NewsletterWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateNewsletterSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Newsletter',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateNewsletter>(
      action: 'aggregateNewsletter',
      result: result,
      factory: (e) => _i3.AggregateNewsletter.fromJson(e),
    );
  }
}

class WaitlistDelegate {
  const WaitlistDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Waitlist?> findUnique({
    required _i3.WaitlistWhereUniqueInput where,
    _i3.WaitlistSelect? select,
    _i3.WaitlistInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Waitlist?>(
      action: 'findUniqueWaitlist',
      result: result,
      factory: (e) => e != null ? _i2.Waitlist.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Waitlist> findUniqueOrThrow({
    required _i3.WaitlistWhereUniqueInput where,
    _i3.WaitlistSelect? select,
    _i3.WaitlistInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Waitlist>(
      action: 'findUniqueWaitlistOrThrow',
      result: result,
      factory: (e) => _i2.Waitlist.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Waitlist?> findFirst({
    _i3.WaitlistWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WaitlistOrderByWithRelationInput>,
      _i3.WaitlistOrderByWithRelationInput
    >?
    orderBy,
    _i3.WaitlistWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.WaitlistScalar, Iterable<_i3.WaitlistScalar>>? distinct,
    _i3.WaitlistSelect? select,
    _i3.WaitlistInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Waitlist?>(
      action: 'findFirstWaitlist',
      result: result,
      factory: (e) => e != null ? _i2.Waitlist.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Waitlist> findFirstOrThrow({
    _i3.WaitlistWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WaitlistOrderByWithRelationInput>,
      _i3.WaitlistOrderByWithRelationInput
    >?
    orderBy,
    _i3.WaitlistWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.WaitlistScalar, Iterable<_i3.WaitlistScalar>>? distinct,
    _i3.WaitlistSelect? select,
    _i3.WaitlistInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Waitlist>(
      action: 'findFirstWaitlistOrThrow',
      result: result,
      factory: (e) => _i2.Waitlist.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Waitlist>> findMany({
    _i3.WaitlistWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WaitlistOrderByWithRelationInput>,
      _i3.WaitlistOrderByWithRelationInput
    >?
    orderBy,
    _i3.WaitlistWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.WaitlistScalar, Iterable<_i3.WaitlistScalar>>? distinct,
    _i3.WaitlistSelect? select,
    _i3.WaitlistInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Waitlist>>(
      action: 'findManyWaitlist',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Waitlist.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Waitlist> create({
    required _i1.PrismaUnion<
      _i3.WaitlistCreateInput,
      _i3.WaitlistUncheckedCreateInput
    >
    data,
    _i3.WaitlistSelect? select,
    _i3.WaitlistInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Waitlist>(
      action: 'createOneWaitlist',
      result: result,
      factory: (e) => _i2.Waitlist.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.WaitlistCreateManyInput,
      Iterable<_i3.WaitlistCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyWaitlist',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Waitlist?> update({
    required _i1.PrismaUnion<
      _i3.WaitlistUpdateInput,
      _i3.WaitlistUncheckedUpdateInput
    >
    data,
    required _i3.WaitlistWhereUniqueInput where,
    _i3.WaitlistSelect? select,
    _i3.WaitlistInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Waitlist?>(
      action: 'updateOneWaitlist',
      result: result,
      factory: (e) => e != null ? _i2.Waitlist.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.WaitlistUpdateManyMutationInput,
      _i3.WaitlistUncheckedUpdateManyInput
    >
    data,
    _i3.WaitlistWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyWaitlist',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Waitlist> upsert({
    required _i3.WaitlistWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.WaitlistCreateInput,
      _i3.WaitlistUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.WaitlistUpdateInput,
      _i3.WaitlistUncheckedUpdateInput
    >
    update,
    _i3.WaitlistSelect? select,
    _i3.WaitlistInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Waitlist>(
      action: 'upsertOneWaitlist',
      result: result,
      factory: (e) => _i2.Waitlist.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Waitlist?> delete({
    required _i3.WaitlistWhereUniqueInput where,
    _i3.WaitlistSelect? select,
    _i3.WaitlistInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Waitlist?>(
      action: 'deleteOneWaitlist',
      result: result,
      factory: (e) => e != null ? _i2.Waitlist.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.WaitlistWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyWaitlist',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.WaitlistGroupByOutputType>> groupBy({
    _i3.WaitlistWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WaitlistOrderByWithAggregationInput>,
      _i3.WaitlistOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.WaitlistScalar>, _i3.WaitlistScalar>
    by,
    _i3.WaitlistScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.WaitlistGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.WaitlistGroupByOutputType>>(
      action: 'groupByWaitlist',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.WaitlistGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateWaitlist> aggregate({
    _i3.WaitlistWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.WaitlistOrderByWithRelationInput>,
      _i3.WaitlistOrderByWithRelationInput
    >?
    orderBy,
    _i3.WaitlistWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateWaitlistSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Waitlist',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateWaitlist>(
      action: 'aggregateWaitlist',
      result: result,
      factory: (e) => _i3.AggregateWaitlist.fromJson(e),
    );
  }
}

class MeetingSessionDelegate {
  const MeetingSessionDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.MeetingSession?> findUnique({
    required _i3.MeetingSessionWhereUniqueInput where,
    _i3.MeetingSessionSelect? select,
    _i3.MeetingSessionInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.MeetingSession?>(
      action: 'findUniqueMeetingSession',
      result: result,
      factory: (e) => e != null ? _i2.MeetingSession.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.MeetingSession> findUniqueOrThrow({
    required _i3.MeetingSessionWhereUniqueInput where,
    _i3.MeetingSessionSelect? select,
    _i3.MeetingSessionInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.MeetingSession>(
      action: 'findUniqueMeetingSessionOrThrow',
      result: result,
      factory: (e) => _i2.MeetingSession.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.MeetingSession?> findFirst({
    _i3.MeetingSessionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.MeetingSessionOrderByWithRelationInput>,
      _i3.MeetingSessionOrderByWithRelationInput
    >?
    orderBy,
    _i3.MeetingSessionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.MeetingSessionScalar,
      Iterable<_i3.MeetingSessionScalar>
    >?
    distinct,
    _i3.MeetingSessionSelect? select,
    _i3.MeetingSessionInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.MeetingSession?>(
      action: 'findFirstMeetingSession',
      result: result,
      factory: (e) => e != null ? _i2.MeetingSession.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.MeetingSession> findFirstOrThrow({
    _i3.MeetingSessionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.MeetingSessionOrderByWithRelationInput>,
      _i3.MeetingSessionOrderByWithRelationInput
    >?
    orderBy,
    _i3.MeetingSessionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.MeetingSessionScalar,
      Iterable<_i3.MeetingSessionScalar>
    >?
    distinct,
    _i3.MeetingSessionSelect? select,
    _i3.MeetingSessionInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.MeetingSession>(
      action: 'findFirstMeetingSessionOrThrow',
      result: result,
      factory: (e) => _i2.MeetingSession.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.MeetingSession>> findMany({
    _i3.MeetingSessionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.MeetingSessionOrderByWithRelationInput>,
      _i3.MeetingSessionOrderByWithRelationInput
    >?
    orderBy,
    _i3.MeetingSessionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<
      _i3.MeetingSessionScalar,
      Iterable<_i3.MeetingSessionScalar>
    >?
    distinct,
    _i3.MeetingSessionSelect? select,
    _i3.MeetingSessionInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.MeetingSession>>(
      action: 'findManyMeetingSession',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.MeetingSession.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.MeetingSession> create({
    required _i1.PrismaUnion<
      _i3.MeetingSessionCreateInput,
      _i3.MeetingSessionUncheckedCreateInput
    >
    data,
    _i3.MeetingSessionSelect? select,
    _i3.MeetingSessionInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.MeetingSession>(
      action: 'createOneMeetingSession',
      result: result,
      factory: (e) => _i2.MeetingSession.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.MeetingSessionCreateManyInput,
      Iterable<_i3.MeetingSessionCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyMeetingSession',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.MeetingSession?> update({
    required _i1.PrismaUnion<
      _i3.MeetingSessionUpdateInput,
      _i3.MeetingSessionUncheckedUpdateInput
    >
    data,
    required _i3.MeetingSessionWhereUniqueInput where,
    _i3.MeetingSessionSelect? select,
    _i3.MeetingSessionInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.MeetingSession?>(
      action: 'updateOneMeetingSession',
      result: result,
      factory: (e) => e != null ? _i2.MeetingSession.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.MeetingSessionUpdateManyMutationInput,
      _i3.MeetingSessionUncheckedUpdateManyInput
    >
    data,
    _i3.MeetingSessionWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyMeetingSession',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.MeetingSession> upsert({
    required _i3.MeetingSessionWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.MeetingSessionCreateInput,
      _i3.MeetingSessionUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.MeetingSessionUpdateInput,
      _i3.MeetingSessionUncheckedUpdateInput
    >
    update,
    _i3.MeetingSessionSelect? select,
    _i3.MeetingSessionInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.MeetingSession>(
      action: 'upsertOneMeetingSession',
      result: result,
      factory: (e) => _i2.MeetingSession.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.MeetingSession?> delete({
    required _i3.MeetingSessionWhereUniqueInput where,
    _i3.MeetingSessionSelect? select,
    _i3.MeetingSessionInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.MeetingSession?>(
      action: 'deleteOneMeetingSession',
      result: result,
      factory: (e) => e != null ? _i2.MeetingSession.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.MeetingSessionWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyMeetingSession',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.MeetingSessionGroupByOutputType>> groupBy({
    _i3.MeetingSessionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.MeetingSessionOrderByWithAggregationInput>,
      _i3.MeetingSessionOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.MeetingSessionScalar>,
      _i3.MeetingSessionScalar
    >
    by,
    _i3.MeetingSessionScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.MeetingSessionGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.MeetingSessionGroupByOutputType>>(
      action: 'groupByMeetingSession',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.MeetingSessionGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateMeetingSession> aggregate({
    _i3.MeetingSessionWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.MeetingSessionOrderByWithRelationInput>,
      _i3.MeetingSessionOrderByWithRelationInput
    >?
    orderBy,
    _i3.MeetingSessionWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateMeetingSessionSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'MeetingSession',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateMeetingSession>(
      action: 'aggregateMeetingSession',
      result: result,
      factory: (e) => _i3.AggregateMeetingSession.fromJson(e),
    );
  }
}

class RecordingDelegate {
  const RecordingDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Recording?> findUnique({
    required _i3.RecordingWhereUniqueInput where,
    _i3.RecordingSelect? select,
    _i3.RecordingInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Recording?>(
      action: 'findUniqueRecording',
      result: result,
      factory: (e) => e != null ? _i2.Recording.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Recording> findUniqueOrThrow({
    required _i3.RecordingWhereUniqueInput where,
    _i3.RecordingSelect? select,
    _i3.RecordingInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Recording>(
      action: 'findUniqueRecordingOrThrow',
      result: result,
      factory: (e) => _i2.Recording.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Recording?> findFirst({
    _i3.RecordingWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.RecordingOrderByWithRelationInput>,
      _i3.RecordingOrderByWithRelationInput
    >?
    orderBy,
    _i3.RecordingWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.RecordingScalar, Iterable<_i3.RecordingScalar>>?
    distinct,
    _i3.RecordingSelect? select,
    _i3.RecordingInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Recording?>(
      action: 'findFirstRecording',
      result: result,
      factory: (e) => e != null ? _i2.Recording.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Recording> findFirstOrThrow({
    _i3.RecordingWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.RecordingOrderByWithRelationInput>,
      _i3.RecordingOrderByWithRelationInput
    >?
    orderBy,
    _i3.RecordingWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.RecordingScalar, Iterable<_i3.RecordingScalar>>?
    distinct,
    _i3.RecordingSelect? select,
    _i3.RecordingInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Recording>(
      action: 'findFirstRecordingOrThrow',
      result: result,
      factory: (e) => _i2.Recording.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Recording>> findMany({
    _i3.RecordingWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.RecordingOrderByWithRelationInput>,
      _i3.RecordingOrderByWithRelationInput
    >?
    orderBy,
    _i3.RecordingWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.RecordingScalar, Iterable<_i3.RecordingScalar>>?
    distinct,
    _i3.RecordingSelect? select,
    _i3.RecordingInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Recording>>(
      action: 'findManyRecording',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Recording.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Recording> create({
    required _i1.PrismaUnion<
      _i3.RecordingCreateInput,
      _i3.RecordingUncheckedCreateInput
    >
    data,
    _i3.RecordingSelect? select,
    _i3.RecordingInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Recording>(
      action: 'createOneRecording',
      result: result,
      factory: (e) => _i2.Recording.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.RecordingCreateManyInput,
      Iterable<_i3.RecordingCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyRecording',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Recording?> update({
    required _i1.PrismaUnion<
      _i3.RecordingUpdateInput,
      _i3.RecordingUncheckedUpdateInput
    >
    data,
    required _i3.RecordingWhereUniqueInput where,
    _i3.RecordingSelect? select,
    _i3.RecordingInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Recording?>(
      action: 'updateOneRecording',
      result: result,
      factory: (e) => e != null ? _i2.Recording.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.RecordingUpdateManyMutationInput,
      _i3.RecordingUncheckedUpdateManyInput
    >
    data,
    _i3.RecordingWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyRecording',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Recording> upsert({
    required _i3.RecordingWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.RecordingCreateInput,
      _i3.RecordingUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.RecordingUpdateInput,
      _i3.RecordingUncheckedUpdateInput
    >
    update,
    _i3.RecordingSelect? select,
    _i3.RecordingInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Recording>(
      action: 'upsertOneRecording',
      result: result,
      factory: (e) => _i2.Recording.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Recording?> delete({
    required _i3.RecordingWhereUniqueInput where,
    _i3.RecordingSelect? select,
    _i3.RecordingInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Recording?>(
      action: 'deleteOneRecording',
      result: result,
      factory: (e) => e != null ? _i2.Recording.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.RecordingWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyRecording',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.RecordingGroupByOutputType>> groupBy({
    _i3.RecordingWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.RecordingOrderByWithAggregationInput>,
      _i3.RecordingOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.RecordingScalar>, _i3.RecordingScalar>
    by,
    _i3.RecordingScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.RecordingGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.RecordingGroupByOutputType>>(
      action: 'groupByRecording',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.RecordingGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateRecording> aggregate({
    _i3.RecordingWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.RecordingOrderByWithRelationInput>,
      _i3.RecordingOrderByWithRelationInput
    >?
    orderBy,
    _i3.RecordingWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateRecordingSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Recording',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateRecording>(
      action: 'aggregateRecording',
      result: result,
      factory: (e) => _i3.AggregateRecording.fromJson(e),
    );
  }
}

class PaymentDelegate {
  const PaymentDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Payment?> findUnique({
    required _i3.PaymentWhereUniqueInput where,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment?>(
      action: 'findUniquePayment',
      result: result,
      factory: (e) => e != null ? _i2.Payment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Payment> findUniqueOrThrow({
    required _i3.PaymentWhereUniqueInput where,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment>(
      action: 'findUniquePaymentOrThrow',
      result: result,
      factory: (e) => _i2.Payment.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Payment?> findFirst({
    _i3.PaymentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.PaymentOrderByWithRelationInput>,
      _i3.PaymentOrderByWithRelationInput
    >?
    orderBy,
    _i3.PaymentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PaymentScalar, Iterable<_i3.PaymentScalar>>? distinct,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment?>(
      action: 'findFirstPayment',
      result: result,
      factory: (e) => e != null ? _i2.Payment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Payment> findFirstOrThrow({
    _i3.PaymentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.PaymentOrderByWithRelationInput>,
      _i3.PaymentOrderByWithRelationInput
    >?
    orderBy,
    _i3.PaymentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PaymentScalar, Iterable<_i3.PaymentScalar>>? distinct,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment>(
      action: 'findFirstPaymentOrThrow',
      result: result,
      factory: (e) => _i2.Payment.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Payment>> findMany({
    _i3.PaymentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.PaymentOrderByWithRelationInput>,
      _i3.PaymentOrderByWithRelationInput
    >?
    orderBy,
    _i3.PaymentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PaymentScalar, Iterable<_i3.PaymentScalar>>? distinct,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Payment>>(
      action: 'findManyPayment',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Payment.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Payment> create({
    required _i1.PrismaUnion<
      _i3.PaymentCreateInput,
      _i3.PaymentUncheckedCreateInput
    >
    data,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment>(
      action: 'createOnePayment',
      result: result,
      factory: (e) => _i2.Payment.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.PaymentCreateManyInput,
      Iterable<_i3.PaymentCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyPayment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Payment?> update({
    required _i1.PrismaUnion<
      _i3.PaymentUpdateInput,
      _i3.PaymentUncheckedUpdateInput
    >
    data,
    required _i3.PaymentWhereUniqueInput where,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment?>(
      action: 'updateOnePayment',
      result: result,
      factory: (e) => e != null ? _i2.Payment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.PaymentUpdateManyMutationInput,
      _i3.PaymentUncheckedUpdateManyInput
    >
    data,
    _i3.PaymentWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyPayment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Payment> upsert({
    required _i3.PaymentWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.PaymentCreateInput,
      _i3.PaymentUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.PaymentUpdateInput,
      _i3.PaymentUncheckedUpdateInput
    >
    update,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment>(
      action: 'upsertOnePayment',
      result: result,
      factory: (e) => _i2.Payment.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Payment?> delete({
    required _i3.PaymentWhereUniqueInput where,
    _i3.PaymentSelect? select,
    _i3.PaymentInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Payment?>(
      action: 'deleteOnePayment',
      result: result,
      factory: (e) => e != null ? _i2.Payment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.PaymentWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyPayment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PaymentGroupByOutputType>> groupBy({
    _i3.PaymentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.PaymentOrderByWithAggregationInput>,
      _i3.PaymentOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PaymentScalar>, _i3.PaymentScalar> by,
    _i3.PaymentScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PaymentGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PaymentGroupByOutputType>>(
      action: 'groupByPayment',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.PaymentGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregatePayment> aggregate({
    _i3.PaymentWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.PaymentOrderByWithRelationInput>,
      _i3.PaymentOrderByWithRelationInput
    >?
    orderBy,
    _i3.PaymentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePaymentSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Payment',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePayment>(
      action: 'aggregatePayment',
      result: result,
      factory: (e) => _i3.AggregatePayment.fromJson(e),
    );
  }
}

class DiscountCodeDelegate {
  const DiscountCodeDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.DiscountCode?> findUnique({
    required _i3.DiscountCodeWhereUniqueInput where,
    _i3.DiscountCodeSelect? select,
    _i3.DiscountCodeInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DiscountCode?>(
      action: 'findUniqueDiscountCode',
      result: result,
      factory: (e) => e != null ? _i2.DiscountCode.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.DiscountCode> findUniqueOrThrow({
    required _i3.DiscountCodeWhereUniqueInput where,
    _i3.DiscountCodeSelect? select,
    _i3.DiscountCodeInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DiscountCode>(
      action: 'findUniqueDiscountCodeOrThrow',
      result: result,
      factory: (e) => _i2.DiscountCode.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.DiscountCode?> findFirst({
    _i3.DiscountCodeWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.DiscountCodeOrderByWithRelationInput>,
      _i3.DiscountCodeOrderByWithRelationInput
    >?
    orderBy,
    _i3.DiscountCodeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DiscountCodeScalar, Iterable<_i3.DiscountCodeScalar>>?
    distinct,
    _i3.DiscountCodeSelect? select,
    _i3.DiscountCodeInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DiscountCode?>(
      action: 'findFirstDiscountCode',
      result: result,
      factory: (e) => e != null ? _i2.DiscountCode.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.DiscountCode> findFirstOrThrow({
    _i3.DiscountCodeWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.DiscountCodeOrderByWithRelationInput>,
      _i3.DiscountCodeOrderByWithRelationInput
    >?
    orderBy,
    _i3.DiscountCodeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DiscountCodeScalar, Iterable<_i3.DiscountCodeScalar>>?
    distinct,
    _i3.DiscountCodeSelect? select,
    _i3.DiscountCodeInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DiscountCode>(
      action: 'findFirstDiscountCodeOrThrow',
      result: result,
      factory: (e) => _i2.DiscountCode.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.DiscountCode>> findMany({
    _i3.DiscountCodeWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.DiscountCodeOrderByWithRelationInput>,
      _i3.DiscountCodeOrderByWithRelationInput
    >?
    orderBy,
    _i3.DiscountCodeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DiscountCodeScalar, Iterable<_i3.DiscountCodeScalar>>?
    distinct,
    _i3.DiscountCodeSelect? select,
    _i3.DiscountCodeInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.DiscountCode>>(
      action: 'findManyDiscountCode',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.DiscountCode.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.DiscountCode> create({
    required _i1.PrismaUnion<
      _i3.DiscountCodeCreateInput,
      _i3.DiscountCodeUncheckedCreateInput
    >
    data,
    _i3.DiscountCodeSelect? select,
    _i3.DiscountCodeInclude? include,
  }) {
    final args = {'data': data, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DiscountCode>(
      action: 'createOneDiscountCode',
      result: result,
      factory: (e) => _i2.DiscountCode.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<
      _i3.DiscountCodeCreateManyInput,
      Iterable<_i3.DiscountCodeCreateManyInput>
    >
    data,
    bool? skipDuplicates,
  }) {
    final args = {'data': data, 'skipDuplicates': skipDuplicates};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyDiscountCode',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.DiscountCode?> update({
    required _i1.PrismaUnion<
      _i3.DiscountCodeUpdateInput,
      _i3.DiscountCodeUncheckedUpdateInput
    >
    data,
    required _i3.DiscountCodeWhereUniqueInput where,
    _i3.DiscountCodeSelect? select,
    _i3.DiscountCodeInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DiscountCode?>(
      action: 'updateOneDiscountCode',
      result: result,
      factory: (e) => e != null ? _i2.DiscountCode.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<
      _i3.DiscountCodeUpdateManyMutationInput,
      _i3.DiscountCodeUncheckedUpdateManyInput
    >
    data,
    _i3.DiscountCodeWhereInput? where,
  }) {
    final args = {'data': data, 'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyDiscountCode',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.DiscountCode> upsert({
    required _i3.DiscountCodeWhereUniqueInput where,
    required _i1.PrismaUnion<
      _i3.DiscountCodeCreateInput,
      _i3.DiscountCodeUncheckedCreateInput
    >
    create,
    required _i1.PrismaUnion<
      _i3.DiscountCodeUpdateInput,
      _i3.DiscountCodeUncheckedUpdateInput
    >
    update,
    _i3.DiscountCodeSelect? select,
    _i3.DiscountCodeInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DiscountCode>(
      action: 'upsertOneDiscountCode',
      result: result,
      factory: (e) => _i2.DiscountCode.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.DiscountCode?> delete({
    required _i3.DiscountCodeWhereUniqueInput where,
    _i3.DiscountCodeSelect? select,
    _i3.DiscountCodeInclude? include,
  }) {
    final args = {'where': where, 'select': select, 'include': include};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DiscountCode?>(
      action: 'deleteOneDiscountCode',
      result: result,
      factory: (e) => e != null ? _i2.DiscountCode.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.DiscountCodeWhereInput? where,
  }) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyDiscountCode',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.DiscountCodeGroupByOutputType>> groupBy({
    _i3.DiscountCodeWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.DiscountCodeOrderByWithAggregationInput>,
      _i3.DiscountCodeOrderByWithAggregationInput
    >?
    orderBy,
    required _i1.PrismaUnion<
      Iterable<_i3.DiscountCodeScalar>,
      _i3.DiscountCodeScalar
    >
    by,
    _i3.DiscountCodeScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.DiscountCodeGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.DiscountCodeGroupByOutputType>>(
      action: 'groupByDiscountCode',
      result: result,
      factory: (values) => (values as Iterable).map(
        (e) => _i3.DiscountCodeGroupByOutputType.fromJson(e),
      ),
    );
  }

  _i1.ActionClient<_i3.AggregateDiscountCode> aggregate({
    _i3.DiscountCodeWhereInput? where,
    _i1.PrismaUnion<
      Iterable<_i3.DiscountCodeOrderByWithRelationInput>,
      _i3.DiscountCodeOrderByWithRelationInput
    >?
    orderBy,
    _i3.DiscountCodeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateDiscountCodeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'DiscountCode',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateDiscountCode>(
      action: 'aggregateDiscountCode',
      result: result,
      factory: (e) => _i3.AggregateDiscountCode.fromJson(e),
    );
  }
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient({
    super.datasourceUrl,
    super.datasources,
    super.errorFormat,
    super.log,
    _i1.Engine? engine,
  }) : _engine = engine;

  static final datamodel = _i4.DataModel.fromJson({
    'enums': [
      {
        'name': 'FeedbackStatus',
        'values': [
          {'name': 'PENDING', 'dbName': null},
          {'name': 'ACKNOWLEDGED', 'dbName': null},
          {'name': 'IN_PROGRESS', 'dbName': null},
          {'name': 'RESOLVED', 'dbName': null},
          {'name': 'CLOSED', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'SupportTicketStatus',
        'values': [
          {'name': 'OPEN', 'dbName': null},
          {'name': 'IN_PROGRESS', 'dbName': null},
          {'name': 'ON_HOLD', 'dbName': null},
          {'name': 'RESOLVED', 'dbName': null},
          {'name': 'CLOSED', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'SupportPriority',
        'values': [
          {'name': 'LOW', 'dbName': null},
          {'name': 'MEDIUM', 'dbName': null},
          {'name': 'HIGH', 'dbName': null},
          {'name': 'URGENT', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'ConsultationMode',
        'values': [
          {'name': 'VIDEO', 'dbName': null},
          {'name': 'AUDIO', 'dbName': null},
          {'name': 'IN_PERSON', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'RequestStatus',
        'values': [
          {'name': 'PENDING', 'dbName': null},
          {'name': 'APPROVED', 'dbName': null},
          {'name': 'SCHEDULED', 'dbName': null},
          {'name': 'REJECTED', 'dbName': null},
          {'name': 'CANCELLED', 'dbName': null},
          {'name': 'EXPIRED', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'WebinarStatus',
        'values': [
          {'name': 'SCHEDULED', 'dbName': null},
          {'name': 'IN_PROGRESS', 'dbName': null},
          {'name': 'COMPLETED', 'dbName': null},
          {'name': 'CANCELLED', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'ClassStatus',
        'values': [
          {'name': 'SCHEDULED', 'dbName': null},
          {'name': 'IN_PROGRESS', 'dbName': null},
          {'name': 'COMPLETED', 'dbName': null},
          {'name': 'CANCELLED', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'AppointmentsType',
        'values': [
          {'name': 'CONSULTATION', 'dbName': null},
          {'name': 'SUBSCRIPTION', 'dbName': null},
          {'name': 'WEBINAR', 'dbName': null},
          {'name': 'CLASS', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'Platform',
        'values': [
          {'name': 'ZOOM', 'dbName': null},
          {'name': 'GOOGLE_MEET', 'dbName': null},
          {'name': 'MICROSOFT_TEAMS', 'dbName': null},
          {'name': 'STREAM', 'dbName': null},
          {'name': 'CUSTOM', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'PaymentGateway',
        'values': [
          {'name': 'STRIPE', 'dbName': null},
          {'name': 'RAZORPAY', 'dbName': null},
          {'name': 'LEMON_SQUEEZY', 'dbName': null},
          {'name': 'XFLOW', 'dbName': null},
          {'name': 'CARD', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'PaymentStatus',
        'values': [
          {'name': 'PENDING', 'dbName': null},
          {'name': 'SUCCEEDED', 'dbName': null},
          {'name': 'FAILED', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'DiscountType',
        'values': [
          {'name': 'PERCENTAGE', 'dbName': null},
          {'name': 'FIXED_AMOUNT', 'dbName': null},
          {'name': 'FREE_SHIPPING', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'PlanDuration',
        'values': [
          {'name': 'ONE_MONTH', 'dbName': null},
          {'name': 'THREE_MONTHS', 'dbName': null},
          {'name': 'SIX_MONTHS', 'dbName': null},
          {'name': 'TWELVE_MONTHS', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'PlanEmailSupport',
        'values': [
          {'name': 'GENERAL', 'dbName': null},
          {'name': 'PRIORITY', 'dbName': null},
          {'name': 'DEDICATED', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'UserRole',
        'values': [
          {'name': 'CONSULTANT', 'dbName': null},
          {'name': 'CONSULTEE', 'dbName': null},
          {'name': 'ADMIN', 'dbName': null},
          {'name': 'STAFF', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'DayOfWeek',
        'values': [
          {'name': 'MONDAY', 'dbName': null},
          {'name': 'TUESDAY', 'dbName': null},
          {'name': 'WEDNESDAY', 'dbName': null},
          {'name': 'THURSDAY', 'dbName': null},
          {'name': 'FRIDAY', 'dbName': null},
          {'name': 'SATURDAY', 'dbName': null},
          {'name': 'SUNDAY', 'dbName': null},
        ],
        'dbName': null,
      },
      {
        'name': 'ScheduleType',
        'values': [
          {'name': 'WEEKLY', 'dbName': null},
          {'name': 'CUSTOM', 'dbName': null},
        ],
        'dbName': null,
      },
    ],
    'models': [
      {
        'name': 'User',
        'dbName': 'users',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'email',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'emailVerified',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'image',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'phone',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'address',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'password',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'passwordResetToken',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'passwordResetExpires',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'onlineStatus',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': false,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'currentTimezone',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'onboardingCompleted',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': false,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'role',
            'kind': 'enum',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'UserRole',
            'default': 'CONSULTEE',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'cookiePreferences',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'CookiePreference',
            'relationName': 'CookiePreferenceToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'notificationPreferences',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'NotificationPreference',
            'relationName': 'NotificationPreferenceToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'Payment',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Payment',
            'relationName': 'PaymentToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfile',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultantProfile',
            'relationName': 'ConsultantProfileToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consulteeProfile',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsulteeProfile',
            'relationName': 'ConsulteeProfileToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consulteeProfileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'staffProfile',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'StaffProfile',
            'relationName': 'StaffProfileToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'staffProfileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'slotsOfAppointment',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'SlotOfAppointment',
            'relationName': 'SlotOfAppointmentToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'Waitlist',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Waitlist',
            'relationName': 'UserToWaitlist',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'feedbacks',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Feedback',
            'relationName': 'FeedbackToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'supportTickets',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'SupportTicket',
            'relationName': 'SupportTicketToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'supportResponses',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'SupportResponse',
            'relationName': 'SupportResponseToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'accounts',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Account',
            'relationName': 'AccountToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'sessions',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Session',
            'relationName': 'SessionToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Feedback',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'title',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'rating',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'category',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'status',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'FeedbackStatus',
            'default': 'PENDING',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'FeedbackToUser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'userId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'SupportTicket',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'title',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'priority',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'SupportPriority',
            'default': 'MEDIUM',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'status',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'SupportTicketStatus',
            'default': 'OPEN',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'category',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'SupportTicketToUser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'userId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'responses',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'SupportResponse',
            'relationName': 'SupportResponseToSupportTicket',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'SupportResponse',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'message',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'supportTicket',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'SupportTicket',
            'relationName': 'SupportResponseToSupportTicket',
            'relationFromFields': ['supportTicketId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'supportTicketId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'SupportResponseToUser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'userId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'CookiePreference',
        'dbName': 'cookie_preferences',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'CookiePreferenceToUser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'userId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'essential',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': true,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'analytics',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': false,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'marketing',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': false,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'NotificationPreference',
        'dbName': 'notification_preferences',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'NotificationPreferenceToUser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'userId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'allNotifications',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': true,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'mentions',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': false,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'directMessages',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': false,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updates',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': false,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Account',
        'dbName': 'accounts',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'userId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'type',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'provider',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'providerAccountId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'refresh_token',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'access_token',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'expires_at',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'token_type',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'scope',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'id_token',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'session_state',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'AccountToUser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [
          ['provider', 'providerAccountId'],
        ],
        'uniqueIndexes': [
          {
            'name': null,
            'fields': ['provider', 'providerAccountId'],
          },
        ],
        'isGenerated': false,
      },
      {
        'name': 'Session',
        'dbName': 'sessions',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'sessionToken',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'userId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'expires',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'SessionToUser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'VerificationToken',
        'dbName': 'verificationtokens',
        'fields': [
          {
            'name': 'identifier',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'token',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'expires',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [
          ['identifier', 'token'],
        ],
        'uniqueIndexes': [
          {
            'name': null,
            'fields': ['identifier', 'token'],
          },
        ],
        'isGenerated': false,
      },
      {
        'name': 'ConsultantProfile',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'qualifications',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'specialization',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'experience',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Float',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'rating',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Float',
            'default': 0,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'domain',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Domain',
            'relationName': 'ConsultantProfileToDomain',
            'relationFromFields': ['domainId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'domainId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'subDomains',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'SubDomain',
            'relationName': 'ConsultantProfileToSubDomain',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tags',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Tag',
            'relationName': 'ConsultantProfileToTag',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'reviews',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultantReview',
            'relationName': 'ConsultantProfileToConsultantReview',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'scheduleType',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ScheduleType',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'slotsOfAvailabilityWeekly',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'SlotOfAvailabilityWeekly',
            'relationName': 'ConsultantProfileToSlotOfAvailabilityWeekly',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'slotsOfAvailabilityCustom',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'SlotOfAvailabilityCustom',
            'relationName': 'ConsultantProfileToSlotOfAvailabilityCustom',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultationPlans',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultationPlan',
            'relationName': 'ConsultantProfileToConsultationPlan',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'subscriptionPlans',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'SubscriptionPlan',
            'relationName': 'ConsultantProfileToSubscriptionPlan',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'webinarPlans',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'WebinarPlan',
            'relationName': 'ConsultantProfileToWebinarPlan',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'classPlans',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ClassPlan',
            'relationName': 'ClassPlanToConsultantProfile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'ConsultantProfileToUser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'userId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Domain',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'subDomains',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'SubDomain',
            'relationName': 'DomainToSubDomain',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'tags',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Tag',
            'relationName': 'DomainToTag',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfiles',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultantProfile',
            'relationName': 'ConsultantProfileToDomain',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'SubDomain',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'domain',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Domain',
            'relationName': 'DomainToSubDomain',
            'relationFromFields': ['domainId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'domainId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfiles',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultantProfile',
            'relationName': 'ConsultantProfileToSubDomain',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [
          ['name', 'domainId'],
        ],
        'uniqueIndexes': [
          {
            'name': null,
            'fields': ['name', 'domainId'],
          },
        ],
        'isGenerated': false,
      },
      {
        'name': 'Tag',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'domain',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Domain',
            'relationName': 'DomainToTag',
            'relationFromFields': ['domainId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'domainId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfiles',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultantProfile',
            'relationName': 'ConsultantProfileToTag',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [
          ['name', 'domainId'],
        ],
        'uniqueIndexes': [
          {
            'name': null,
            'fields': ['name', 'domainId'],
          },
        ],
        'isGenerated': false,
      },
      {
        'name': 'ConsultantReview',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'rating',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': 0,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'reviewDescription',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfile',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultantProfile',
            'relationName': 'ConsultantProfileToConsultantReview',
            'relationFromFields': ['consultantProfileId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consulteeProfile',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsulteeProfile',
            'relationName': 'ConsultantReviewToConsulteeProfile',
            'relationFromFields': ['consulteeProfileId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consulteeProfileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'ConsulteeProfile',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'education',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'occupation',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'aboutMe',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'preferredCommunicationMethod',
            'kind': 'enum',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'ConsultationMode',
            'default': 'VIDEO',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'preferredLanguage',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'specialRequirements',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'interests',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'goals',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultationRequests',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Consultation',
            'relationName': 'ConsultationToConsulteeProfile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'subscriptionRequests',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Subscription',
            'relationName': 'ConsulteeProfileToSubscription',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantReviews',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultantReview',
            'relationName': 'ConsultantReviewToConsulteeProfile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'ConsulteeProfileToUser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'userId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'StaffProfile',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'department',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'position',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'permissions',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Json',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'responsibilities',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Json',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'StaffProfileToUser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'userId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'SlotOfAvailabilityWeekly',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'dayOfWeekforStartTimeInUTC',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DayOfWeek',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'slotStartTimeInUTC',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'dayOfWeekforEndTimeInUTC',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DayOfWeek',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'slotEndTimeInUTC',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfile',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultantProfile',
            'relationName': 'ConsultantProfileToSlotOfAvailabilityWeekly',
            'relationFromFields': ['consultantProfileId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'SlotOfAvailabilityCustom',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'slotStartTimeInUTC',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'slotEndTimeInUTC',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfile',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultantProfile',
            'relationName': 'ConsultantProfileToSlotOfAvailabilityCustom',
            'relationFromFields': ['consultantProfileId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'SlotOfAppointment',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'SlotOfAppointmentToUser',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'slotStartTimeInUTC',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'slotEndTimeInUTC',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'isTentative',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': false,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'appointment',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Appointment',
            'relationName': 'AppointmentToSlotOfAppointment',
            'relationFromFields': ['appointmentId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'appointmentId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'meetingSession',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'MeetingSession',
            'relationName': 'MeetingSessionToSlotOfAppointment',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'ConsultationPlan',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'title',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'durationInHours',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Float',
            'default': 1,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'price',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'language',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'English',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'level',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'Beginner',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'prerequisites',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'None',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'materialProvided',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'None',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'learningOutcomes',
            'kind': 'scalar',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfile',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultantProfile',
            'relationName': 'ConsultantProfileToConsultationPlan',
            'relationFromFields': ['consultantProfileId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultations',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Consultation',
            'relationName': 'ConsultationToConsultationPlan',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Consultation',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultationPlan',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultationPlan',
            'relationName': 'ConsultationToConsultationPlan',
            'relationFromFields': ['consultationPlanId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultationPlanId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'requestStatus',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'RequestStatus',
            'default': 'PENDING',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'requestedBy',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsulteeProfile',
            'relationName': 'ConsultationToConsulteeProfile',
            'relationFromFields': ['requestedById'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'requestedById',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'requestedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'requestNotes',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'directlyBooked',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': false,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'feedbackFromConsultee',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'feedbackFromConsultant',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'rating',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Float',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'appointment',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Appointment',
            'relationName': 'AppointmentToConsultation',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'SubscriptionPlan',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'title',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'durationInMonths',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': 1,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'price',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'callsPerWeek',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': 1,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'sessionDurationInHours',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Float',
            'default': 1,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'videoMeetings',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': 1,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'emailSupport',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'PlanEmailSupport',
            'default': 'GENERAL',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'language',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'English',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'level',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'Beginner',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'prerequisites',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'None',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'materialProvided',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'None',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'learningOutcomes',
            'kind': 'scalar',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfile',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultantProfile',
            'relationName': 'ConsultantProfileToSubscriptionPlan',
            'relationFromFields': ['consultantProfileId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'subscriptions',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Subscription',
            'relationName': 'SubscriptionToSubscriptionPlan',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Subscription',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'startDate',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'endDate',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'requestStatus',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'RequestStatus',
            'default': 'PENDING',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'requestedBy',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsulteeProfile',
            'relationName': 'ConsulteeProfileToSubscription',
            'relationFromFields': ['requestedById'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'requestedById',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'requestedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'requestNotes',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'feedbackFromConsultee',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'feedbackFromConsultant',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'rating',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Float',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'subscriptionPlan',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'SubscriptionPlan',
            'relationName': 'SubscriptionToSubscriptionPlan',
            'relationFromFields': ['subscriptionPlanId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'subscriptionPlanId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'appointments',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Appointment',
            'relationName': 'AppointmentToSubscription',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'WebinarPlan',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'title',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'topics',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Topic',
            'relationName': 'TopicToWebinarPlan',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'price',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'priceCurrency',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'INR',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'certificateProvided',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': false,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'durationInHours',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Float',
            'default': 1,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'maxParticipants',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': 100,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'language',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'English',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'level',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'Beginner',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'prerequisites',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'None',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'materialProvided',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'None',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'learningOutcomes',
            'kind': 'scalar',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfile',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultantProfile',
            'relationName': 'ConsultantProfileToWebinarPlan',
            'relationFromFields': ['consultantProfileId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'webinars',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Webinar',
            'relationName': 'WebinarToWebinarPlan',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Webinar',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'status',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'WebinarStatus',
            'default': 'SCHEDULED',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'feedbackSummary',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'waitlist',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Waitlist',
            'relationName': 'WaitlistToWebinar',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'webinarPlan',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'WebinarPlan',
            'relationName': 'WebinarToWebinarPlan',
            'relationFromFields': ['webinarPlanId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'webinarPlanId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'appointment',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Appointment',
            'relationName': 'AppointmentToWebinar',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'ClassPlan',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'title',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'topics',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Topic',
            'relationName': 'ClassPlanToTopic',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'classContents',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ClassContent',
            'relationName': 'ClassContentToClassPlan',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'price',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'priceCurrency',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'INR',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'certificateProvided',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': false,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'durationInMonths',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': 1,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'callsPerWeek',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': 1,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'videoMeetings',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': 1,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'emailSupport',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'PlanEmailSupport',
            'default': 'GENERAL',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'maxParticipants',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'default': 1,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'language',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'English',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'level',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'Beginner',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'prerequisites',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'None',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'materialProvided',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': 'None',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'learningOutcomes',
            'kind': 'scalar',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfile',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ConsultantProfile',
            'relationName': 'ClassPlanToConsultantProfile',
            'relationFromFields': ['consultantProfileId'],
            'relationToFields': ['id'],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultantProfileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'classes',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Class',
            'relationName': 'ClassToClassPlan',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Class',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'startDate',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'endDate',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'status',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'ClassStatus',
            'default': 'SCHEDULED',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'waitlist',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Waitlist',
            'relationName': 'ClassToWaitlist',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'recordingUrls',
            'kind': 'scalar',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'feedbackSummary',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'classPlan',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ClassPlan',
            'relationName': 'ClassToClassPlan',
            'relationFromFields': ['classPlanId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'classPlanId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'appointments',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Appointment',
            'relationName': 'AppointmentToClass',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'ClassContent',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'title',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'contentType',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'contentUrl',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'order',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'hoursAllotted',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Float',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'classPlan',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ClassPlan',
            'relationName': 'ClassContentToClassPlan',
            'relationFromFields': ['classPlanId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'classPlanId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Appointment',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'appointmentType',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'AppointmentsType',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'slotsOfAppointment',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'SlotOfAppointment',
            'relationName': 'AppointmentToSlotOfAppointment',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultation',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Consultation',
            'relationName': 'AppointmentToConsultation',
            'relationFromFields': ['consultationId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'consultationId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'subscription',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Subscription',
            'relationName': 'AppointmentToSubscription',
            'relationFromFields': ['subscriptionId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'subscriptionId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'webinar',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Webinar',
            'relationName': 'AppointmentToWebinar',
            'relationFromFields': ['webinarId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'webinarId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'class',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Class',
            'relationName': 'AppointmentToClass',
            'relationFromFields': ['classId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'classId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'payment',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Payment',
            'relationName': 'AppointmentToPayment',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Topic',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'webinarPlans',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'WebinarPlan',
            'relationName': 'TopicToWebinarPlan',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'classPlans',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'ClassPlan',
            'relationName': 'ClassPlanToTopic',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Newsletter',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'email',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Waitlist',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'joinedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'UserToWaitlist',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'userId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'webinar',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Webinar',
            'relationName': 'WaitlistToWebinar',
            'relationFromFields': ['webinarId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'webinarId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'class',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Class',
            'relationName': 'ClassToWaitlist',
            'relationFromFields': ['classId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'classId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [
          ['userId', 'webinarId'],
          ['userId', 'classId'],
        ],
        'uniqueIndexes': [
          {
            'name': null,
            'fields': ['userId', 'webinarId'],
          },
          {
            'name': null,
            'fields': ['userId', 'classId'],
          },
        ],
        'isGenerated': false,
      },
      {
        'name': 'MeetingSession',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'streamCallId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'platform',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Platform',
            'default': 'STREAM',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'passcode',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'hostKeys',
            'kind': 'scalar',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'recordings',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Recording',
            'relationName': 'MeetingSessionToRecording',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'slotOfAppointment',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'SlotOfAppointment',
            'relationName': 'MeetingSessionToSlotOfAppointment',
            'relationFromFields': ['slotOfAppointmentId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'slotOfAppointmentId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Recording',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'cuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'title',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'recordingUrl',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'durationInMinutes',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'recordedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'meetingSession',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'MeetingSession',
            'relationName': 'MeetingSessionToRecording',
            'relationFromFields': ['meetingSessionId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'meetingSessionId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Payment',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'amount',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'currency',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'receiptUrl',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'paymentMethod',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'paymentIntent',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'paymentGateway',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'PaymentGateway',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'paymentStatus',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'PaymentStatus',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'expiresAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'user',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'User',
            'relationName': 'PaymentToUser',
            'relationFromFields': ['userId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'userId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'appointment',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Appointment',
            'relationName': 'AppointmentToPayment',
            'relationFromFields': ['appointmentId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'appointmentId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': true,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'discountCode',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DiscountCode',
            'relationName': 'DiscountCodeToPayment',
            'relationFromFields': ['discountCodeId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'SetNull',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'discountCodeId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'DiscountCode',
        'dbName': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {'name': 'uuid', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'code',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'discountType',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DiscountType',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'discountValue',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Float',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'Payment',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Payment',
            'relationName': 'DiscountCodeToPayment',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {'name': 'now', 'args': []},
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
    ],
    'types': [],
  });

  _i1.Engine? _engine;

  _i1.TransactionClient<PrismaClient>? _transaction;

  @override
  get $transaction {
    if (_transaction != null) return _transaction!;
    PrismaClient factory(_i1.TransactionClient<PrismaClient> transaction) {
      final client = PrismaClient(
        engine: $engine,
        datasources: $options.datasources,
        datasourceUrl: $options.datasourceUrl,
        errorFormat: $options.errorFormat,
        log: $options.logEmitter.definition,
      );
      client.$options.logEmitter = $options.logEmitter;
      client._transaction = transaction;

      return client;
    }

    return _transaction = _i1.TransactionClient<PrismaClient>($engine, factory);
  }

  @override
  get $engine => _engine ??= _i5.BinaryEngine(
    schema:
        'generator client {\n  provider = "flutter pub run orm"\n  output   = "../lib/_generated_prisma_client"\n}\n\ndatasource db {\n  provider  = "postgresql"\n  url       = env("DATABASE_URL")\n  directUrl = env("DIRECT_URL")\n}\n\n////////////////////////////////////////// DO NOT EDIT //////////////////////////////////////////\n\nmodel User {\n  id                   String    @id @default(cuid())\n  name                 String?\n  email                String?   @unique\n  emailVerified        DateTime?\n  image                String?\n  phone                String?   @unique\n  address              String?\n  password             String?\n  passwordResetToken   String?   @unique\n  passwordResetExpires DateTime?\n  onlineStatus         Boolean   @default(false)\n  currentTimezone      String?\n  onboardingCompleted  Boolean?  @default(false)\n  role                 UserRole? @default(CONSULTEE)\n\n  cookiePreferences       CookiePreference?\n  notificationPreferences NotificationPreference?\n  Payment                 Payment[]\n\n  // Relations\n  consultantProfile   ConsultantProfile?\n  consultantProfileId String?            @unique\n  consulteeProfile    ConsulteeProfile?\n  consulteeProfileId  String?            @unique\n  staffProfile        StaffProfile?\n  staffProfileId      String?            @unique\n\n  slotsOfAppointment SlotOfAppointment[]\n  Waitlist           Waitlist[]\n\n  // Feedback and Support\n  feedbacks        Feedback[]\n  supportTickets   SupportTicket[]\n  supportResponses SupportResponse[]\n\n  accounts Account[] // NextAuth Accounts\n  sessions Session[] // NextAuth Sessions\n\n  @@index([consultantProfileId])\n  @@index([consulteeProfileId])\n  @@map("users")\n}\n\nmodel Feedback {\n  id          String         @id @default(uuid())\n  title       String\n  description String         @db.Text\n  rating      Int?           @db.SmallInt\n  category    String?\n  status      FeedbackStatus @default(PENDING)\n\n  user   User   @relation(fields: [userId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  userId String\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([userId])\n}\n\nmodel SupportTicket {\n  id          String              @id @default(uuid())\n  title       String\n  description String              @db.Text\n  priority    SupportPriority     @default(MEDIUM)\n  status      SupportTicketStatus @default(OPEN)\n  category    String?\n\n  user   User   @relation(fields: [userId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  userId String\n\n  responses SupportResponse[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([userId])\n}\n\nmodel SupportResponse {\n  id      String @id @default(uuid())\n  message String @db.Text\n\n  supportTicket   SupportTicket @relation(fields: [supportTicketId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  supportTicketId String\n\n  user   User   @relation(fields: [userId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  userId String\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([supportTicketId])\n}\n\nenum FeedbackStatus {\n  PENDING\n  ACKNOWLEDGED\n  IN_PROGRESS\n  RESOLVED\n  CLOSED\n}\n\nenum SupportTicketStatus {\n  OPEN\n  IN_PROGRESS\n  ON_HOLD\n  RESOLVED\n  CLOSED\n}\n\nenum SupportPriority {\n  LOW\n  MEDIUM\n  HIGH\n  URGENT\n}\n\nmodel CookiePreference {\n  id        String  @id @default(cuid())\n  user      User    @relation(fields: [userId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  userId    String  @unique\n  essential Boolean @default(true)\n  analytics Boolean @default(false)\n  marketing Boolean @default(false)\n\n  @@map("cookie_preferences")\n}\n\nmodel NotificationPreference {\n  id               String  @id @default(cuid())\n  user             User    @relation(fields: [userId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  userId           String  @unique\n  allNotifications Boolean @default(true)\n  mentions         Boolean @default(false)\n  directMessages   Boolean @default(false)\n  updates          Boolean @default(false)\n\n  @@map("notification_preferences")\n}\n\nmodel Account {\n  id                String  @id @default(cuid())\n  userId            String\n  type              String\n  provider          String\n  providerAccountId String\n  refresh_token     String? @db.Text\n  access_token      String? @db.Text\n  expires_at        Int?\n  token_type        String?\n  scope             String?\n  id_token          String? @db.Text\n  session_state     String?\n\n  user User @relation(fields: [userId], references: [id], onDelete: Cascade)\n\n  @@unique([provider, providerAccountId])\n  @@index([userId])\n  @@map("accounts")\n}\n\nmodel Session {\n  id           String   @id @default(cuid())\n  sessionToken String   @unique\n  userId       String\n  expires      DateTime\n  user         User     @relation(fields: [userId], references: [id], onDelete: Cascade)\n\n  @@index([userId])\n  @@map("sessions")\n}\n\nmodel VerificationToken {\n  identifier String\n  token      String   @unique\n  expires    DateTime\n\n  @@unique([identifier, token])\n  @@map("verificationtokens")\n}\n\n//////////////////////////////////////////////////// SLOTTING MECHANISM ////////////////////////////////////////////////////\n\nmodel ConsultantProfile {\n  id             String  @id @default(uuid())\n  description    String? @db.Text\n  qualifications String?\n  specialization String?\n  experience     Float?\n  rating         Float   @default(0)\n\n  domain     Domain      @relation(fields: [domainId], references: [id])\n  domainId   String\n  subDomains SubDomain[]\n  tags       Tag[]\n\n  reviews      ConsultantReview[]\n  scheduleType ScheduleType\n\n  slotsOfAvailabilityWeekly SlotOfAvailabilityWeekly[]\n  slotsOfAvailabilityCustom SlotOfAvailabilityCustom[]\n\n  consultationPlans ConsultationPlan[]\n  subscriptionPlans SubscriptionPlan[]\n  webinarPlans      WebinarPlan[]\n  classPlans        ClassPlan[]\n\n  user   User   @relation(fields: [userId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  userId String @unique\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([userId])\n  @@index([domainId])\n}\n\nmodel Domain {\n  id                 String              @id @default(uuid())\n  name               String              @unique\n  subDomains         SubDomain[]\n  tags               Tag[]\n  consultantProfiles ConsultantProfile[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([name])\n}\n\nmodel SubDomain {\n  id                 String              @id @default(uuid())\n  name               String\n  domain             Domain              @relation(fields: [domainId], references: [id])\n  domainId           String\n  consultantProfiles ConsultantProfile[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@unique([name, domainId])\n  @@index([domainId])\n}\n\nmodel Tag {\n  id                 String              @id @default(uuid())\n  name               String\n  domain             Domain              @relation(fields: [domainId], references: [id])\n  domainId           String\n  consultantProfiles ConsultantProfile[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@unique([name, domainId])\n  @@index([domainId])\n}\n\nmodel ConsultantReview {\n  id                String  @id @default(uuid())\n  rating            Int     @default(0) @db.SmallInt\n  reviewDescription String? @db.Text\n\n  consultantProfile   ConsultantProfile @relation(fields: [consultantProfileId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  consultantProfileId String\n\n  consulteeProfile   ConsulteeProfile @relation(fields: [consulteeProfileId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  consulteeProfileId String\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n}\n\nmodel ConsulteeProfile {\n  id                           String            @id @default(uuid())\n  education                    String?\n  occupation                   String?\n  aboutMe                      String?\n  preferredCommunicationMethod ConsultationMode? @default(VIDEO)\n  preferredLanguage            String?\n  specialRequirements          String?\n  interests                    String?\n  goals                        String?\n\n  consultationRequests Consultation[]\n  subscriptionRequests Subscription[]\n  consultantReviews    ConsultantReview[]\n\n  user   User   @relation(fields: [userId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  userId String @unique\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([userId])\n}\n\nenum ConsultationMode {\n  VIDEO\n  AUDIO\n  IN_PERSON\n}\n\nmodel StaffProfile {\n  id               String  @id @default(uuid())\n  department       String?\n  position         String?\n  permissions      Json?\n  responsibilities Json?\n\n  user   User   @relation(fields: [userId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  userId String @unique\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([userId])\n}\n\nmodel SlotOfAvailabilityWeekly {\n  id                         String    @id @default(uuid())\n  dayOfWeekforStartTimeInUTC DayOfWeek\n  slotStartTimeInUTC         DateTime  @db.Timestamptz()\n  dayOfWeekforEndTimeInUTC   DayOfWeek\n  slotEndTimeInUTC           DateTime  @db.Timestamptz()\n\n  consultantProfile   ConsultantProfile @relation(fields: [consultantProfileId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  consultantProfileId String\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([consultantProfileId])\n}\n\nmodel SlotOfAvailabilityCustom {\n  id                 String   @id @default(uuid())\n  slotStartTimeInUTC DateTime @db.Timestamptz()\n  slotEndTimeInUTC   DateTime @db.Timestamptz()\n\n  consultantProfile   ConsultantProfile @relation(fields: [consultantProfileId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  consultantProfileId String\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([consultantProfileId])\n}\n\nmodel SlotOfAppointment {\n  id String @id @default(uuid())\n\n  user User[]\n\n  slotStartTimeInUTC DateTime @db.Timestamptz()\n  slotEndTimeInUTC   DateTime @db.Timestamptz()\n  isTentative        Boolean  @default(false)\n\n  appointment   Appointment @relation(fields: [appointmentId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  appointmentId String\n\n  meetingSession MeetingSession?\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([appointmentId])\n  @@index([isTentative, appointmentId])\n}\n\n//////////////////////////////////////////////////// PRICING PLANS ////////////////////////////////////////////////////\n\n// 1-1 Consultation\nmodel ConsultationPlan {\n  id               String   @id @default(cuid())\n  title            String\n  description      String?  @db.Text\n  durationInHours  Float    @default(1)\n  price            Int\n  language         String   @default("English")\n  level            String   @default("Beginner")\n  prerequisites    String?  @default("None")\n  materialProvided String?  @default("None")\n  learningOutcomes String[] @default([])\n\n  consultantProfile   ConsultantProfile @relation(fields: [consultantProfileId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  consultantProfileId String\n\n  consultations Consultation[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n}\n\nmodel Consultation {\n  id                 String           @id @default(uuid())\n  consultationPlan   ConsultationPlan @relation(fields: [consultationPlanId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  consultationPlanId String\n\n  requestStatus          RequestStatus    @default(PENDING)\n  requestedBy            ConsulteeProfile @relation(fields: [requestedById], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  requestedById          String\n  requestedAt            DateTime         @default(now())\n  requestNotes           String?\n  directlyBooked         Boolean          @default(false)\n  feedbackFromConsultee  String?\n  feedbackFromConsultant String?\n  rating                 Float?\n\n  appointment Appointment?\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n}\n\nmodel SubscriptionPlan {\n  id                     String           @id @default(cuid())\n  title                  String\n  description            String?          @db.Text\n  durationInMonths       Int              @default(1)\n  price                  Int\n  callsPerWeek           Int              @default(1)\n  sessionDurationInHours Float            @default(1.0) // Duration of each session in hours\n  videoMeetings          Int              @default(1)\n  emailSupport           PlanEmailSupport @default(GENERAL)\n  language               String           @default("English")\n  level                  String           @default("Beginner")\n  prerequisites          String?          @default("None")\n  materialProvided       String?          @default("None")\n  learningOutcomes       String[]         @default([])\n\n  consultantProfile   ConsultantProfile @relation(fields: [consultantProfileId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  consultantProfileId String\n\n  subscriptions Subscription[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n}\n\nmodel Subscription {\n  id        String   @id @default(cuid())\n  startDate DateTime @default(now())\n  endDate   DateTime\n\n  requestStatus          RequestStatus    @default(PENDING)\n  requestedBy            ConsulteeProfile @relation(fields: [requestedById], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  requestedById          String\n  requestedAt            DateTime         @default(now())\n  requestNotes           String?\n  feedbackFromConsultee  String?\n  feedbackFromConsultant String?\n  rating                 Float?\n\n  subscriptionPlan   SubscriptionPlan @relation(fields: [subscriptionPlanId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  subscriptionPlanId String\n\n  appointments Appointment[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n}\n\nenum RequestStatus {\n  PENDING\n  APPROVED\n  SCHEDULED\n  REJECTED\n  CANCELLED\n  EXPIRED\n}\n\n// Many-Many Webinar\nmodel WebinarPlan {\n  id                  String   @id @default(cuid())\n  title               String\n  topics              Topic[]\n  description         String?  @db.Text\n  price               Int\n  priceCurrency       String   @default("INR")\n  certificateProvided Boolean  @default(false)\n  durationInHours     Float    @default(1) // Duration in hours\n  maxParticipants     Int      @default(100)\n  language            String?  @default("English")\n  level               String?  @default("Beginner")\n  prerequisites       String?  @default("None")\n  materialProvided    String?  @default("None")\n  learningOutcomes    String[] @default([])\n\n  consultantProfile   ConsultantProfile? @relation(fields: [consultantProfileId], references: [id])\n  consultantProfileId String?\n  webinars            Webinar[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n}\n\nmodel Webinar {\n  id              String        @id @default(cuid())\n  status          WebinarStatus @default(SCHEDULED)\n  feedbackSummary String?\n  waitlist        Waitlist[]\n\n  webinarPlan   WebinarPlan @relation(fields: [webinarPlanId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  webinarPlanId String\n\n  appointment Appointment?\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([webinarPlanId])\n}\n\nenum WebinarStatus {\n  SCHEDULED\n  IN_PROGRESS\n  COMPLETED\n  CANCELLED\n}\n\n// Many-Many Class\nmodel ClassPlan {\n  id                  String           @id @default(cuid())\n  title               String\n  description         String           @db.Text\n  topics              Topic[]\n  classContents       ClassContent[]\n  price               Int\n  priceCurrency       String           @default("INR")\n  certificateProvided Boolean          @default(false)\n  durationInMonths    Int              @default(1) // Duration in months\n  callsPerWeek        Int              @default(1)\n  videoMeetings       Int              @default(1)\n  emailSupport        PlanEmailSupport @default(GENERAL)\n  maxParticipants     Int              @default(1)\n  language            String?          @default("English")\n  level               String?          @default("Beginner")\n  prerequisites       String?          @default("None")\n  materialProvided    String?          @default("None")\n  learningOutcomes    String[]         @default([])\n\n  consultantProfile   ConsultantProfile? @relation(fields: [consultantProfileId], references: [id])\n  consultantProfileId String?\n  classes             Class[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n}\n\nmodel Class {\n  id              String      @id @default(cuid())\n  startDate       DateTime?\n  endDate         DateTime?\n  status          ClassStatus @default(SCHEDULED)\n  waitlist        Waitlist[]\n  recordingUrls   String[]\n  feedbackSummary String?     @db.Text\n\n  classPlan   ClassPlan @relation(fields: [classPlanId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  classPlanId String\n\n  appointments Appointment[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([classPlanId])\n}\n\nmodel ClassContent {\n  id            String  @id @default(cuid())\n  title         String\n  description   String  @db.Text\n  contentType   String?\n  contentUrl    String?\n  order         Int\n  hoursAllotted Float\n\n  classPlan   ClassPlan @relation(fields: [classPlanId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  classPlanId String\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n}\n\nenum ClassStatus {\n  SCHEDULED\n  IN_PROGRESS\n  COMPLETED\n  CANCELLED\n}\n\n// Generic Appointment Model\nmodel Appointment {\n  id                 String              @id @default(uuid())\n  appointmentType    AppointmentsType\n  slotsOfAppointment SlotOfAppointment[]\n\n  consultation   Consultation? @relation(fields: [consultationId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  consultationId String?       @unique\n\n  subscription   Subscription? @relation(fields: [subscriptionId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  subscriptionId String?\n\n  webinar   Webinar? @relation(fields: [webinarId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  webinarId String?  @unique\n\n  class   Class?  @relation(fields: [classId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  classId String?\n\n  payment Payment[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n}\n\nenum AppointmentsType {\n  CONSULTATION\n  SUBSCRIPTION\n  WEBINAR\n  CLASS\n}\n\nmodel Topic {\n  id   String @id @default(cuid())\n  name String @unique\n\n  webinarPlans WebinarPlan[]\n  classPlans   ClassPlan[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n}\n\nmodel Newsletter {\n  id    String @id @default(uuid())\n  email String @unique\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n}\n\nmodel Waitlist {\n  id       String   @id @default(uuid())\n  joinedAt DateTime @default(now())\n\n  user   User   @relation(fields: [userId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  userId String\n\n  webinar   Webinar? @relation(fields: [webinarId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  webinarId String?\n\n  class   Class?  @relation(fields: [classId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  classId String?\n\n  @@unique([userId, webinarId])\n  @@unique([userId, classId])\n}\n\n////////////////////////////////////////////// MEETINGS ////////////////////////////////////////////////////\n\nmodel MeetingSession {\n  id           String   @id @default(cuid())\n  streamCallId String   @unique\n  platform     Platform @default(STREAM)\n  passcode     String?\n  hostKeys     String[]\n\n  recordings Recording[]\n\n  slotOfAppointment   SlotOfAppointment @relation(fields: [slotOfAppointmentId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  slotOfAppointmentId String            @unique\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n}\n\n// New model for storing recording details\nmodel Recording {\n  id                String   @id @default(cuid())\n  title             String\n  recordingUrl      String\n  durationInMinutes Int\n  recordedAt        DateTime\n\n  meetingSession   MeetingSession @relation(fields: [meetingSessionId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  meetingSessionId String\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([meetingSessionId])\n}\n\nenum Platform {\n  ZOOM\n  GOOGLE_MEET\n  MICROSOFT_TEAMS\n  STREAM\n  CUSTOM\n}\n\n////////////////////////////////////////////// PAYMENT STUFF ////////////////////////////////////////////////////\n\nmodel Payment {\n  id             String         @id @default(uuid())\n  amount         Int\n  currency       String\n  description    String?\n  receiptUrl     String?\n  paymentMethod  String\n  paymentIntent  String         @unique\n  paymentGateway PaymentGateway\n  paymentStatus  PaymentStatus\n  expiresAt      DateTime? // For tracking payment intent expiration\n\n  user           User          @relation(fields: [userId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  userId         String\n  appointment    Appointment?  @relation(fields: [appointmentId], references: [id], onUpdate: Cascade, onDelete: Cascade)\n  appointmentId  String?       @unique\n  discountCode   DiscountCode? @relation(fields: [discountCodeId], references: [id], onUpdate: Cascade, onDelete: SetNull)\n  discountCodeId String?\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n\n  @@index([expiresAt, paymentStatus])\n}\n\nenum PaymentGateway {\n  STRIPE\n  RAZORPAY\n  LEMON_SQUEEZY\n  XFLOW\n  CARD\n}\n\nenum PaymentStatus {\n  PENDING\n  SUCCEEDED\n  FAILED\n}\n\nmodel DiscountCode {\n  id            String       @id @default(uuid())\n  code          String       @unique\n  description   String\n  discountType  DiscountType\n  discountValue Float\n\n  Payment Payment[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt\n}\n\nenum DiscountType {\n  PERCENTAGE\n  FIXED_AMOUNT\n  FREE_SHIPPING\n}\n\n//////////////////////////////////////////////////// ENUMS ////////////////////////////////////////////////////\n\nenum PlanDuration {\n  ONE_MONTH\n  THREE_MONTHS\n  SIX_MONTHS\n  TWELVE_MONTHS\n}\n\nenum PlanEmailSupport {\n  GENERAL\n  PRIORITY\n  DEDICATED\n}\n\nenum UserRole {\n  CONSULTANT\n  CONSULTEE\n  ADMIN\n  STAFF\n}\n\nenum DayOfWeek {\n  MONDAY\n  TUESDAY\n  WEDNESDAY\n  THURSDAY\n  FRIDAY\n  SATURDAY\n  SUNDAY\n}\n\nenum ScheduleType {\n  WEEKLY\n  CUSTOM\n}\n',
    datasources: const {
      'db': _i1.Datasource(_i1.DatasourceType.environment, 'DATABASE_URL'),
    },
    options: $options,
  );

  @override
  get $datamodel => datamodel;

  UserDelegate get user => UserDelegate._(this);

  FeedbackDelegate get feedback => FeedbackDelegate._(this);

  SupportTicketDelegate get supportTicket => SupportTicketDelegate._(this);

  SupportResponseDelegate get supportResponse =>
      SupportResponseDelegate._(this);

  CookiePreferenceDelegate get cookiePreference =>
      CookiePreferenceDelegate._(this);

  NotificationPreferenceDelegate get notificationPreference =>
      NotificationPreferenceDelegate._(this);

  AccountDelegate get account => AccountDelegate._(this);

  SessionDelegate get session => SessionDelegate._(this);

  VerificationTokenDelegate get verificationToken =>
      VerificationTokenDelegate._(this);

  ConsultantProfileDelegate get consultantProfile =>
      ConsultantProfileDelegate._(this);

  DomainDelegate get domain => DomainDelegate._(this);

  SubDomainDelegate get subDomain => SubDomainDelegate._(this);

  TagDelegate get tag => TagDelegate._(this);

  ConsultantReviewDelegate get consultantReview =>
      ConsultantReviewDelegate._(this);

  ConsulteeProfileDelegate get consulteeProfile =>
      ConsulteeProfileDelegate._(this);

  StaffProfileDelegate get staffProfile => StaffProfileDelegate._(this);

  SlotOfAvailabilityWeeklyDelegate get slotOfAvailabilityWeekly =>
      SlotOfAvailabilityWeeklyDelegate._(this);

  SlotOfAvailabilityCustomDelegate get slotOfAvailabilityCustom =>
      SlotOfAvailabilityCustomDelegate._(this);

  SlotOfAppointmentDelegate get slotOfAppointment =>
      SlotOfAppointmentDelegate._(this);

  ConsultationPlanDelegate get consultationPlan =>
      ConsultationPlanDelegate._(this);

  ConsultationDelegate get consultation => ConsultationDelegate._(this);

  SubscriptionPlanDelegate get subscriptionPlan =>
      SubscriptionPlanDelegate._(this);

  SubscriptionDelegate get subscription => SubscriptionDelegate._(this);

  WebinarPlanDelegate get webinarPlan => WebinarPlanDelegate._(this);

  WebinarDelegate get webinar => WebinarDelegate._(this);

  ClassPlanDelegate get classPlan => ClassPlanDelegate._(this);

  ClassDelegate get $Class => ClassDelegate._(this);

  ClassContentDelegate get classContent => ClassContentDelegate._(this);

  AppointmentDelegate get appointment => AppointmentDelegate._(this);

  TopicDelegate get topic => TopicDelegate._(this);

  NewsletterDelegate get newsletter => NewsletterDelegate._(this);

  WaitlistDelegate get waitlist => WaitlistDelegate._(this);

  MeetingSessionDelegate get meetingSession => MeetingSessionDelegate._(this);

  RecordingDelegate get recording => RecordingDelegate._(this);

  PaymentDelegate get payment => PaymentDelegate._(this);

  DiscountCodeDelegate get discountCode => DiscountCodeDelegate._(this);
}
