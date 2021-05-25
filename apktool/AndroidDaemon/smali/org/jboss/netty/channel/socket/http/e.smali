.class final Lorg/jboss/netty/channel/socket/http/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/ChannelFuture;

.field private synthetic b:I

.field private synthetic c:Lorg/jboss/netty/channel/socket/http/a;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/http/a;Lorg/jboss/netty/channel/ChannelFuture;I)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/http/e;->c:Lorg/jboss/netty/channel/socket/http/a;

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/http/e;->a:Lorg/jboss/netty/channel/ChannelFuture;

    iput p3, p0, Lorg/jboss/netty/channel/socket/http/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 3

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/e;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    iget v0, p0, Lorg/jboss/netty/channel/socket/http/e;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/e;->c:Lorg/jboss/netty/channel/socket/http/a;

    iget v1, p0, Lorg/jboss/netty/channel/socket/http/e;->b:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/http/e;->a:Lorg/jboss/netty/channel/ChannelFuture;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
