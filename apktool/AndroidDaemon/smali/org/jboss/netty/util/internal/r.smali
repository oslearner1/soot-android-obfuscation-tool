.class final Lorg/jboss/netty/util/internal/r;
.super Lorg/jboss/netty/util/internal/q;

# interfaces
.implements Ljava/util/Enumeration;
.implements Lorg/jboss/netty/util/internal/ReusableIterator;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/q;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/util/internal/q;->a()Lorg/jboss/netty/util/internal/p;

    move-result-object v0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/p;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/util/internal/q;->a()Lorg/jboss/netty/util/internal/p;

    move-result-object v0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/p;->a:Ljava/lang/Object;

    return-object v0
.end method
