.class final Lorg/jboss/netty/channel/socket/nio/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Queue;


# static fields
.field private static synthetic c:Z


# instance fields
.field private final a:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

.field private final b:Ljava/util/Queue;

.field private synthetic d:Lorg/jboss/netty/channel/socket/nio/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jboss/netty/channel/socket/nio/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/channel/socket/nio/b;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/socket/nio/a;)V
    .locals 1

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/b;->d:Lorg/jboss/netty/channel/socket/nio/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->a:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    return-void
.end method

.method private static a(Lorg/jboss/netty/channel/MessageEvent;)I
    .locals 2

    invoke-interface {p0}, Lorg/jboss/netty/channel/MessageEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lorg/jboss/netty/channel/MessageEvent;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/b;->add(Lorg/jboss/netty/channel/MessageEvent;)Z

    move-result v0

    return v0
.end method

.method public final add(Lorg/jboss/netty/channel/MessageEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic element()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->element()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public final element()Lorg/jboss/netty/channel/MessageEvent;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lorg/jboss/netty/channel/MessageEvent;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/b;->offer(Lorg/jboss/netty/channel/MessageEvent;)Z

    move-result v0

    return v0
.end method

.method public final offer(Lorg/jboss/netty/channel/MessageEvent;)Z
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lorg/jboss/netty/channel/socket/nio/b;->c:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/b;->a(Lorg/jboss/netty/channel/MessageEvent;)I

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b;->d:Lorg/jboss/netty/channel/socket/nio/a;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/a;->writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/b;->d:Lorg/jboss/netty/channel/socket/nio/a;

    invoke-virtual {v2}, Lorg/jboss/netty/channel/socket/nio/a;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v2

    if-lt v1, v2, :cond_1

    sub-int v0, v1, v0

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->d:Lorg/jboss/netty/channel/socket/nio/a;

    iget-object v0, v0, Lorg/jboss/netty/channel/socket/nio/a;->highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->a:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->a:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->d:Lorg/jboss/netty/channel/socket/nio/a;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->a:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->peek()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public final peek()Lorg/jboss/netty/channel/MessageEvent;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method

.method public final bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->poll()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public final poll()Lorg/jboss/netty/channel/MessageEvent;
    .locals 4

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/jboss/netty/channel/socket/nio/b;->a(Lorg/jboss/netty/channel/MessageEvent;)I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/b;->d:Lorg/jboss/netty/channel/socket/nio/a;

    iget-object v2, v2, Lorg/jboss/netty/channel/socket/nio/a;->writeBufferSize:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/b;->d:Lorg/jboss/netty/channel/socket/nio/a;

    invoke-virtual {v3}, Lorg/jboss/netty/channel/socket/nio/a;->getConfig()Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/jboss/netty/channel/socket/nio/NioChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v3

    if-eqz v2, :cond_0

    if-ge v2, v3, :cond_1

    :cond_0
    add-int/2addr v1, v2

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b;->d:Lorg/jboss/netty/channel/socket/nio/a;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/a;->highWaterMarkCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b;->d:Lorg/jboss/netty/channel/socket/nio/a;

    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/a;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b;->a:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    invoke-virtual {v1}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b;->a:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b;->d:Lorg/jboss/netty/channel/socket/nio/a;

    invoke-static {v1}, Lorg/jboss/netty/channel/Channels;->fireChannelInterestChanged(Lorg/jboss/netty/channel/Channel;)V

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b;->a:Lorg/jboss/netty/util/internal/ThreadLocalBoolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lorg/jboss/netty/util/internal/ThreadLocalBoolean;->set(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic remove()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/b;->remove()Lorg/jboss/netty/channel/MessageEvent;

    move-result-object v0

    return-object v0
.end method

.method public final remove()Lorg/jboss/netty/channel/MessageEvent;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
