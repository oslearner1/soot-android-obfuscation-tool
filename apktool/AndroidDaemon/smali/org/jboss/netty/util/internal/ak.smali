.class final Lorg/jboss/netty/util/internal/ak;
.super Lorg/jboss/netty/util/internal/an;

# interfaces
.implements Lorg/jboss/netty/util/internal/ReusableIterator;


# instance fields
.field private synthetic a:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/internal/ak;->a:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/an;-><init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ak;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .locals 4

    invoke-super {p0}, Lorg/jboss/netty/util/internal/an;->a()Lorg/jboss/netty/util/internal/am;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/util/internal/av;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/ak;->a:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/am;->a()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, v0, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/am;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/jboss/netty/util/internal/av;-><init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
