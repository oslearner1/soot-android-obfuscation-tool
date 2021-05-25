.class final Lorg/jboss/netty/util/internal/as;
.super Lorg/jboss/netty/util/internal/an;

# interfaces
.implements Ljava/util/Enumeration;
.implements Lorg/jboss/netty/util/internal/ReusableIterator;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/an;-><init>(Lorg/jboss/netty/util/internal/ConcurrentWeakKeyHashMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/util/internal/an;->a()Lorg/jboss/netty/util/internal/am;

    move-result-object v0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/am;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/jboss/netty/util/internal/an;->a()Lorg/jboss/netty/util/internal/am;

    move-result-object v0

    iget-object v0, v0, Lorg/jboss/netty/util/internal/am;->c:Ljava/lang/Object;

    invoke-static {v0}, Lorg/jboss/netty/util/internal/am;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
