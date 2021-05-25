.class public interface abstract Lorg/jboss/netty/channel/group/ChannelGroup;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/util/Set;


# virtual methods
.method public abstract close()Lorg/jboss/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract disconnect()Lorg/jboss/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract find(Ljava/lang/Integer;)Lorg/jboss/netty/channel/Channel;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract setInterestOps(I)Lorg/jboss/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract setReadable(Z)Lorg/jboss/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract unbind()Lorg/jboss/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract write(Ljava/lang/Object;)Lorg/jboss/netty/channel/group/ChannelGroupFuture;
.end method

.method public abstract write(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/group/ChannelGroupFuture;
.end method
