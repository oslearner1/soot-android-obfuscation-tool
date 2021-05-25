.class final Lorg/jboss/netty/util/internal/n;
.super Lorg/jboss/netty/util/internal/q;

# interfaces
.implements Lorg/jboss/netty/util/internal/ReusableIterator;


# instance fields
.field private synthetic a:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/internal/n;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/q;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/n;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .locals 4

    invoke-super {p0}, Lorg/jboss/netty/util/internal/q;->a()Lorg/jboss/netty/util/internal/p;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/util/internal/x;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/n;->a:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    iget-object v3, v0, Lorg/jboss/netty/util/internal/p;->a:Ljava/lang/Object;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/p;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v0}, Lorg/jboss/netty/util/internal/x;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
