.class final Lorg/jboss/netty/util/internal/c;
.super Lorg/jboss/netty/util/internal/f;

# interfaces
.implements Lorg/jboss/netty/util/internal/ReusableIterator;


# instance fields
.field private synthetic a:Lorg/jboss/netty/util/internal/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/util/internal/c;->a:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/f;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/c;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .locals 4

    invoke-super {p0}, Lorg/jboss/netty/util/internal/f;->a()Lorg/jboss/netty/util/internal/e;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/util/internal/m;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/c;->a:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    iget-object v3, v0, Lorg/jboss/netty/util/internal/e;->a:Ljava/lang/Object;

    iget-object v0, v0, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v0}, Lorg/jboss/netty/util/internal/m;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
