.class public abstract Lorg/jboss/netty/handler/execution/ChannelEventRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/jboss/netty/util/EstimatableObjectWrapper;


# static fields
.field protected static final PARENT:Ljava/lang/ThreadLocal;


# instance fields
.field protected final ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

.field protected final e:Lorg/jboss/netty/channel/ChannelEvent;

.field estimatedSize:I

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->PARENT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/ChannelHandlerContext;Lorg/jboss/netty/channel/ChannelEvent;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    iput-object p2, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->e:Lorg/jboss/netty/channel/ChannelEvent;

    iput-object p3, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method protected abstract doRun()V
.end method

.method public getContext()Lorg/jboss/netty/channel/ChannelHandlerContext;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->ctx:Lorg/jboss/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method public getEvent()Lorg/jboss/netty/channel/ChannelEvent;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->e:Lorg/jboss/netty/channel/ChannelEvent;

    return-object v0
.end method

.method public final run()V
    .locals 2

    :try_start_0
    sget-object v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->PARENT:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->doRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->PARENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->PARENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    throw v0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/execution/ChannelEventRunnable;->e:Lorg/jboss/netty/channel/ChannelEvent;

    return-object v0
.end method
