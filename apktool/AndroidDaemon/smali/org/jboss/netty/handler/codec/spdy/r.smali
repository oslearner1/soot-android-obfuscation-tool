.class final Lorg/jboss/netty/handler/codec/spdy/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:B

.field private volatile b:Z

.field private volatile c:Z

.field private d:Z

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile g:I

.field private final h:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(BZZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-byte p1, p0, Lorg/jboss/netty/handler/codec/spdy/r;->a:B

    iput-boolean p2, p0, Lorg/jboss/netty/handler/codec/spdy/r;->b:Z

    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/spdy/r;->c:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method final a()B
    .locals 1

    iget-byte v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->a:B

    return v0
.end method

.method final a(I)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method

.method final a(Lorg/jboss/netty/channel/MessageEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final b(I)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    return v0
.end method

.method final b()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->b:Z

    return v0
.end method

.method final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->b:Z

    return-void
.end method

.method final c(I)V
    .locals 0

    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/r;->g:I

    return-void
.end method

.method final d()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->c:Z

    return v0
.end method

.method final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->c:Z

    return-void
.end method

.method final f()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->d:Z

    return v0
.end method

.method final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->d:Z

    return-void
.end method

.method final h()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method final i()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->g:I

    return v0
.end method

.method final j()Lorg/jboss/netty/channel/MessageEvent;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method

.method final k()Lorg/jboss/netty/channel/MessageEvent;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/r;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/MessageEvent;

    return-object v0
.end method
