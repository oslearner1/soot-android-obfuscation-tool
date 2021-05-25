.class final Lorg/jboss/netty/handler/timeout/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/util/TimerTask;


# instance fields
.field private final a:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field private synthetic b:Lorg/jboss/netty/handler/timeout/IdleStateHandler;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/timeout/IdleStateHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/timeout/d;->b:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/handler/timeout/d;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-void
.end method


# virtual methods
.method public final run(Lorg/jboss/netty/util/Timeout;)V
    .locals 7

    invoke-interface {p1}, Lorg/jboss/netty/util/Timeout;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/d;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/d;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/timeout/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lorg/jboss/netty/handler/timeout/c;->e:J

    iget-object v5, p0, Lorg/jboss/netty/handler/timeout/d;->b:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-wide v5, v5, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    sub-long/2addr v1, v3

    sub-long v1, v5, v1

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gtz v5, :cond_2

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/d;->b:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v1, v1, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    iget-object v2, p0, Lorg/jboss/netty/handler/timeout/d;->b:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-wide v5, v2, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->writerIdleTimeMillis:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p0, v5, v6, v2}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/handler/timeout/c;->d:Lorg/jboss/netty/util/Timeout;

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/timeout/d;->b:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/d;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    sget-object v2, Lorg/jboss/netty/handler/timeout/IdleState;->WRITER_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->channelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleState;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/jboss/netty/handler/timeout/d;->a:Lorg/jboss/netty/channel/ChannelHandlerContext;

    invoke-static {v1, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/jboss/netty/handler/timeout/d;->b:Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v3, v3, Lorg/jboss/netty/handler/timeout/IdleStateHandler;->timer:Lorg/jboss/netty/util/Timer;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p0, v1, v2, v4}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/handler/timeout/c;->d:Lorg/jboss/netty/util/Timeout;

    goto :goto_0
.end method
