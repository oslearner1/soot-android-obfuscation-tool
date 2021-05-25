.class final Lorg/jboss/netty/util/internal/y;
.super Lorg/jboss/netty/util/internal/ab;

# interfaces
.implements Lorg/jboss/netty/util/internal/ReusableIterator;


# instance fields
.field private synthetic a:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/internal/y;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ab;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/y;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .locals 4

    invoke-super {p0}, Lorg/jboss/netty/util/internal/ab;->a()Lorg/jboss/netty/util/internal/aa;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/util/internal/aj;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/y;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/aa;->a()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Lorg/jboss/netty/util/internal/aa;->c:Ljava/lang/Object;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/jboss/netty/util/internal/aj;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
