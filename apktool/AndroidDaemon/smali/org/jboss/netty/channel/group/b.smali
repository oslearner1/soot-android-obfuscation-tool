.class final Lorg/jboss/netty/channel/group/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/group/DefaultChannelGroup;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/group/DefaultChannelGroup;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/group/b;->a:Lorg/jboss/netty/channel/group/DefaultChannelGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/group/b;->a:Lorg/jboss/netty/channel/group/DefaultChannelGroup;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jboss/netty/channel/group/DefaultChannelGroup;->remove(Ljava/lang/Object;)Z

    return-void
.end method
