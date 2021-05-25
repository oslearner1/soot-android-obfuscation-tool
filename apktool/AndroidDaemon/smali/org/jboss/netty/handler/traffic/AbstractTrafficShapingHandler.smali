.class public abstract Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;
.super Lorg/jboss/netty/channel/SimpleChannelHandler;

# interfaces
.implements Lorg/jboss/netty/util/ExternalResourceReleasable;


# static fields
.field public static final DEFAULT_CHECK_INTERVAL:J = 0x3e8L

.field private static final MINIMAL_WAIT:J = 0xaL

.field static logger:Lorg/jboss/netty/logging/InternalLogger;


# instance fields
.field protected checkInterval:J

.field private objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

.field private readLimit:J

.field final release:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile timeout:Lorg/jboss/netty/util/Timeout;

.field protected timer:Lorg/jboss/netty/util/Timer;

.field protected trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

.field private writeLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->logger:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;)V
    .locals 9

    const-wide/16 v7, 0x3e8

    const-wide/16 v3, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    iput-wide v7, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, v3

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;J)V
    .locals 9

    const-wide/16 v3, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, v3

    move-wide v7, p3

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJ)V
    .locals 9

    const-wide/16 v7, 0x3e8

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    iput-wide v7, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V
    .locals 2

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct/range {p0 .. p8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;)V
    .locals 9

    const-wide/16 v7, 0x3e8

    const-wide/16 v3, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    iput-wide v7, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v1}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-wide v5, v3

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;J)V
    .locals 9

    const-wide/16 v3, 0x0

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v1}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-wide v5, v3

    move-wide v7, p2

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JJ)V
    .locals 9

    const-wide/16 v7, 0x3e8

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    iput-wide v7, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v1}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/util/Timer;JJJ)V
    .locals 9

    invoke-direct {p0}, Lorg/jboss/netty/channel/SimpleChannelHandler;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;

    invoke-direct {v1}, Lorg/jboss/netty/util/DefaultObjectSizeEstimator;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V

    return-void
.end method

.method private static getTimeToWait(JJJJ)J
    .locals 7

    const-wide/16 v5, 0xa

    const-wide/16 v0, 0x0

    sub-long v2, p6, p4

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    div-long/2addr v0, p0

    sub-long/2addr v0, v2

    div-long/2addr v0, v5

    mul-long/2addr v0, v5

    goto :goto_0
.end method

.method private init(Lorg/jboss/netty/util/ObjectSizeEstimator;Lorg/jboss/netty/util/Timer;JJJ)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    iput-object p2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    iput-wide p3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    iput-wide p5, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    iput-wide p7, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    return-void
.end method


# virtual methods
.method public configure(J)V
    .locals 3

    iput-wide p1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    iget-wide v1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->configure(J)V

    :cond_0
    return-void
.end method

.method public configure(JJ)V
    .locals 5

    iput-wide p1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    iput-wide p3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->resetAccounting(J)V

    :cond_0
    return-void
.end method

.method public configure(JJJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->configure(JJ)V

    invoke-virtual {p0, p5, p6}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->configure(J)V

    return-void
.end method

.method protected doAccounting(Lorg/jboss/netty/handler/traffic/TrafficCounter;)V
    .locals 0

    return-void
.end method

.method public getTrafficCounter()Lorg/jboss/netty/handler/traffic/TrafficCounter;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    return-object v0
.end method

.method public handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V
    .locals 3

    instance-of v0, p2, Lorg/jboss/netty/channel/ChannelStateEvent;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/jboss/netty/channel/ChannelStateEvent;

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getState()Lorg/jboss/netty/channel/ChannelState;

    move-result-object v1

    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelStateEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p2}, Lorg/jboss/netty/channel/ChannelEvent;->getFuture()Lorg/jboss/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/channel/ChannelFuture;->setSuccess()Z

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->handleDownstream(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;)V

    goto :goto_1
.end method

.method public messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 8

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/util/ObjectSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2, p1, v0, v1}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->bytesRecvFlowControl(Lorg/jboss/netty/channel/ChannelHandlerContext;J)V

    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->getCurrentReadBytes()J

    move-result-wide v2

    iget-object v4, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v4}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->getLastTime()J

    move-result-wide v4

    invoke-static/range {v0 .. v7}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->getTimeToWait(JJJJ)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getChannel()Lorg/jboss/netty/channel/Channel;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/jboss/netty/channel/Channel;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    if-nez v3, :cond_2

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-interface {p1}, Lorg/jboss/netty/channel/ChannelHandlerContext;->getAttachment()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v3}, Lorg/jboss/netty/channel/ChannelHandlerContext;->setAttachment(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/jboss/netty/channel/Channel;->setReadable(Z)Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v2, Lorg/jboss/netty/handler/traffic/a;

    invoke-direct {v2, p0, p1}, Lorg/jboss/netty/handler/traffic/a;-><init>(Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;Lorg/jboss/netty/channel/ChannelHandlerContext;)V

    iget-object v3, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timer:Lorg/jboss/netty/util/Timer;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v2, v0, v1, v4}, Lorg/jboss/netty/util/Timer;->newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timeout:Lorg/jboss/netty/util/Timeout;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    goto :goto_0

    :cond_4
    :try_start_4
    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    goto :goto_0

    :cond_5
    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    throw v0

    :cond_6
    :try_start_6
    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->messageReceived(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    goto :goto_0

    :cond_7
    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public releaseExternalResources()V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->stop()V

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->timeout:Lorg/jboss/netty/util/Timeout;

    invoke-interface {v0}, Lorg/jboss/netty/util/Timeout;->cancel()V

    :cond_1
    return-void
.end method

.method setTrafficCounter(Lorg/jboss/netty/handler/traffic/TrafficCounter;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrafficShaping with Write Limit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Read Limit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->readLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and Counter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method

.method public writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V
    .locals 8

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->objectSizeEstimator:Lorg/jboss/netty/util/ObjectSizeEstimator;

    invoke-interface {p2}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/util/ObjectSizeEstimator;->estimateSize(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2, v0, v1}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->bytesWriteFlowControl(J)V

    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->writeLimit:J

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->getCurrentWrittenBytes()J

    move-result-wide v2

    iget-object v4, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lorg/jboss/netty/handler/traffic/TrafficCounter;

    invoke-virtual {v4}, Lorg/jboss/netty/handler/traffic/TrafficCounter;->getLastTime()J

    move-result-wide v4

    invoke-static/range {v0 .. v7}, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->getTimeToWait(JJJJ)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lorg/jboss/netty/handler/traffic/AbstractTrafficShapingHandler;->release:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/SimpleChannelHandler;->writeRequested(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/MessageEvent;)V

    throw v0
.end method
