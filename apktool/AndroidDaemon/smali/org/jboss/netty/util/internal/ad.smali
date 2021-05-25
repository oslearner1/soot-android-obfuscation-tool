.class final Lorg/jboss/netty/util/internal/ad;
.super Ljava/util/AbstractSet;


# instance fields
.field private synthetic a:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ad;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ad;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ad;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ad;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lorg/jboss/netty/util/internal/ac;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/ad;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/ac;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ad;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/ad;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;->size()I

    move-result v0

    return v0
.end method
