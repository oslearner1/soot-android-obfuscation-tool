.class final Lorg/jboss/netty/handler/codec/serialization/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/handler/codec/serialization/ClassResolver;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/codec/serialization/ClassResolver;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/serialization/a;->b:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/serialization/a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final resolve(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/a;->b:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    invoke-interface {v0, p1}, Lorg/jboss/netty/handler/codec/serialization/ClassResolver;->resolve(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/serialization/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
