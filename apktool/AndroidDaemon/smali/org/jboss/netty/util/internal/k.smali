.class final Lorg/jboss/netty/util/internal/k;
.super Lorg/jboss/netty/util/internal/f;

# interfaces
.implements Ljava/util/Enumeration;
.implements Lorg/jboss/netty/util/internal/ReusableIterator;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/f;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/util/internal/f;->a()Lorg/jboss/netty/util/internal/e;

    move-result-object v0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/util/internal/f;->a()Lorg/jboss/netty/util/internal/e;

    move-result-object v0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/e;->c:Ljava/lang/Object;

    return-object v0
.end method
