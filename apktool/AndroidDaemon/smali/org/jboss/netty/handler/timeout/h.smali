.class final Lorg/jboss/netty/handler/timeout/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# instance fields
.field private final a:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private final b:Lorg/jboss/netty/channel/ChannelFuture;

.field private synthetic c:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/h;->c:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/handler/timeout/h;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p3, p0, Lorg/jboss/netty/handler/timeout/h;->b:Lorg/jboss/netty/channel/ChannelFuture;

    return-void
.end method


# virtual methods
.method public final run(Lorg/jboss/netty/util/Timeout;)V
    .locals 2

    invoke-interface {p1}, Lorg/jboss/netty/util/Timeout;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/h;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/h;->b:Lorg/jboss/netty/channel/ChannelFuture;

    sget-object v1, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->EXCEPTION:Lorg/jboss/netty/handler/timeout/WriteTimeoutException;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/h;->c:Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/h;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/handler/timeout/WriteTimeoutHandler;->writeTimedOut(Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/h;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
