.class public interface abstract Lorg/jboss/netty/channel/group/ChannelGroupFuture;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# virtual methods
.method public abstract addListener(Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;)V
.end method

.method public abstract await()Lorg/jboss/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract await(J)Z
.end method

.method public abstract await(JLjava/util/concurrent/TimeUnit;)Z
.end method

.method public abstract awaitUninterruptibly()Lorg/jboss/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract awaitUninterruptibly(J)Z
.end method

.method public abstract awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
.end method

.method public abstract find(Ljava/lang/Integer;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract find(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;
.end method

.method public abstract getGroup()Lorg/jboss/netty/channel/group/ChannelGroup;
.end method

.method public abstract isCompleteFailure()Z
.end method

.method public abstract isCompleteSuccess()Z
.end method

.method public abstract isDone()Z
.end method

.method public abstract isPartialFailure()Z
.end method

.method public abstract isPartialSuccess()Z
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public abstract removeListener(Lorg/jboss/netty/channel/group/ChannelGroupFutureListener;)V
.end method
