.class public final Lcom/vivo/PCTools/Pcserver/f;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lorg/jboss/netty/util/HashedWheelTimer;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/jboss/netty/util/HashedWheelTimer;)V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    const-string v0, "ServerHandler"

    iput-object v0, p0, Lcom/vivo/PCTools/Pcserver/f;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/PCTools/Pcserver/f;->b:Lorg/jboss/netty/util/HashedWheelTimer;

    iput-object p1, p0, Lcom/vivo/PCTools/Pcserver/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 2

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/f;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    return-void
.end method

.method public final messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vivo/PCTools/q/a/a;

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-ne v4, v1, :cond_0

    invoke-static {}, Lcom/vivo/PCTools/BaseApplication;->getInstance()Lcom/vivo/PCTools/BaseApplication;

    move-result-object v4

    aget-byte v3, v3, v2

    if-nez v3, :cond_3

    :goto_0
    iput-boolean v1, v4, Lcom/vivo/PCTools/BaseApplication;->f:Z

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    const-string v2, "timeout"

    new-instance v3, Lorg/jboss/netty/handler/timeout/IdleStateHandler;

    iget-object v4, p0, Lcom/vivo/PCTools/Pcserver/f;->b:Lorg/jboss/netty/util/HashedWheelTimer;

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/jboss/netty/handler/timeout/IdleStateHandler;-><init>(Lorg/jboss/netty/util/Timer;III)V

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    const-string v2, "hearbeat"

    new-instance v3, Lcom/vivo/PCTools/f/c;

    iget-object v4, p0, Lcom/vivo/PCTools/Pcserver/f;->b:Lorg/jboss/netty/util/HashedWheelTimer;

    iget-object v5, p0, Lcom/vivo/PCTools/Pcserver/f;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/vivo/PCTools/f/c;-><init>(Lorg/jboss/netty/util/HashedWheelTimer;Landroid/content/Context;)V

    invoke-interface {v1, v2, v3}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Lorg/jboss/netty/channel/ChannelHandler;)V

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/f;->c:Ljava/lang/String;

    const-string v2, "add hearbeat success"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/Pcserver/f;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/Pcserver/b;->HandleMessage(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/vivo/PCTools/Pcserver/f;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/f;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/view/ae;->stopServerService(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    const-string v1, "br_app"

    new-instance v2, Lcom/vivo/PCTools/h/f;

    iget-object v3, p0, Lcom/vivo/PCTools/Pcserver/f;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/h/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/ChannelPipeline;->remove(Lorg/jboss/netty/channel/ChannelHandler;)V

    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/ChannelHandlerContext;->sendUpstream(Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_2
.end method
