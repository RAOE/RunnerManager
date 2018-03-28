package com.xyf.mapper;

import java.util.List;

/**
 * @param <T> 表示中间表对应的类，如CardSubject类
 * @param <F> 即first，表示CardSubject的前半部分对应的类，即Card类
 * @param <S> 即second，表示CardSubject的后半部分对应的类，即Subject类
 */
public interface IManyToManyMapper<T, F, S> extends IMapper<T> {

    //如删除指定学习卡和所有学科的关系
    public int deleteByFirstId(Long firstId);

    //如删除指定学科和所有学习卡的关系
    public int deleteBySecondId(Long secondId);

    //如查询出指定项目拥有的成员
    public List<F> selectFirstListBySecondId(Long secondId);

    
    //如查询出指定学习卡可用于的所有学科
    public List<S> selectSecondListByFirstId(Long id);

}
