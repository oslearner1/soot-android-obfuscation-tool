.class public final Lorg/jboss/netty/util/internal/QueueFactory;
.super Ljava/lang/Object;


# static fields
.field private static final LOGGER:Lorg/jboss/netty/logging/InternalLogger;

.field private static final useUnsafe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->hasUnsafe()Z

    move-result v0

    sput-boolean v0, Lorg/jboss/netty/util/internal/QueueFactory;->useUnsafe:Z

    const-class v0, Lorg/jboss/netty/util/internal/QueueFactory;

    invoke-static {v0}, Lorg/jboss/netty/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lorg/jboss/netty/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/QueueFactory;->LOGGER:Lorg/jboss/netty/logging/InternalLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createQueue(Ljava/lang/Class;)Ljava/util/concurrent/BlockingQueue;
    .locals 3

    invoke-static {}, Lorg/jboss/netty/util/internal/DetectionUtil;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/LinkedTransferQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-boolean v0, Lorg/jboss/netty/util/internal/QueueFactory;->useUnsafe:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/jboss/netty/util/internal/LinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LinkedTransferQueue;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/jboss/netty/util/internal/QueueFactory;->LOGGER:Lorg/jboss/netty/logging/InternalLogger;

    invoke-interface {v1}, Lorg/jboss/netty/logging/InternalLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/jboss/netty/util/internal/QueueFactory;->LOGGER:Lorg/jboss/netty/logging/InternalLogger;

    const-string v2, "Unable to instance LinkedTransferQueue, fallback to LegacyLinkedTransferQueue"

    invoke-interface {v1, v2, v0}, Lorg/jboss/netty/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    new-instance v0, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/LegacyLinkedTransferQueue;-><init>()V

    goto :goto_0
.end method
