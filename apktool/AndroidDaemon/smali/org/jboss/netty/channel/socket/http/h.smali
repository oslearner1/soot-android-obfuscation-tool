.class final Lorg/jboss/netty/channel/socket/http/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/socket/http/g;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/http/g;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/h;->a:Lorg/jboss/netty/channel/socket/http/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 2

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/h;->a:Lorg/jboss/netty/channel/socket/http/g;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/g;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/h;->a:Lorg/jboss/netty/channel/socket/http/g;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/http/g;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
