# UserBizImpl.findById

userMapper.getCount
MapperProxy.invoke
    缓存
MapperMethod.execute(sqlSession, args)
SqlSessionTemplate.invoke(proxy, method, args)
DefaultSqlSession.seleceOne(statement, paramerer)
    statement = com.juju.smart.dao.UserMapper.getCount
    MappedStatement = configuration.getMappedStatement(statement)
CachingExecutor.query(ms, paramentObject, rowBounds, resultHandler)
BaseExecutor.query(ms,p paramenter, rowBounds, resultHandler, key, boundSql)
