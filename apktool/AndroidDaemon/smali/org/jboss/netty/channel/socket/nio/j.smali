.class final Lorg/jboss/netty/channel/socket/nio/j;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/ChannelFuture;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/i;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 0

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/j;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/j;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/j;->a:Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method
