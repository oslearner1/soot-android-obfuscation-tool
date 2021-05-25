.class final Lorg/jboss/netty/channel/local/e;
.super Lorg/jboss/netty/channel/AbstractChannelSink;


# static fields
.field private static final a:Lorg/jboss/netty/logging/InternalLogger;

.field private static synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/local/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/local/e;->b:Z

    const-class v0, Lorg/jboss/netty/channel/local/e;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/channel/local/e;->a:Lorg/jboss/netty/logging/InternalLogger;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/channel/AbstractChannelSink;-><init>()V

    return-void
.end method

.method private static a(Lorg/jboss/netty/channel/local/a;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V
    .locals 3

    :try_start_0
    invoke-static {p2, p0}, Lorg/jboss/netty/channel/local/d;->a(Lorg/jboss/netty/channel/local/LocalAddress;Lorg/jboss/netty/channel/Channel;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "address already in use: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {p2}, Lorg/jboss/netty/channel/local/d;->b(Lorg/jboss/netty/channel/local/LocalAddress;)Z

    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {p0, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/local/a;->a()V

    iput-object p2, p0, Lorg/jboss/netty/channel/local/a;->d:Lorg/jboss/netty/channel/local/LocalAddress;

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    invoke-static {p0, p2}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final eventSunk(Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 6

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_5

    check-cast p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v5

    check-cast v5, Lorg/jboss/netty/channel/local/a;

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v1

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lorg/jboss/netty/channel/local/f;->a:[I

    invoke-virtual {v1}, Lorg/jboss/netty/channel/ChannelState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5, v2}, Lorg/jboss/netty/channel/local/a;->a(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_1

    check-cast v0, Lorg/jboss/netty/channel/local/LocalAddress;

    invoke-static {v5, v2, v0}, Lorg/jboss/netty/channel/local/e;->a(Lorg/jboss/netty/channel/local/a;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v2}, Lorg/jboss/netty/channel/local/a;->a(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto :goto_0

    :pswitch_2
    if-eqz v0, :cond_4

    check-cast v0, Lorg/jboss/netty/channel/local/LocalAddress;

    invoke-static {v0}, Lorg/jboss/netty/channel/local/d;->a(Lorg/jboss/netty/channel/local/LocalAddress;)Lorg/jboss/netty/channel/Channel;

    move-result-object v1

    instance-of v0, v1, Lorg/jboss/netty/channel/local/c;

    if-nez v0, :cond_2

    new-instance v0, Ljava/net/ConnectException;

    const-string v1, "connection refused"

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_2
    check-cast v1, Lorg/jboss/netty/channel/local/c;

    :try_start_0
    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/c;->getConfig()Lorg/jboss/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelConfig;->getPipelineFactory()Lorg/jboss/netty/channel/ChannelPipelineFactory;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelPipelineFactory;->getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    new-instance v0, Lorg/jboss/netty/channel/local/a;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/c;->getFactory()Lorg/jboss/netty/channel/ChannelFactory;

    move-result-object v2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lorg/jboss/netty/channel/local/a;-><init>(Lorg/jboss/netty/channel/local/LocalServerChannel;Lorg/jboss/netty/channel/ChannelFactory;Lorg/jboss/netty/channel/ChannelPipeline;Lorg/jboss/netty/channel/ChannelSink;Lorg/jboss/netty/channel/local/a;)V

    iput-object v0, v5, Lorg/jboss/netty/channel/local/a;->c:Lorg/jboss/netty/channel/local/a;

    invoke-virtual {v5}, Lorg/jboss/netty/channel/local/a;->isBound()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v5}, Lorg/jboss/netty/channel/Channels;->succeededFuture(Lorg/jboss/netty/channel/Channel;)Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v2

    new-instance v3, Lorg/jboss/netty/channel/local/LocalAddress;

    const-string v4, "ephemeral"

    invoke-direct {v3, v4}, Lorg/jboss/netty/channel/local/LocalAddress;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v2, v3}, Lorg/jboss/netty/channel/local/e;->a(Lorg/jboss/netty/channel/local/a;Lorg/jboss/netty/channel/ChannelFuture;Lorg/jboss/netty/channel/local/LocalAddress;)V

    :cond_3
    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/c;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    iput-object v2, v5, Lorg/jboss/netty/channel/local/a;->e:Lorg/jboss/netty/channel/local/LocalAddress;

    invoke-virtual {v5}, Lorg/jboss/netty/channel/local/a;->b()V

    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/c;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v2

    invoke-static {v5, v2}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    invoke-virtual {v1}, Lorg/jboss/netty/channel/local/c;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/channel/local/a;->d:Lorg/jboss/netty/channel/local/LocalAddress;

    :try_start_1
    invoke-virtual {v0}, Lorg/jboss/netty/channel/local/a;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v5}, Lorg/jboss/netty/channel/local/a;->getRemoteAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelBound(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    invoke-virtual {v5}, Lorg/jboss/netty/channel/local/a;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v1

    iput-object v1, v0, Lorg/jboss/netty/channel/local/a;->e:Lorg/jboss/netty/channel/local/LocalAddress;

    invoke-virtual {v0}, Lorg/jboss/netty/channel/local/a;->b()V

    invoke-virtual {v5}, Lorg/jboss/netty/channel/local/a;->getLocalAddress()Lorg/jboss/netty/channel/local/LocalAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jboss/netty/channel/Channels;->fireChannelConnected(Lorg/jboss/netty/channel/Channel;Ljava/net/SocketAddress;)V

    invoke-virtual {v5}, Lorg/jboss/netty/channel/local/a;->c()V

    invoke-virtual {v0}, Lorg/jboss/netty/channel/local/a;->c()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/ChannelFuture;->setFailure(Ljava/lang/Throwable;)Z

    invoke-static {v5, v0}, Lorg/jboss/netty/channel/Channels;->fireExceptionCaught(Lorg/jboss/netty/channel/Channel;Ljava/lang/Throwable;)V

    sget-object v1, Lorg/jboss/netty/channel/local/e;->a:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/jboss/netty/channel/local/e;->a:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Failed to initialize an accepted socket."

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    invoke-virtual {v5, v2}, Lorg/jboss/netty/channel/local/a;->a(Lorg/jboss/netty/channel/ChannelFuture;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-interface {v2}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    goto/16 :goto_0

    :cond_5
    instance-of v0, p2, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/jboss/netty/channel/MessageEvent;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/local/a;

    iget-object v1, v0, Lorg/jboss/netty/channel/local/a;->b:Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    sget-boolean v2, Lorg/jboss/netty/channel/local/e;->b:Z

    if-nez v2, :cond_6

    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    invoke-virtual {v0}, Lorg/jboss/netty/channel/local/a;->c()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
