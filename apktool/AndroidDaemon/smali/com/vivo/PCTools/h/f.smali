.class public final Lcom/vivo/PCTools/h/f;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/vivo/PCTools/h/a;

.field private c:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/h/f;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p1, p0, Lcom/vivo/PCTools/h/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/h/a;->Cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->channelClosed(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    return-void
.end method

.method public final channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->channelConnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    return-void
.end method

.method public final channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/h/a;->Cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->channelDisconnected(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelStateEvent;)V

    return-void
.end method

.method public final exceptionCaught(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ExceptionEvent;)V
    .locals 2

    const-string v0, "BrNettyHandler"

    invoke-interface {p2}, Lorg/jboss/netty/channel/ExceptionEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/h/a;->Cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    :cond_0
    return-void
.end method

.method public final messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 5

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vivo/PCTools/q/a/a;

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/q/a/a;

    iget-object v1, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/PCTools/h/a;

    iget-object v2, p0, Lcom/vivo/PCTools/h/f;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/PCTools/h/f;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/vivo/PCTools/h/a;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    sget-byte v2, Lcom/vivo/PCTools/h/a;->g:B

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/h/a;->Cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    sget-byte v2, Lcom/vivo/PCTools/h/a;->i:B

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/vivo/PCTools/h/f;->b:Lcom/vivo/PCTools/h/a;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/h/a;->confirmPasswd(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/vivo/PCTools/h/f;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method
