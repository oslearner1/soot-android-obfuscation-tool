.class public final Lcom/vivo/PCTools/f/c;
.super Lorg/jboss/netty/handler/timeout/IdleStateAwareChannelHandler;


# static fields
.field private static a:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/vivo/PCTools/BaseApplication;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/vivo/PCTools/f/c;->a:I

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/HashedWheelTimer;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/handler/timeout/IdleStateAwareChannelHandler;-><init>()V

    const-string v0, "Heartbeat"

    iput-object v0, p0, Lcom/vivo/PCTools/f/c;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/PCTools/f/c;->b:Landroid/content/Context;

    sget v0, Lcom/vivo/PCTools/f/c;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vivo/PCTools/f/c;->a:I

    return-void
.end method


# virtual methods
.method public final channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/f/c;->d:Ljava/lang/String;

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/vivo/PCTools/f/c;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vivo/PCTools/f/c;->a:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/f/c;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/view/ae;->stopServerService(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/f/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    iput-object v0, p0, Lcom/vivo/PCTools/f/c;->c:Lcom/vivo/PCTools/BaseApplication;

    iget-object v0, p0, Lcom/vivo/PCTools/f/c;->c:Lcom/vivo/PCTools/BaseApplication;

    iget-boolean v0, v0, Lcom/vivo/PCTools/BaseApplication;->e:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.PCTools.RecoveryData"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "RESULT"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/PCTools/f/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    iget-object v0, p0, Lcom/vivo/PCTools/f/c;->c:Lcom/vivo/PCTools/BaseApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/BaseApplication;->setPCHelperConnnected(Z)V

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/timeout/IdleStateAwareChannelHandler;->channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    return-void
.end method

.method public final channelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleStateEvent;)V
    .locals 2

    invoke-interface {p2}, Lorg/jboss/netty/handler/timeout/IdleStateEvent;->getState()Lorg/jboss/netty/handler/timeout/IdleState;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/timeout/IdleState;->WRITER_IDLE:Lorg/jboss/netty/handler/timeout/IdleState;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/timeout/IdleStateAwareChannelHandler;->channelIdle(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/handler/timeout/IdleStateEvent;)V

    :cond_0
    return-void
.end method

.method public final exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/f/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected exception from downstream."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    return-void
.end method

.method public final messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 2

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    invoke-static {}, Lcom/vivo/PCTools/BaseApplication;->getInstance()Lcom/vivo/PCTools/BaseApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/f/c;->c:Lcom/vivo/PCTools/BaseApplication;

    iget-object v0, p0, Lcom/vivo/PCTools/f/c;->c:Lcom/vivo/PCTools/BaseApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/BaseApplication;->setPCHelperConnnected(Z)V

    iget-object v0, p0, Lcom/vivo/PCTools/f/c;->d:Ljava/lang/String;

    const-string v1, "recv Heartbeat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/timeout/IdleStateAwareChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    return-void
.end method
