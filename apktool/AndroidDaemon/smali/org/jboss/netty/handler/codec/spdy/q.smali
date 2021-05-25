.class final Lorg/jboss/netty/handler/codec/spdy/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lorg/jboss/netty/handler/codec/spdy/p;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/spdy/p;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/spdy/q;->a:Lorg/jboss/netty/handler/codec/spdy/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/q;->a:Lorg/jboss/netty/handler/codec/spdy/p;

    invoke-static {v0}, Lorg/jboss/netty/handler/codec/spdy/p;->a(Lorg/jboss/netty/handler/codec/spdy/p;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/r;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/spdy/q;->a:Lorg/jboss/netty/handler/codec/spdy/p;

    invoke-static {v1}, Lorg/jboss/netty/handler/codec/spdy/p;->a(Lorg/jboss/netty/handler/codec/spdy/p;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jboss/netty/handler/codec/spdy/r;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/spdy/r;->a()B

    move-result v0

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/spdy/r;->a()B

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/codec/spdy/q;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
