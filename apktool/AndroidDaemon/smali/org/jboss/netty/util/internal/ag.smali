.class final Lorg/jboss/netty/util/internal/ag;
.super Lorg/jboss/netty/util/internal/ab;

# interfaces
.implements Ljava/util/Enumeration;
.implements Lorg/jboss/netty/util/internal/ReusableIterator;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ab;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityWeakKeyHashMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/util/internal/ab;->a()Lorg/jboss/netty/util/internal/aa;

    move-result-object v0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/aa;->c:Ljava/lang/Object;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/util/internal/ab;->a()Lorg/jboss/netty/util/internal/aa;

    move-result-object v0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/aa;->c:Ljava/lang/Object;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
