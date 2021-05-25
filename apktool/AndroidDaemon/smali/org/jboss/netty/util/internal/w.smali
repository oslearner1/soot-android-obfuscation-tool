.class final Lorg/jboss/netty/util/internal/w;
.super Ljava/util/AbstractCollection;


# instance fields
.field private synthetic a:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/internal/w;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/w;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/w;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/w;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lorg/jboss/netty/util/internal/v;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/w;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/v;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/w;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->size()I

    move-result v0

    return v0
.end method
