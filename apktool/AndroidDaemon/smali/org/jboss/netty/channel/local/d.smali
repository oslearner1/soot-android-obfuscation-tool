.class final Lorg/jboss/netty/channel/local/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/local/d;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method static a(Lorg/jboss/netty/channel/local/LocalAddress;)Lorg/jboss/netty/channel/Channel;
    .locals 1

    sget-object v0, Lorg/jboss/netty/channel/local/d;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    return-object v0
.end method

.method static a(Lorg/jboss/netty/channel/local/LocalAddress;Lorg/jboss/netty/channel/Channel;)Z
    .locals 1

    sget-object v0, Lorg/jboss/netty/channel/local/d;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Lorg/jboss/netty/channel/local/LocalAddress;)Z
    .locals 1

    sget-object v0, Lorg/jboss/netty/channel/local/d;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
