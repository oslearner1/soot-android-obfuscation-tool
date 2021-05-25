.class final Lorg/jboss/netty/util/internal/at;
.super Ljava/util/AbstractCollection;


# instance fields
.field private synthetic a:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/internal/at;->a:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/at;->a:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/at;->a:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0, p1}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/at;->a:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lorg/jboss/netty/util/internal/as;

    iget-object v1, p0, Lorg/jboss/netty/util/internal/at;->a:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-direct {v0, v1}, Lorg/jboss/netty/util/internal/as;-><init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/util/internal/at;->a:Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;->size()I

    move-result v0

    return v0
.end method
